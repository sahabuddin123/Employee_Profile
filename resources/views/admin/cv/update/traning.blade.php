@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 0) + 1;
            var tr = '<tr><td class="no">' + n + '</td>' +
                    '<td><input type="text" class="TraningTitle form-control" name="TraningTitle[]" value="{{ old('TraningTitle') }}"></td>'+
                    '<td><input type="text" class="duration form-control" name="duration[]" value="{{ old('duration') }}"></td>'+
                    '<td><input type="button" class="btn btn-danger delete" value="x"></td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });
</script>
@section('traning')
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                <form action="{{ route('admin.cv.update.traning.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Traning Name</th>
                                    <th>Duration</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                @endphp
                                @foreach ($traning as $item)


                                <tr>
                                    <td class="no">{{ $x }}</td>
                                    <td>
                                        <input type="text" class="TraningTitle form-control" name="TraningTitle[]" value="{{ $item->TraningTitle, old('TraningTitle') }}">
                                    </td>
                                    <td>
                                        <input type="text" class="duration form-control" name="duration[]" value="{{  $item->duration, old('duration') }}">
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
                            <input type="button" class="btn btn-info add" value="Add New Item">
                        </div>


                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Traning Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
@endsection
