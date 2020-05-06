@extends('admin.app')
@section('title') Dashboard @endsection
@section('content')
<style>
    a:hover{
        text-decoration: none;
    }
</style>
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
        </div>
    </div>
    <div class="row">

        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.cv.personal') }}">
            <div class="widget-small primary coloured-icon">
                <i class="icon fa fa-users fa-3x"></i>
                <div class="info">
                    <h4>Total Employee</h4>
                    <p><b>{{ $employee }}</b></p>
                </div>
            </div>
        </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.cv.personal') }}">
            <div class="widget-small info coloured-icon">
                <i class="icon fa fa-user fa-3x"></i>
                <div class="info">
                    <h4>Active Employee</h4>
                    <p><b>{{ $activeEmp }}</b></p>
                </div>
            </div>
        </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.cv.personal') }}">
            <div class="widget-small danger coloured-icon">
                <i class="icon fa fa-user fa-3x"></i>
                <div class="info">
                    <h4>Inactive Employee</h4>
                    <p><b>{{ $employee - $activeEmp }}</b></p>
                </div>
            </div>
        </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.link.linkpage') }}">
            <div class="widget-small warning coloured-icon">
                <i class="icon fa fa-link fa-3x"></i>
                <div class="info">
                    <h4>Total Link</h4>
                    <p><b>{{ $link }}</b></p>
                </div>
            </div>
        </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.department.index') }}">
            <div class="widget-small warning coloured-icon">
                <i class="icon fa fa-book fa-3x"></i>
                <div class="info">
                    <h4>Total Department</h4>
                    <p><b>{{ $department }}</b></p>
                </div>
            </div>
        </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.department.index') }}">
            <div class="widget-small info coloured-icon">
                <i class="icon fa fa-book fa-3x"></i>
                <div class="info">
                    <h4>Active Department</h4>
                    <p><b>{{ $activeDep }}</b></p>
                </div>
            </div>
             </a>
        </div>


        <div class="col-md-6 col-lg-3">
            <a href="{{ route('admin.department.index') }}">
            <div class="widget-small danger coloured-icon">
                <i class="icon fa fa-book fa-3x"></i>
                <div class="info">
                    <h4>Inactive Department</h4>
                    <p><b>{{ $department - $activeDep }}</b></p>
                </div>
            </div>
        </a>
        </div>

        <div class="col-md-6 col-lg-3">
            <a href="#">
            <div class="widget-small primary coloured-icon">
                <i class="icon fa fa-mouse-pointer fa-3x"></i>
                <div class="info">
                    <h4>Current Visitor</h4>
                    <p><b>{{ $visitor }}</b></p>
                </div>
            </div>
        </a>
        </div>

        <div class="col-md-6 col-lg-3">
            <a href="#">
            <div class="widget-small primary coloured-icon">
                <i class="icon fa fa-safari fa-3x"></i>
                <div class="info">
                    <h4>Online User</h4>
                    <p><b>{{ $Onlineusers }}</b></p>
                </div>
            </div>
        </a>
        </div>

        <div class="col-md-6 col-lg-3">
            <a href="#">
            <div class="widget-small primary coloured-icon">
                <i class="icon fa fa-file fa-3x"></i>
                <div class="info">
                    <h4>{{ $Todaydate }} Page Views</h4>
                    <p><b>{{ $Todaytotal }}</b></p>
                </div>
            </div>
        </a>
        </div>


    </div>
@endsection
