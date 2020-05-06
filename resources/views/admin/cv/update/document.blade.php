@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(function () {
            $('.add').click(function () {
                var n = ($('.resultbody tr').length - 0) + 1;
                var tr = '<tr><td class="no">' + n + '</td>' +
                        '<td><input type="text" class="filename form-control" name="filename[]" value="{{ old('filename') }}"></td>'+
                        '<td><input type="file" class="file_path form-control" name="file_path[]" value="{{ old('file_path') }}"></td>'+
                        '<td><input type="button" class="btn btn-danger delete" value="x"></td></tr>';
                $('.resultbody').append(tr);
            });
            $('.resultbody').delegate('.delete', 'click', function () {
                $(this).parent().parent().remove();

            });
        });

        $('#save').hide();
        $('#resultbody').hide();
        $('#addmore').on('click', function (){
            $('#addmore').hide();
            $('#resultbody').show();
            $('#save').show();
        });
        $('#delete').on('click', function (){
            $('#addmore').show();
            $('#save').hide();
            $('#resultbody').hide();
        });

    });
</script>
@section('document')
@if($data == null)
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                <form action="{{ route('admin.cv.update.document.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Document Name</th>
                                    <th>Document</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                @endphp
                                @foreach ($document as $item)


                                <tr>
                                    <td class="no">{{ $x }}</td>
                                    <td>
                                        <input type="text" class="filename form-control" name="filename[]" value="{{ $item->filename, old('filename') }}">
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <div class="row">
                                                    @if ($item->file_path != null)
                                                    <div class="col-md-4">
                                                        <figure class="" style="width: 80px; height: auto;">
                                                                <img src="{{ asset('Document/'.$item->file_path) }}" id="PostsImage" class="img-fluid" alt="img">
                                                        </figure>
                                                    </div>
                                                @endif
                                                <div class="col-md-8">
                                                    <input class="form-control @error('file_path') is-invalid @enderror" type="file" id="file_path" name="file_path[]" value="http://localhost:8000/Document/{{$item->file_path}}"/>
                                                    @error('file_path') {{ $message }} @enderror
                                                </div>
                                            </div>
                                        </div>

                                    </td>
                                    <td>
                                        <input type="button" class="btn btn-danger delete" value="x">
                                    </td>
                                </tr>
                                @php
                                 $x++;
                                @endphp

                                @endforeach
                            </tbody>
                        </table>
                        <div class="text-right">
                            <input type="button" class="btn btn-info add" value="Add More">
                        </div>


                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Documents</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
@else
<div class="tile">
    <h3 class="tile-title">{{ $subTitle }}</h3>

        <div class="tile-body">

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Document Name</th>
                        <th>Document</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    @php
                       $x = 1;
                    @endphp
                    @foreach ($document as $item)
                    <form action="{{ route('admin.cv.update.documentsingle.store') }}" method="POST" role="form" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id" value="{{ $item->id }}">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                    <tr>

                        <td>
                            <input type="text" class="filename form-control" name="filename" value="{{ $item->filename, old('filename') }}">
                        </td>
                        <td>
                            <div class="form-group">
                                <div class="row">
                                        @if ($item->file_path != null)
                                        <div class="col-md-4">
                                            <figure class="" style="width: 80px; height: auto;">
                                                    <img src="{{ asset('storage/'.$item->file_path) }}" id="PostsImage" class="img-fluid" alt="img">
                                            </figure>
                                        </div>
                                    @endif
                                    <div class="col-md-8">
                                        <input type="file" class="file_path form-control" name="file_path" value="{{ old('file_path') }}">
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td><button type="submit" class="btn btn-danger">Update</button></td>
                    </tr>
                </form>
                    @php
                     $x++;
                    @endphp

                    @endforeach
                </tbody>

                <form action="{{ route('admin.cv.update.documentadd.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="empID" value="{{ $empID }}">
                    <tbody id="resultbody">
                        <tr>
                            <td>
                                <input type="text" class="filename form-control" name="filename" value="{{ old('filename') }}">
                            </td>
                            <td>
                                <input type="file" class="file_path form-control" name="file_path" value="{{ old('file_path') }}">
                            </td>
                            <td>
                                <input type="button" class="btn btn-danger delete" id="delete" value="x">
                            </td>
                        </tr>
                    </tbody>

            </table>
            <div class="text-right">

                <input type="button" class="btn btn-info" id="addmore" value="Add More">

            </div>


        </div>

        <div class="tile-footer">
            <button class="btn btn-info" id="save" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save New Documents </button>

            &nbsp;&nbsp;&nbsp;
            <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
        </div>
    </form>
</div>
@endif
@endsection
