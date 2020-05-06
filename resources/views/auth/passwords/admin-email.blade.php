<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Employee Profile">
    <meta name="author" content="Sahab Uddin">
    <meta name="keywords" content="Employee Profile, Short cv, Qr code">

    <!-- Title Page-->
    <title>Forgote</title>

    <!-- Fontfaces CSS-->
    <link href="{{ asset('/backend2/css/font-face.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/font-awesome-4.7/css/font-awesome.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/font-awesome-5/css/fontawesome-all.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/mdi-font/css/material-design-iconic-font.min.css') }}" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="{{ asset('/backend2/vendor/bootstrap-4.1/bootstrap.min.css') }}" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="{{ asset('/backend2/vendor/animsition/animsition.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/wow/animate.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/css-hamburgers/hamburgers.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/slick/slick.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/select2/select2.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('/backend2/vendor/perfect-scrollbar/perfect-scrollbar.css') }}" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="{{ asset('/backend2/css/theme.css') }}" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="{{ asset('/backend/img/emplogo.png')}}" alt="!">
                            </a>
                        </div>
                        <div class="login-form">
                            @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                                
                            <form class="form-horizontal" role="form" method="POST" action="{{ route('admin.password.email') }}">
                                @csrf
                                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                    <label>Email Address</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email" autofocus value="{{ old('email') }}">
                                    @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">submit</button>
                                
                            </form>
                            <div class="form-group btn-container">
                                <a class="btn btn-link" href="{{ url('/admin/login') }}">
                                                        Go Back Login
                                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="{{ asset('/backend2/vendor/jquery-3.2.1.min.js') }}"></script>
    <!-- Bootstrap JS-->
    <script src="{{ asset('/backend2/vendor/bootstrap-4.1/popper.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/bootstrap-4.1/bootstrap.min.js') }}"></script>
    <!-- Vendor JS       -->
    <script src="{{ asset('/backend2/vendor/slick/slick.min.js') }}">
    </script>
    <script src="{{ asset('/backend2/vendor/wow/wow.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/animsition/animsition.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js') }}">
    </script>
    <script src="{{ asset('/backend2/vendor/counter-up/jquery.waypoints.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/counter-up/jquery.counterup.min.js') }}">
    </script>
    <script src="{{ asset('/backend2/vendor/circle-progress/circle-progress.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/chartjs/Chart.bundle.min.js') }}"></script>
    <script src="{{ asset('/backend2/vendor/select2/select2.min.js') }}">
    </script>

    <!-- Main JS-->
    <script src="{{ asset('/backend2/js/main.js') }}"></script>

</body>

</html>


