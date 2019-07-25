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

            .mr {
                margin: 10px;
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
                <div class="container mw">
                    <div class="card">
                        <div class="card-body">
                            <img style="width:200px" class="mr-3" src="{{ asset('imgs/IPC_ori.png') }}" alt="Generic placeholder image">
                            <hr>
                            <form action="#">
                                <div class="form-group">
                                    <label for="institusion">Select Institution</label><br>
                                    @foreach ($bagians as $bagian)
                                        <a href="{{ route('lavatur.selectName', $bagian->id) }}" class="btn btn-lg btn-primary mr"><img width="100px" height="75px" src="{{ asset('imgs/'.$bagian->image) }}" alt="{{ $bagian->name }}"> {{ $bagian->name }}</a>
                                    @endforeach
                                    <hr>
                                    <a href="{{ route('lavatur.back') }}" class="btn btn-lg btn-secondary">Back</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="{{ asset('dist/js/bootstrap.min.js') }}"></script>
    </body>
</html>
