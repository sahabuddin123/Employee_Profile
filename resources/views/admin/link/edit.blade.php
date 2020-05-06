@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')

    @include('admin.partials.flash')

    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30">
                <h3 class="title-3 m-b-30">
                <i class="zmdi zmdi-account-calendar"></i>{{ "Edit Employee Link" }}</h3>
            <div class="tile">
                <div class="tile-body">
                    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/bootstrap.min.css') }}">
    <!-- Bootstrap CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/font-awesome.min.css') }}">
    <!-- owl.carousel CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/owl.theme.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/owl.transitions.css') }}">
    <!-- animate CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/animate.css') }}">
    <!-- normalize CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/normalize.css') }}">
    <!-- meanmenu icon CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/meanmenu.min.css') }}">
    <!-- main CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/main.css') }}">
    <!-- educate icon CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/educate-custon-icon.css') }}">
    <!-- morrisjs CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/morrisjs/morris.css') }}">
    <!-- mCustomScrollbar CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/scrollbar/jquery.mCustomScrollbar.min.css') }}">
    <!-- metisMenu CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/metisMenu/metisMenu.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/metisMenu/metisMenu-vertical.css') }}">
    <!-- calendar CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/calendar/fullcalendar.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/calendar/fullcalendar.print.min.css') }}">
    <!-- x-editor CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/editor/select2.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/editor/datetimepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/editor/bootstrap-editable.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/editor/x-editor-style.css') }}">
    <!-- normalize CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/data-table/bootstrap-table.css') }}">
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/data-table/bootstrap-editable.css') }}">
    <!-- style CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/style.css') }}">
    <!-- responsive CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/responsive.css') }}">
    <!-- modernizr JS
        ============================================ -->
    <script src="{{ asset('/backend/emp/js/vendor/modernizr-2.8.3.min.js') }}"></script>
    <!-- forms CSS
        ============================================ -->
    <link rel="stylesheet" href="{{ asset('/backend/emp/css/form/all-type-forms.css') }}">

    <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright" style="padding:20px;">

                                    <form action="{{ route('admin.link.update') }}" method="post">
                                        @csrf
                                        <div class="col-md-4">
                                            <input type="hidden" name="roleid" value="{{ $roleid }}">
                                            <input type="hidden" name="linkpageid" value="{{ $linkpageid }}">
                                            <div class="form-group">
                                                <label class="control-label" for="projectname"> Project Name <span class="m-l-5 text-danger"> *</span></label>
                                                <input class="form-control @error('projectname') is-invalid @enderror" type="text" name="projectname" id="projectname" placeholder="Please Type " required value="{{ old('projectname', $data->projectname)}}" autocomplete="off"/>
                                                @error('projectname') {{ $message }} @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="data_11"> Link start time <span class="m-l-5 text-danger"> *</span></label>

                                                    <input class="form-control @error('starttime') is-invalid @enderror" type="date" name="starttime" id="data_11" placeholder="Please Type " required value="{{ old('starttime', $data->starttime)}}" autocomplete="off"/>

                                                    @error('starttime') {{ $message }} @enderror

                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="data_21"> Link end time <span class="m-l-5 text-danger"> *</span></label>

                                                    <input class="form-control @error('endtime') is-invalid @enderror" type="date" name="endtime" id="data_21" placeholder="Please Type " required value="{{ old('endtime', $data->endtime)}}" autocomplete="off"/>

                                                    @error('endtime') {{ $message }} @enderror

                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="data_10"> Single Employee Access Role <span class="m-l-5 text-danger"> *</span></label>
                                                <div class='input-group'>
                                                    <select class="form-control @error('role') is-invalid @enderror" name="role" id="data_10">
                                                        <option value="{{ $role }}" selected>
                                                            @if($role == 0)
                                                            {{ "Short Link" }}
                                                            @elseif($role == 1)
                                                            {{ "Full Link" }}
                                                            @elseif($role == 2)
                                                                {{ "Full Link With Document" }}
                                                            @endif
                                                        </option>
                                                        <option value="0">Short Link</option>
                                                        <option value="1">Full Link</option>
                                                        <option value="2">Full Link With Document</option>
                                                    </select>
                                                    @error('role') {{ $message }} @enderror
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="data_10"> Page Access Role <span class="m-l-5 text-danger"> *</span></label>
                                                <div class='input-group'>
                                                    <select class="form-control @error('cvlink') is-invalid @enderror" name="cvlink" id="data_10">
                                                        <option value="{{ $data->cvlink }}" selected>
                                                            @if($data->cvlink == 0)
                                                                {{ "Short Link" }}
                                                            @elseif($data->cvlink == 1)
                                                                {{ "Full Link" }}
                                                            @elseif($data->cvlink == 2)
                                                                {{ "Full Link With Document" }}
                                                            @endif
                                                        </option>
                                                        <option value="0">Short Link</option>
                                                        <option value="1">Full Link</option>
                                                        <option value="2">Full Link With Document</option>
                                                    </select>
                                                    @error('cvlink') {{ $message }} @enderror
                                                </div>
                                            </div>
                                        </div>
                                    <table id="table" data-toggle="table"  data-search="true"  data-toolbar="#toolbar">

                                        <thead>
                                            <tr><th><input type="checkbox" id="checkall"></th>

                                                <th data-field="id">ID</th>
                                                <th data-field="name" data-editable="true">Name</th>
                                                <th data-field="code" data-editable="true">Department Code</th>
                                                <th data-field="department" data-editable="true">Department Name</th>
                                                <th data-field="in_time" data-editable="true">Date Of Birth</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                @foreach($personals as $item)



                                <tr>

                                    <td><input type="checkbox" class="checkitem" name="linkid[]" id="check" value="{{ $item->id }}" @foreach ($linkid as $key => $value) @if($value == $item->id) checked @endif @endforeach></td>

                                    <td>{{ $item->Employee_id }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>

                                        @foreach(App\Models\Department::where('id', $item->department)->get() as $dept)
                                        {{ $dept->code }}
                                         @endforeach
                                        </td>
                                        <td>@foreach(App\Models\Department::where('id', $item->department)->get() as $dept)
                                        {{ $dept->department }}
                                         @endforeach</td>
                                    <td>
                                        @php
                                           $date = date('d-M-Y',strtotime($item->dob));
                                        @endphp
                                        {{ $date }}
                                    </td>
                                </tr>

                            @endforeach


                                        </tbody>
                                    </table>

                                </div>
                            </div>

                </div>
                <div class="text-center">


                <button class="btn btn-primary mt-3 text-center" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Link</button>
                                </form></div>
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

    <script>
    	$(document).ready(function() {
    		$('#checkall').change(function() {
    			$('.checkitem').prop('checked', $(this).prop('checked'));
    		});
    	});
    </script>

@endpush

