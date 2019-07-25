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
                <div class="container">
                    @if(session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-body">
                            <img style="width:200px" class="mr-3" src="{{ asset('imgs/IPC_ori.png') }}" alt="Generic placeholder image">
                            <hr>
                            <form style="width:325px" action="{{ route('userAdd.save') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="institusion">Nama Peserta</label><br>
                                    <input required type="text" name="name" id="name" class="form-control" placeholder="Masukan Nama">
                                </div>
                                <div class="form-group">
                                    <label for="">Pilih Unit Kerja</label>
                                    <select required name="bagian" id="bagian" class="form-control">
                                            <option value="" selected disabled>Pilih Unit</option>
                                        @foreach ($bagians as $bagian)
                                            <option value="{{ $bagian->id }}">{{ $bagian->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">Simpan</button>
                                <a href="{{ route('exporttoExcel') }}" class="btn btn-success btn-block">Export Excel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="{{ asset('dist/js/bootstrap.min.js') }}"></script>
    </body>
</html>