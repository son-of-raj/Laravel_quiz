<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SocialAuthController extends Controller
{
    public function index()
    {
        return view('auth.social_auth');
    }

    public function redirect()
    {
        return Socialite::driver('google')->redirect();
    }

    public function callback()
    {
        $user = Socialite::driver('google')->stateless()->user();
        $this->createOrUpdateUser($user, 'google');
        $data = DB::table('users')->where('email', $user->email)->pluck('email');

        $data1 = DB::table('topics')->get();

        foreach ($data1 as $row) {
            $topic_id = $row->id;
            $topic_name = $row->topic_name;
        }
            
        return view('topic', compact('data1'));
    }

    public function createOrUpdateUser($data, $provider)
    {
        $user = User::where('email', $data->email)->first();

        if ($user) {
            $user->update([
                'provider' => $provider,
                'provider_id' => $data->id,
                'avatar' => $data->avatar,

            ]);
        } else {
            $user = User::create([
                'name' => $data->name,
                'email' => $data->email,
                'provider' => $provider,
                'provider_id' => $data->id,
                'avatar' => $data->avatar,

            ]);
        }

        Auth::login($user);
    }

    public function quesdata($quiz_id)
    {
        $data1 = array();

        $data1 = DB::table('quiz_options')->where('q_id', $quiz_id)->inRandomOrder()->get();

        return $data1;
    }

    public function getdata(Request $request)
    {


        $answer = $request->answer;
        $get_ques_id = DB::table('quiz_options')->where('id', $answer)->value('q_id');

        $get_topic_id=  DB::table('questions')->where('id',$get_ques_id)->value('topic_id');
        $disable = DB::table('questions')
            ->where('id', $get_ques_id)
            ->update([
                'is_enabled' => "0"
            ]);
        $check = array();
        $check = DB::table('answers')->where('answer_id', $answer)->pluck('id');

        if (count($check) != 1) {
            // $result = 'Not correct ';
            $user_id = auth()->user()->id;
            $store_result =   DB::table('result')->insert([
                'stud_id' => $user_id,
                'ques_id' => $get_ques_id,
                'status' => 0,
            ]);
        } else {
            // $result = 'Question '.$check.' correct ';
            $user_id = auth()->user()->id;
            $store_result =   DB::table('result')->insert([
                'stud_id' => $user_id,
                'ques_id' => $get_ques_id,
                'status' => 1,
            ]);
        }



        // dd($result);
        // die();
        return redirect("dashboard/$get_topic_id");
    }


   

    public function dashboard($id,Request $request)
    {
       
        $user_id = auth()->user()->id;
        $result =  DB::table('result')->where('stud_id', $user_id)->pluck('id');

        $result = count($result);
        if ($result <= 3) {

            $quiz1 = DB::table('questions')->where('is_enabled', '1')->where('topic_id', $id)->where('ques_level', 'easy')->inRandomOrder()->limit(1)->get();
        } elseif ($result <= 6) {

            $quiz1 = DB::table('questions')->where('is_enabled', '1')->where('topic_id', $id)->where('ques_level', 'medium')->inRandomOrder()->limit(1)->get();

        } elseif ($result <= 9) {

            $quiz1 = DB::table('questions')->where('is_enabled', '1')->where('topic_id', $id)->where('ques_level', 'hard')->inRandomOrder()->limit(1)->get();
        } else {
            DB::table('questions')->where('is_enabled', '0')->update([
                'is_enabled' => "1"
            ]);
            $user_id = auth()->user()->id;
            $result =  DB::table('result')->where('stud_id', $user_id)->where('status', '1')->pluck('id');
            $result = count($result);

            $data['result'] = 'Your Score is ' . $result.' out of 10';

            //    DB::table('result')->truncate();
            return view('/next', compact('data'));
        }

        foreach ($quiz1 as $quiz) {
            $question = $quiz->question;
            $quiz_id = $quiz->id;
        }
        $data1 = $this->quesdata($quiz_id);
        return view("dashboard", compact('quiz1', 'data1'));
    }
}
