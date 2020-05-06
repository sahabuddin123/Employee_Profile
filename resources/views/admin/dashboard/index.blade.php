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
    <title>Dashboard</title>

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
    .overview-box .text span {
        font-size: 18px;
        color: #fff !important;
    }
</style>
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="{{ asset('/backend2/img/emplogo.png') }}" alt="LoGo" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.dashboard' ? 'active' : '' }}" href="{{ route('admin.dashboard') }}">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>

                        </li>
                        <li>
                             <a class="app-menu__item {{ Route::currentRouteName() == 'admin.department.index' ? 'active' : '' }}" href="{{ route('admin.department.index') }}">
                                <i class="fas fa-book"></i>Department</a>
                        </li>
                        <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.cv.personal' ? 'active' : '' }}" href="{{ route('admin.cv.personal') }}">
                                <i class="fas fa-users"></i>Employee List</a>
                        </li>



                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-link"></i>Link</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.linkcreate.index' ? 'active' : '' }}"
                        href="{{ route('admin.linkcreate.index') }}">Create Link</a>
                                </li>
                                <li>
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.link.linkpage' ? 'active' : '' }}"
                        href="{{ route('admin.link.linkpage') }}">Show Link</a>
                                </li>

                            </ul>
                        </li>
                        

                         <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.settings' ? 'active' : '' }}" href="{{ route('admin.settings') }}">
                                <i class="fas fa fa-cogs"></i>Settings</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="{{ asset('/backend2/img/emplogo.png') }}" alt="LoGo" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active">
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.dashboard' ? 'active' : '' }}" href="{{ route('admin.dashboard') }}">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>

                        </li>
                        <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.department.index' ? 'active' : '' }}" href="{{ route('admin.department.index') }}">
                                <i class="fas fa-book"></i>Department</a>
                        </li>
                        <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.cv.personal' ? 'active' : '' }}" href="{{ route('admin.cv.personal') }}">
                                <i class="fas fa-users"></i>Employee List</a>
                        </li>



                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-link"></i>Link</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.linkcreate.index' ? 'active' : '' }}"
                        href="{{ route('admin.linkcreate.index') }}">Create Link</a>
                                </li>
                                <li>
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.link.linkpage' ? 'active' : '' }}"
                        href="{{ route('admin.link.linkpage') }}">Show Link</a>
                                </li>

                            </ul>
                        </li>
                        
                         <li>
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.settings' ? 'active' : '' }}" href="{{ route('admin.settings') }}">
                                <i class="fas fa fa-cogs"></i>Settings</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">

                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                    </div>
                                    <div class="noti__item js-item-menu">
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="{{ asset('/backend2/images/icon/avatar-01.jpg') }}" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">

                                                <?php
                                                    $admin = App\Models\Admin::where('id', 1)->first();
                                                   echo $admin->name;
                                                ?>
                                            </a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="{{ asset('/backend2/images/icon/avatar-01.jpg') }}" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">{{$admin->name}}</a>
                                                    </h5>
                                                    <span class="email">{{$admin->email}}</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">

                                                <div class="account-dropdown__item">
                                                    <a href="{{ route('admin.settings') }}">
                                                        <i class="zmdi zmdi-settings"></i>Setting</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="{{ route('admin.changePassword') }}">
                                                        <i class="zmdi zmdi-key"></i>Password Change</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="{{ route('admin.logout') }}">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <!-- Content 01 -->
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <a href="{{ route('admin.cv.personal') }}">
                                            <div class="text">
                                                <h2>{{ $employee }}</h2>
                                                <b> <span>Total Employee &nbsp;&nbsp;&nbsp;</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account"></i>
                                            </div>
                                             <a href="{{ route('admin.profile.active') }}">
                                            <div class="text">
                                                <h2>{{ $activeEmp }}</h2>
                                               <b> <span>Active Employee</span></b>
                                            </div>
                                             </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account"></i>
                                            </div>
                                            <a href="{{ route('admin.profile.inactive') }}">
                                            <div class="text">
                                                <h2>{{ $employee - $activeEmp }}</h2>
                                               <b> <span>Inactive Employee</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-link"></i>
                                            </div>
                                            <a href="{{ route('admin.cv.personal') }}">
                                            <div class="text">
                                                <h2>{{ $link }}</h2>
                                               <b> <span>Total Link &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- Content 02 -->
                        <div class="row">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-book"></i>
                                            </div>
                                            <a href="{{ route('admin.department.index') }}">
                                            <div class="text">
                                                <h2>{{ $department }}</h2>
                                               <b> <span>Total Department</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-book"></i>
                                            </div>
                                            <a href="{{ route('admin.department.active') }}">
                                            <div class="text">
                                                <h2>{{ $activeDep }}</h2>
                                               <b> <span>Active Department</span></b>
                                            </div>
                                        </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-book"></i>
                                            </div>
                                             <a href="{{ route('admin.department.inactive') }}">
                                            <div class="text">
                                                <h2>{{ $department - $activeDep }}</h2>
                                              <b>  <span>Inactive Department</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-mouse"></i>
                                            </div>
                                            <a href="#">
                                            <div class="text">
                                                <h2>{{ $visitor }}</h2>
                                                <b><span>Current Visitor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></b>
                                            </div>
                                        </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Content 02 -->
                        <div class="row">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fas fa-chart-bar"></i>
                                            </div>
                                            <a href="#">
                                            <div class="text">
                                                <h2>{{ $Onlineusers }}</h2>
                                               <b> <span>Online User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="fas fa-copy"></i>
                                            </div>
                                            <a href="#">
                                            <div class="text">
                                                <h2>{{ $Todaytotal }}</h2>
                                               <b><span>Today Page Views</span></b>
                                            </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2020 All rights reserved. Developed by <a href="http://wiztecbd.com">WizTecBD</a></p>
                                </div>
                            </div>
                        </div>
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

</body>

</html>
<!-- end document-->
