<!DOCTYPE html>
<html>
<title>Topics</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<body>

    <div class="container">
        <h2    align= 'center' class="heading_class">TOPICS</h2>

        <div class="row">
            @foreach ($data1 as $row)
            <div class="column">

                <div class="card card-1 ">
                    <a style=" text-decoration: none;" class="card__link" href="/dashboard/{{$row->id}}">
                        <h2 class="card__title">{{$row->topic_name}}</h2>

                        <h3 class="card__desc">{{$row->description}}</h3>
                    </a>
                </div>

            </div>
            @endforeach
        </div>
    </div>




    <style>

        body{
            background-color:white;
        }
        .column {
            float: left;
            width: 32%;
            padding: 30px;
            align-items: center
                /* Should be removed. Only for demonstration */
        }

        .heading_class {
            background-color: #5fcf80;
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            margin: 10px;
            padding: 5px;
            color: white;
            font-size: 40px;
            font-weight: 600;
            font-family: "Georgia";
        }

        .card {
            margin: 0px;
            padding: 20px;
            width: 400px;
            min-height: 200px;
            /* display: grid;
            grid-template-rows: 20px 50px 1fr 50px; */
            border-radius: 10px;
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.25);
            transition: all 0.2s;
        }

        .card:hover {
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.4);
            transform: scale(1.01);
        }


        .card::after {
            position: absolute;
            top: 25px;
            left: 0;
            content: "";
            width: 0%;
            height: 3px;
            background-color: #5fcf80;
            transition: all 0.5s;
        }

        .card:hover::after {
            width: 100%;
        }

        .card__title {
            color: #5fcf80;
            font-size: 40px;
            font-weight: 600;

        }

        .card__desc {
            color: black;
            font-size: 30px;
            font-weight: 400;

        }


        /* CARD BACKGROUNDS */

        .card-1 {
            background: white;
        }


        /* RESPONSIVE */

        @media (max-width: 1600px) {
            .column {
                width: center;
            }
        }

        @media screen and (max-width: 700px) {
            .column {
                width: 100%;
                float: left;
                padding: 20px
            }
            .heading_class {
           
            padding: 10px;
            color: rgb(56, 54, 54);
            font-size: 25px;
            font-weight: 600;
            font-family: "Georgia";
      
        }

        .card__title {
            color: white;
            font-size: 30px;
            font-weight: 600;

        }

        .card__desc {
            color: white;
            font-size: 25px;
            font-weight: 400;

        }


            .card{
                margin-bottom: 0px;
                width: 90%;
            
                min-height: 160px;
            }
        }
    </style>
</body>

</html>