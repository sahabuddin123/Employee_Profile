@extends('admin.app')

@section('title') {{ $pageTitle }} @endsection

@section('content')
    <div class="app-title">
        <div>
            <h3 class="p-b-30"><i class="fa fa-users"></i> {{ $pageTitle }}</h3>
        </div>
    </div>
    @include('admin.partials.flash')
    <div class="row user">
        <div class="col-md-3">
            <div class="user-data" style="padding-top:0px;">
            <div class="tile p-0">
                @include('admin.cv.sidebar')
            </div>
        </div>
        </div>
        <div class="col-md-9">
            <div class="user-data m-b-30" style="padding:30px;">
            <div class="tab-content">
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.personal' ? 'active' : 'fade' }}" id="personal">
                    @yield('personal')
                </div>
                  <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.education' ? 'active' : 'fade' }}" id="education">
                    @yield('education')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.language' ? 'active' : 'fade' }}" id="language">
                    @yield('language')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.traning' ? 'active' : 'fade' }}" id="traning">
                    @yield('traning')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.workexp' ? 'active' : 'fade' }}" id="workexp">
                    @yield('workexp')
                </div>
               <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.skill' ? 'active' : 'fade' }}" id="skill">
                    @yield('skill')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.empInfo' ? 'active' : 'fade' }}" id="empInfo">
                    @yield('empInfo')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.reference' ? 'active' : 'fade' }}" id="reference">
                    @yield('reference')
                </div>
                <div class="tab-pane {{ Route::currentRouteName() == 'admin.cv.update.document' ? 'active' : 'fade' }}" id="document">
                    @yield('document')
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
<script>
    $(document).ready(function(){

        $("#edit2").on('click',function(){
            $("#edit11").hide();
            $("#edit22").show();
        });
    });
</script>
@endpush
