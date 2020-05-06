@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')
    
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="user-data m-b-30" style="padding:30px;">
                <h3 class="m-b-30">
                    <i class="fa fa-tags"></i> {{ $pageTitle }}
                </h3>
            <div class="tile">

                <form action="{{ route('admin.department.update') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <div class="form-group">
                            <input type="hidden" name="id" value="{{ $department->id }}">
                            <label class="control-label" for="title"> Department Code <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('code') is-invalid @enderror" type="text" name="code" id="title" placeholder="Please Type " value="{{ old('code', $department->code) }}"/>
                            @error('code') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="title"> Department Name <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('department') is-invalid @enderror" type="text" name="department" id="title" placeholder="Please Type " value="{{ old('department', $department->department) }}"/>
                            @error('department') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label for="IsActive">Status</label>
                            <select class="IsActive form-control" name="IsActive" id="IsActive">
                                <option value="1" @if($department->IsActive == 1) selected @endif>Active</option>
                                <option value="0" @if($department->IsActive == 0) selected @endif>Deactive</option>
                            </select>
                        </div>

                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Department</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.department.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@push('scripts')
<!-- <script src="https://cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script> -->
 <script src="{{ asset('backend/ckeditor/ckeditor.js') }}"></script>
<script>
  var options = {
    filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
    filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
    filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
    filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
  };
</script>
<script>
    CKEDITOR.replace( 'editor', options );
    CKEDITOR.replace( 'editor1', options );
</script>
@endpush
