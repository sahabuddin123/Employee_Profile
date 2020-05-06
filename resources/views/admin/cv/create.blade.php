@extends('admin.app')

@section('title') {{ $pageTitle }} @endsection

@section('content')
    <div class="app-title">
        <div>
            <h1><i class="fa fa-users"></i> {{ $pageTitle }}</h1>
        </div>
    </div>
    @include('admin.partials.flash')
    <div class="row user">
        <div class="col-md-3">
            <div class="tile p-0">
                <ul class="nav flex-column nav-tabs user-tabs">
                    <li class="nav-item"><a class="nav-link active" href="#personal" data-toggle="tab">Personal Information</a></li>
                    {{--  <li class="nav-item"><a class="nav-link" href="#education" data-toggle="tab">Education Information</a></li>
                    <li class="nav-item"><a class="nav-link" href="#footer-seo" data-toggle="tab">Footer &amp; SEO</a></li>
                    <li class="nav-item"><a class="nav-link" href="#social-links" data-toggle="tab">Social Links</a></li>
                    <li class="nav-item"><a class="nav-link" href="#analytics" data-toggle="tab">Analytics</a></li>
                    <li class="nav-item"><a class="nav-link" href="#payments" data-toggle="tab">Payments</a></li>  --}}
                </ul>
            </div>
        </div>
        <div class="col-md-9">
            <div class="user-data m-b-30" style="padding:30px;">
            <div class="tab-content">
                <div class="tab-pane active" id="personal">
                    @include('admin.cv.insert.personal')
                </div>
                {{--  <div class="tab-pane fade" id="education">
                    @include('admin.cv.insert.education')
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
                </div>  --}}
            </div>
        </div>
    </div>
    </div>
@endsection
@push('scripts')
    {{--  <script type="text/javascript" src="{{ asset('backend/js/plugins/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('backend/js/plugins/dataTables.bootstrap.min.js') }}"></script>  --}}
       <!-- jquery
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/vendor/jquery-1.12.4.min.js') }}"></script>
    <!-- bootstrap JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/bootstrap.min.js') }}"></script>
    <!-- wow JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/wow.min.js') }}"></script>
    <!-- price-slider JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/jquery-price-slider.js') }}"></script>
    <!-- meanmenu JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/jquery.meanmenu.js') }}"></script>
    <!-- owl.carousel JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/owl.carousel.min.js') }}"></script>
    <!-- sticky JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/jquery.sticky.js') }}"></script>
    <!-- scrollUp JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/jquery.scrollUp.min.js') }}"></script>
    <!-- datepicker JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/datepicker/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/datepicker/datepicker-active.js') }}"></script>
    <!-- mCustomScrollbar JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/scrollbar/jquery.mCustomScrollbar.concat.min.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/scrollbar/mCustomScrollbar-active.js') }}"></script>
    <!-- metisMenu JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/metisMenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/metisMenu/metisMenu-active.js') }}"></script>
    <!-- data table JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/data-table/bootstrap-table.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/tableExport.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/data-table-active.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/bootstrap-table-editable.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/bootstrap-editable.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/bootstrap-table-resizable.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/colResizable-1.5.source.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/data-table/bootstrap-table-export.js') }}"></script>
    <!--  editable JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/editable/jquery.mockjax.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/mock-active.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/select2.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/moment.min.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/bootstrap-datetimepicker.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/bootstrap-editable.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/editable/xediable-active.js') }}"></script>
    <!-- Chart JS
        ============================================ -->
    <!-- <script src="{{ asset('/backend/emp/js/chart/jquery.peity.min.js') }}"></script>
    <script src="{{ asset('/backend/emp/js/peity/peity-active.js') }}"></script> -->
    <!-- tab JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/tab.js') }}"></script>
    <!-- plugins JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/plugins.js') }}"></script>
    <!-- main JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/main.js') }}"></script>
    <!-- tawk chat JS
        ============================================ -->
    <!-- <script src="{{ asset('/backend/emp/js/tawk-chat.js') }}"></script> -->





@endpush
