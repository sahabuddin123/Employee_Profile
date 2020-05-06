<!-- Bootstrap CSS
    ============================================ -->
<link rel="stylesheet" href="{{ asset('/backend/emp/css/bootstrap.min.css') }}">
<!-- Bootstrap CSS
    ============================================ -->
<link rel="stylesheet" href="{{ asset('/backend/emp/css/font-awesome.min.css') }}">
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
<!-- responsive CSS
    ============================================ -->
<link rel="stylesheet" href="{{ asset('/backend/emp/css/responsive.css') }}">
<!-- modernizr JS
    ============================================ -->
<script src="{{ asset('/backend/emp/js/vendor/modernizr-2.8.3.min.js') }}"></script>
<!-- forms CSS
    ============================================ -->
<link rel="stylesheet" href="{{ asset('/backend/emp/css/form/all-type-forms.css') }}">

            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                <form action="{{ route('admin.cv.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <div class="form-group">
                            <label class="control-label" for="name">Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('name') is-invalid @enderror" type="text" name="name" id="name" value="{{ old('name') }}"/>
                            @error('name') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="father_name">Father's Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('father_name') is-invalid @enderror" type="text" name="father_name" id="father_name" value="{{ old('father_name') }}"/>
                            @error('father_name') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="mother_name">Mother's Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('mother_name') is-invalid @enderror" type="text" name="mother_name" id="mother_name" value="{{ old('mother_name') }}"/>
                            @error('mother_name') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="brother">Brother <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('brother') is-invalid @enderror" type="text" name="brother" id="brother" value="{{ old('brother') }}"/>
                            @error('brother') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="sister">Sister <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('sister') is-invalid @enderror" type="text" name="sister" id="sister" value="{{ old('sister') }}"/>
                            @error('sister') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="data_11">Date of birth <span class="m-l-5 text-danger"> * </span></label>

                            <input class="form-control @error('dob') is-invalid @enderror" type="date" name="dob" id="data_11" value="{{ old('dob') }}"/>
                            @error('dob') {{ $message }} @enderror

                        </div>
                        <div class="form-group">
                            <label class="control-label" for="religion">Religion <span class="m-l-5 text-danger"> * </span></label>
                            <select class="form-control @error('religion') is-invalid @enderror" name="religion" id="religion">
                                <option value="">Select</option>
                                <option value="Islam">Islam</option>
                                <option value="Hindu">Hindu</option>
                                <option value="Christian">Christian</option>
                                <option value="Buddhist">Buddhist</option>
                                <option value="Others">Others</option>
                            </select>
                            @error('religion') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="blood_group">Blood Group <span class="m-l-5 text-danger">  </span></label>
                            <select class="form-control @error('blood_group') is-invalid @enderror" name="blood_group" id="blood_group">
                                <option value="">Select</option>
                                <option value="A(+ve)">A(+ve)</option>
                                <option value="O(+ve)">O(+ve)</option>
                                <option value="B(+ve)">B(+ve)</option>
                                <option value="AB(+ve)">AB(+ve)</option>
                                <option value="A(-ve)">A(-ve)</option>
                                <option value="O(-ve)">O(-ve)</option>
                                <option value="B(-ve)">B(-ve)</option>
                                <option value="AB(-ve)">AB(-ve)</option>
                            </select>
                            @error('blood_group') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="NID">National identity card number <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('NID') is-invalid @enderror" type="number" name="NID" id="NID" value="{{ old('NID') }}"/>
                            @error('NID') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="persent_add">Persent address <span class="m-l-5 text-danger"> </span></label>
                            <textarea class="form-control @error('persent_add') is-invalid @enderror" rows="4" placeholder="Persent address" name="persent_add" id="persent_add" >{{ old('persent_add') }}</textarea>
                            @error('persent_add') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="permanent_add">Permanent address <span class="m-l-5 text-danger"> </span></label>
                            <textarea class="form-control @error('permanent_add') is-invalid @enderror" rows="4" placeholder="Permanent address" name="permanent_add" id="permanent_add" >{{ old('permanent_add') }}</textarea>
                            @error('permanent_add') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="height">Height <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('height') is-invalid @enderror" type="text" name="height" id="height" value="{{ old('height') }}"/>
                            @error('height') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="nationality">Nationality <span class="m-l-5 text-danger"> * </span></label>
                            <input class="form-control @error('nationality') is-invalid @enderror" type="text" name="nationality" id="nationality" value="{{ old('nationality') }}"/>
                            @error('nationality') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="membership_scosity">Membership scosity <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('membership_scosity') is-invalid @enderror" type="text" name="membership_scosity" id="membership_scosity" value="{{ old('membership_scosity') }}"/>
                            @error('membership_scosity') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label for="department">Department</label>
                            <select class="department form-control" name="department" id="department">
                                <option value="">Select</option>
                                @foreach ($department as $dept)
                                <option value="{{$dept->id}}">{{$dept->department}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="image" class="control-label"> Image</label>
                              <input type="file" class="  @error('image') is-invalid @enderror form-control" id="image" name="image"  />
                              @error('image') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label for="IsActive">Status</label>
                            <select class="IsActive form-control" name="IsActive" id="IsActive">
                                <option value="1">Active</option>
                                <option value="0">Deactive</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="expYear">Experience Year <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('expYear') is-invalid @enderror" type="text" name="expYear" id="expYear" value="{{ old('expYear') }}" placeholder=" 1 (Year)" />
                            @error('expYear') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="rgularStuff">Is He/She Regular Stuff Last (12 Month) ?<span class="m-l-5 text-danger">*</span></label><br>
                            <input class="@error('rgularStuff') is-invalid @enderror" type="radio" name="rgularStuff" id="rgularStuff" value="Yes" /> Yes &nbsp;&nbsp;&nbsp; <input class=" @error('rgularStuff') is-invalid @enderror" type="radio" name="rgularStuff" id="rgularStuff1" value="No" /> No
                            @error('rgularStuff') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label for="signature" class="control-label"> Signature</label>
                              <input type="file" class="  @error('signature') is-invalid @enderror form-control" id="signature" name="signature"  />
                              @error('signature') {{ $message }} @enderror
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="data_12">Signing Date<span class="m-l-5 text-danger"> </span></label>

                            <input class="form-control @error('signing') is-invalid @enderror" type="date" name="signing" id="data_12" value="{{ old('signing') }}"/>

                        </div>

                        <div class="form-group">
                            <label for="Employee_id" class="control-label"> Employee ID</label>
                              <input type="text" class="  @error('Employee_id') is-invalid @enderror form-control" id="Employee_id" name="Employee_id"  value="{{ old('Employee_id') }}"/>
                              @error('signature') {{ $message }} @enderror
                        </div>


                    </div>

                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Persoanl Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>

