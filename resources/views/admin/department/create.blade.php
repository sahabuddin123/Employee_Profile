@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')
   
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12 mx-auto">
            <div class="user-data m-b-30" style="padding:30px;">
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-tags"></i> {{ $pageTitle }}
                </h3>
            <div class="tile">
                <h3 class="tile-title"></h3>
            <form action="{{ route('admin.department.store')}}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <div class="form-group">
                            <label class="control-label" for="code"> Department Code <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('code') is-invalid @enderror" type="text" name="code" id="code" placeholder="Please Type " required value="{{ old('code')}}"/>
                            @error('code') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="department"> Department Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('department') is-invalid @enderror" type="text" name="department" id="department" placeholder="Please Type " required value="{{ old('department')}}"/>
                            @error('department') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label for="IsActive">Status</label>
                            <select class="IsActive form-control" name="IsActive" id="IsActive">
                                <option value="1">Active</option>
                                <option value="0">Deactive</option>
                            </select>
                        </div>
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Department</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.department.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
