<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title') - {{ config('app.name') }}</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Employee Profile">
    <meta name="author" content="Sahab Uddin">
    <meta name="keywords" content="Employee Profile, Short cv, Qr code">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1" />-->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('backend/css/main.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('backend/css/font-awesome/4.7.0/css/font-awesome.min.css') }}"/>
    <style>
        @media print {
            /* All your print styles go here */
            #header, #sidebar, #sidebarss, #ides1, #pnt, #footer, #nav { display: none !important; }
           }
    </style>
</head>
<body>
    <div style="margin: 40px 40px;">
       
        @yield('content')
    
    </div>
    
    <script src="{{ asset('backend/js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{ asset('backend/js/popper.min.js') }}"></script>
    <script src="{{ asset('backend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('backend/js/main.js') }}"></script>
    <script src="{{ asset('backend/js/plugins/pace.min.js') }}"></script>

    @stack('scripts')
</body>
</html>
