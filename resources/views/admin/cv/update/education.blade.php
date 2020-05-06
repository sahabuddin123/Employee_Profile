@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 0) + 1;
            var tr = '<tr><td class="no">' + n + '</td>' +
                    '<td><input type="text" class="ExmTitle form-control @error('ExmTitle') is-invalid @enderror" name="ExmTitle[]" value="{{ old('ExmTitle') }}">@error('ExmTitle') {{ $message }} @enderror</td>'+
                    '<td><input type="text" class="board form-control @error('board') is-invalid @enderror" name="board[]" value="{{ old('board') }}">@error('board') {{ $message }} @enderror</td>'+
                    '<td><input type="text" class="passing_year form-control" name="passing_year[]" value="{{ old('passing_year') }}"></td>'+
                    '<td><input type="text" class="group form-control" name="group[]" value="{{ old('group') }}"></td>'+
                    '<td><input type="text" class="CGPA form-control" name="CGPA[]" value="{{ old('CGPA') }}"></td>'+
                    '<td><input type="button" class="btn btn-danger delete" value="x"></td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });
</script>
@section('education')
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                <form action="{{ route('admin.cv.update.education.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Exam name</th>
                                    <th>Board / University</th>
                                    <th>Passing year</th>
                                    <th>Dpt./Group</th>
                                    <th>CGPA / GPA</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                @endphp
                                @foreach ($educations as $item)


                                <tr>
                                    <td class="no">{{ $x }}</td>
                                    <td>
                                        <input type="text" class="ExmTitle form-control" name="ExmTitle[]" value="{{ $item->ExmTitle, old('ExmTitle') }}">
                                    </td>
                                    <td>
                                        <input type="text" class="board form-control" name="board[]" value="{{  $item->board, old('board') }}">
                                    </td>
                                    <td>
                                        <input type="text" class="passing_year form-control" name="passing_year[]" value="{{ $item->passing_year, old('passing_year') }}">
                                    </td>
                                    <td>
                                        <input type="text" class="group form-control" name="group[]" value="{{  $item->group, old('group') }}">
                                    </td>
                                    <td>
                                        <input type="text" class="CGPA form-control" name="CGPA[]" value="{{ $item->CGPA, old('CGPA') }}">
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
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Education Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
@endsection
