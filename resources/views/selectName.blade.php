<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="{{ asset('dist/css/bootstrap.min.css') }}">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .ml5 {
                margin-left: 80px;
            }

            .mr5 {
                margin-right: 80px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="container">
                    <div class="card">
                        <div class="card-body">
                            <img style="width:200px" class="mr-3" src="{{ asset('imgs/IPC_ori.png') }}" alt="Generic placeholder image">
                            <h2>OPERATION GATHERING 2019 <br>  YOGYAKARTA</h2>
                            <hr>
                            <form action="{{ route('lavatur.attendView') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="institusion">Select Name</label>
                                    <select name="id" id="id" class="form-control">
                                        <option value="" selected disabled>Select Your Name</option>
                                        @foreach ($attends as $attend)
                                            <option value="{{ $attend->id }}">{{ $attend->name }} - {{ $attend->bagian->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <hr>
                                <a class="btn btn-lg btn-secondary mr5" href="{{ route('lavatur.back') }}">Back</a>
                                <button type="submit" class="btn btn-lg btn-primary ml5">Next</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="{{ asset('dist/js/bootstrap.min.js') }}"></script>
    </body>
</html>