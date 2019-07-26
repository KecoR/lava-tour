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
                /* font-family: 'Nunito', sans-serif; */
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

            /* .ml5 {
                margin-left: 300px;
            } */

            .mr5 {
                margin-right: 300px;
            }

            .ml {
                margin-left: 10px;
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
            #bglbl
            {
                color: #4248f5;
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
                            <form action="{{ route('lavatur.attendSave') }}" method="POST">
                                @csrf
                                <input type="hidden" name="id" value="{{ $attend->id }}">
                                <input type="hidden" name="time" value="{{ $time }}">
                                <div class="form-group">
                                    <h1><label for="name"></label>
                                    <strong>{!! $attend->name !!}</strong></h1>
                                </div>
                                <div class="form-group">
                                    <label for="source">Entitas</label>
                                    <label for="">:</label>
                                    <label for="value">{{ $attend->bagian->name }}</label>
                                </div>
                                <div class="form-group">
                                    <label for="attendace">Attendace Time</label>
                                    <label for="">:</label>
                                    <label for="value">{{ $time }}</label>
                                </div>
                                <div class="form-group">
                                   <h3> <label for="attendace">Nomor Meja</label>
                                    <label for="">:</label>
                                   <label for="value">{{ $attend->no_meja }}</label></h3> 
                                </div>
                                <!-- <div class="form-group">
                                    <label for="attendace">Email</label>
                                    <label for="">:</label>
                                    <label for="value">{{ $attend->email }}</label>
                                </div>
                                <div class="form-group">
                                    <label for="attendace">Nomor Telefon</label>
                                    <label for="">:</label>
                                    <label for="value">{{ $attend->tlp }}</label>
                                </div>
 -->                             <div class="form-group">
                                    <!-- <label for="institusion">Email</label><br> -->
                                    <input required type="text" name="email" id="email" value="{{ $attend->email }}"class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <!-- <label for="institusion">Nomor Telepon</label><br> -->
                                    <input required type="text" name="tlp" id="tlp" class="form-control" placeholder="Nomor Telepon">
                                </div>

                                @if (!empty($day))
                                <div class="form-group">
                                    <!-- <label for="attend">Lava Tour Attendance</label> -->
                                    <label for="attend">Lava Tour Attendance</label>
                                    <label for="">:</label>
                                    <label for="">
                                        <input type="hidden" name="" value="{{ $attend->lava_tour }}">
                                        @if ($attend->lava_tour !== NULL)
                                            @if ($attend->lava_tour == 1)
                                                <input disabled type="radio" class="ml" name="attend" id="attend" value="1" checked> Yes
                                                <input disabled type="radio" class="ml" name="attend" id="attend" value="0"> No
                                            @else
                                                <input disabled type="radio" class="ml" name="attend" id="attend" value="1"> Yes
                                                <input disabled type="radio" class="ml" name="attend" id="attend" value="0" checked> No
                                            @endif
                                        @else
                                            <input disabled type="radio" class="ml" name="attend" id="attend" value="1" required> Yes
                                            <input disabled type="radio" class="ml" name="attend" id="attend" value="0"> No
                                        @endif
                                    </label>
                                </div>
                                <hr>
                                <div class="alert alert-success">
                                    Anda Telah Melakukan Absensi
                                </div>
                                @else
                                <div class="form-group">
                                   <strong><label for="attend">Lava Tour Attendance</label> 
                                    <label for="">:</label>
                                    <label for="">
                                        <input type="hidden" name="" value="{{ $attend->lava_tour }}">
                                        @if ($attend->lava_tour !== NULL)
                                            @if ($attend->lava_tour == 1)
                                                <input type="radio" class="ml" name="attend" id="attend" value="1" checked> Yes
                                                <input type="radio" class="ml" name="attend" id="attend" value="0"> No
                                            @else
                                                <input type="radio" class="ml" name="attend" id="attend" value="1"> Yes
                                                <input type="radio" class="ml" name="attend" id="attend" value="0" checked> No
                                            @endif
                                        @else
                                            <input type="radio" class="ml" name="attend" id="attend" value="1" required> Yes
                                            <input type="radio" class="ml" name="attend" id="attend" value="0"> No
                                        @endif
                                    </label></strong>
                                </div>
                                <hr>
                                <button type="submit" class="btn btn-success ml5">Attend</button>
                                @endif
                                <br>
                                <a class="btn btn-secondary mr5" href="{{ route('lavatur.back') }}">Back</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="{{ asset('dist/js/bootstrap.min.js') }}"></script>
    </body>
</html>