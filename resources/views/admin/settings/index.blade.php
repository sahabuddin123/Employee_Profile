@extends('admin.app')
 
@section('title') {{ $pageTitle }} @endsection
 
@section('content')
    <div class="app-title">
        <div>
            
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-cogs"></i> {{ $pageTitle }}
                </h3>
            
        </div>
    </div>
    @include('admin.partials.flash')
    <div class="row user">
        <div class="col-md-3">
            <div class="user-data" style="padding-top:0px;">
                
            <div class="tile p-0">
                <ul class="nav flex-column nav-tabs user-tabs">
                    <li class="nav-item"><a class="nav-link active" href="#general" data-toggle="tab">General</a></li>
                    <li class="nav-item"><a class="nav-link" href="#site-logo" data-toggle="tab">Site Logo</a></li>
                </ul>
            </div>
        </div>
        </div>
        <div class="col-md-9">
            <div class="user-data" style="padding-top:0px;">
            <div class="tab-content" style="padding:30px;">
                <div class="tab-pane active" id="general">
                    @include('admin.settings.includes.general')
                </div>
                <div class="tab-pane fade" id="site-logo">
                    @include('admin.settings.includes.logo')
                </div>
                <div class="tab-pane fade" id="footer-seo">
                    @include('admin.settings.includes.footer_seo')
                </div>
                <div class="tab-pane fade" id="social-links">
                    @include('admin.settings.includes.social_links')
                </div>
                <div class="tab-pane fade" id="analytics">
                    @include('admin.settings.includes.analytics')
                </div>
                <div class="tab-pane fade" id="payments">
                    @include('admin.settings.includes.payments')
                </div>
            </div>
        </div>
        </div>
    </div>
@endsection