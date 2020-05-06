<!-- HEADER MOBILE-->
<style>
    a:hover{
        text-decoration:none;
    }
</style>
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
                            <a class="{{ Route::currentRouteName() == 'admin.linkcreate.index' ? 'js-arrow' : '' }} {{ Route::currentRouteName() == 'admin.link.linkpage' ? 'js-arrow' : '' }}" href="#">
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
                        <li class="{{ Route::currentRouteName() == 'admin.dashboard' ? 'active' : '' }}">
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.dashboard' ? 'active' : '' }}" href="{{ route('admin.dashboard') }}">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>

                        </li>
                        <li class="{{ Route::currentRouteName() == 'admin.department.index' ? 'active' : '' }}">
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.department.index' ? 'active' : '' }}" href="{{ route('admin.department.index') }}">
                                <i class="fas fa-book"></i>Department</a>
                        </li>
                        <li class="{{ Route::currentRouteName() == 'admin.cv.personal' ? 'active' : '' }}">
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.cv.personal' ? 'active' : '' }}" href="{{ route('admin.cv.personal') }}">
                                <i class="fas fa-users"></i>Employee List</a>
                        </li>



                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-link"></i>Link</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li class="{{ Route::currentRouteName() == 'admin.linkcreate.index' ? 'active' : '' }}">
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.linkcreate.index' ? 'active' : '' }}"
                        href="{{ route('admin.linkcreate.index') }}">Create Link</a>
                                </li>
                                <li class="{{ Route::currentRouteName() == 'admin.link.linkpage' ? 'active' : '' }}">
                                    <a class="app-menu__item {{ Route::currentRouteName() == 'admin.link.linkpage' ? 'active' : '' }}"
                        href="{{ route('admin.link.linkpage') }}">Show Link</a>
                                </li>

                            </ul>
                        </li>

                        

                         <li class="{{ Route::currentRouteName() == 'admin.settings' ? 'active' : '' }}">
                            <a class="app-menu__item {{ Route::currentRouteName() == 'admin.settings' ? 'active' : '' }}" href="{{ route('admin.settings') }}">
                                <i class="fas fa fa-cogs"></i>Settings</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container" id="page-container">
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
