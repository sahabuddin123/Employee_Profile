<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    {{--  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  --}}
    <meta name="description" content="Employee Profile">
    <meta name="author" content="Sahab Uddin">
    <meta name="keywords" content="Employee Profile, Short cv, Qr code">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Title Page-->
    <title>{{ config('app.name') }} - @yield('title')</title>

    <!-- Fontfaces CSS-->
    <link href="{{ asset('backend2/css/font-face.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/font-awesome-4.7/css/font-awesome.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/font-awesome-5/css/fontawesome-all.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/mdi-font/css/material-design-iconic-font.min.css') }}" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="{{ asset('backend2/vendor/bootstrap-4.1/bootstrap.min.css') }}" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="{{ asset('backend2/vendor/animsition/animsition.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet') }}" media="all">
    <link href="{{ asset('backend2/vendor/wow/animate.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/css-hamburgers/hamburgers.min.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/slick/slick.css') }}" rel="stylesheet" media="all">
    <link href="{{ asset('backend2/vendor/select2/select2.min.css" rel="stylesheet') }}" media="all">
    <link href="{{ asset('backend2/vendor/perfect-scrollbar/perfect-scrollbar.css') }}" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="{{ asset('backend2/css/theme.css') }}" rel="stylesheet" media="all">
    <style>
        @media print {
            /* All your print styles go here */
            header, aside, #header, #sidebar, #sidebarss, #ides1, #pnt, #footer, #nav, .logo { display: none !important; }
            .container-fluid{
                padding: 0;
                margin: 0;
            }
            body{
                padding: 0;
                margin: 0;
            }
            *{
                padding: 0;
                margin: 0;
            }
            .section__content--p30{
                padding: 0 ;
                margin: 0 ;
            }
            .section__content{
                padding: 0 ;
                margin: 0 ;
                margin-top: -100px;
            }
           }
    </style>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
    @include('admin.partials.sidebar')
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
        @yield('content')
    </div>
</div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
</div>

</div>
<!-- Jquery JS-->
<script src="{{ asset('backend2/vendor/jquery-3.2.1.min.js') }}"></script>
<!-- Bootstrap JS-->
<script src="{{ asset('backend2/vendor/bootstrap-4.1/popper.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/bootstrap-4.1/bootstrap.min.js') }}"></script>
<!-- Vendor JS       -->
<script src="{{ asset('backend2/vendor/slick/slick.min.js') }}">
</script>
<script src="{{ asset('backend2/vendor/wow/wow.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/animsition/animsition.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js') }}">
</script>
<script src="{{ asset('backend2/vendor/counter-up/jquery.waypoints.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/counter-up/jquery.counterup.min.js') }}">
</script>
<script src="{{ asset('backend2/vendor/circle-progress/circle-progress.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
<script src="{{ asset('backend2/vendor/chartjs/Chart.bundle.min.js') }}"></script>
<script src="{{ asset('backend2/vendor/select2/select2.min.js') }}">
</script>

<!-- Main JS-->
<script src="{{ asset('backend2/js/main.js') }}"></script>
@stack('scripts')
</body>

</html>
<!-- end document-->

