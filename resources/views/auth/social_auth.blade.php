<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Google Login</title>
</head>

<body>
  <div class="hidethis " style="padding:10px">

    <h2 align='center' class="heading_class">Start Your Quiz</h2>

    <div class="quiz-container" id="quiz">
      <div class="quiz-header">

        <a class="btn google-button" href="{{route('redirect')}}">Login with Google</a>



      </div>



    </div>
  </div>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
  </script>


  <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap');

    * {
      box-sizing: border-box;


    }

    .google-button {
      background-color:#5fcf80;
      color: white;
      height: 70px;
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .google-button:hover {
      background-color: white;
      border: 1px solid #5fcf80;
      color: black;
    }

    .heading_class {
      background-color: #5fcf80;
      border-radius: 8px;
      margin-top: 20px;
      padding: 20px;
      width: 100%;
      color: white;
      font-size: 40px;
      font-weight: 600;
      font-family: "Georgia";
    }

    body {
      background-color: white;
      height: 100%;
      font-family: 'Poppins', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0;
      overflow: hidden;
    }



    .quiz-container {
      margin-top: 10%;
      margin-bottom: 50%;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px 5px rgba(100, 100, 100, 0.1);
      width: 100%;
      height: 100%;
      overflow: hidden;
    }

    .quiz-header {
      padding: 90px;
    }

    h2 {

      text-align: center;
      margin: 0;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    ul li {
      font-size: 1.2rem;
      margin: 1rem 0;
    }

    ul li label {
      cursor: pointer;
    }

    button {
      background-color: #03cae4;
      color: #fff;
      border: none;
      display: block;
      width: 100%;
      cursor: pointer;
      font-size: 1.1rem;
      font-family: inherit;
      padding: 1.3rem;
    }

    button:hover {
      background-color: #04adc4;
    }

    button:focus {
      outline: none;
      background-color: #ccfedb;
    }

    .google-button {
      background-color: #ffffff;
      border: 1px solid #5fcf80;
      color: #5fcf80;
    }

    .google-button:hover {
      background-color: #5fcf80;
      border: 1px solid white;
      color: rgb(255, 255, 255);
    }

    @media screen and (max-width: 800px) {

      .quiz-container {

        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px 2px rgba(100, 100, 100, 0.1);
        width: 90%;
        overflow: hidden;
      }
    }

    @media screen and (max-width: 465px) {

      body {
        width: 100%;
        background-color: #b8c6db;
        background-image: linear-gradient(315deg, #b8c6db 0%, #f5f7f7 100%);
        overflow: hidden;
      }

      .logout_div {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        float: left;
        padding-inline: 10px;
        margin: 0px
      }

      .quiz-container {

        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px 2px rgba(100, 100, 100, 0.1);
        margin: 15px;
        margin-top: 0px;
        height: 90%;
        width: 90%;
        overflow: hidden;
      }

    }
  </style>
</body>

</html>