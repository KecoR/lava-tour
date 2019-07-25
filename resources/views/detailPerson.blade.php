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
                            <hr>
                            <form action="#">
                                <div class="form-group">
                                    <label for="name"></label>
                                </div>
                                <table>
                                    <div class="form-group">
                                        <tr>
                                            <td colspan="3" style="text-align: center"><label for="">Name 1</label></td>
                                        </tr>
                                    </div>
                                    <div class="form-group">
                                        <tr>
                                            <td><label for="name">Asal</label></td>
                                            <td><label for="">:</label></td>
                                            <td><label for="">Asal 1</label></td>
                                        </tr>
                                    </div>
                                    <div class="form-group">
                                        <tr>
                                            <td><label for="name">Source</label></td>
                                            <td><label for="">:</label></td>
                                            <td><label for="">Source 1</label></td>
                                        </tr>
                                    </div>
                                    <div class="form-group">
                                        <tr>
                                            <td><label for="name">Attandance</label></td>
                                            <td><label for="">:</label></td>
                                            <td><label for="">Date Time</label></td>
                                        </tr>
                                    </div>
                                    <div class="form-group">
                                        <tr>
                                            <td><label for="attend">Attending Lavatur</label></td>
                                            <td colspan="2">
                                                <input type="radio" name="is_attand" id=""> Yes
                                                <input type="radio" name="is_attand" id=""> No
                                            </td>
                                        </tr>
                                    </div>
                                </table>
                                <div class="form-gourp">
                                    <button type="submit" class="btn btn-prmary">Attend</button>
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
