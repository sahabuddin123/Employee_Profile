@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 1) + 1;
            var tr = '<tr>' +
                    '<td>'+
                        '<div class="card-body">'+
                            '<div class="form-group">'+
                                '<label for="refname">Name</label>'+
                                '<input type="text" class="refname form-control" id="refname" name="refname[]" value="{{ old('refname') }}">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="position">Position</label>'+
                                '<input type="text" class="position form-control" id="position" name="position[]" value="{{ old('position') }}">'+
                            '</div>'+
                            '<div class="form-group">'+
                                ' <label for="phone">Phone No</label>'+
                                 '<input type="text" class="phone form-control" name="phone[]" value="{{  old('phone') }}">'+
                            ' </div>'+
                             '<div class="form-group">'+
                                ' <label for="ComName">Company Name</label>'+
                                 '<input type="text" class="ComName form-control" name="ComName[]" id="ComName" value="{{ old('ComName') }}">'+
                            ' </div>'+
                            '<div class="form-group">'+
                                '<label for="Details">Address</label>'+
                                '<textarea  class="form-control Details" id="Details" name="Details[]"></textarea>'+
                                '</div>'+
                            '</div>'+
                            '<div class="text-right">'+
                               ' <input type="button" class="btn btn-danger delete" value="Remove">'+
                            '</div>'+
                       ' </div>'+
                   ' </td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });

</script>
@section('reference')
    <div class="tile">
        <h3 class="tile-title">{{ $subTitle }}</h3>
            <form action="{{ route('admin.cv.update.reference.store') }}" method="POST" role="form" enctype="multipart/form-data">
                @csrf
                <div class="tile-body">
                    <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table" width="100%">
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                @endphp
                                @foreach ($reference as $item)
                                <tr>
                                    <td>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="refname">Name</label>
                                                <input type="text" class="refname form-control" id="refname" name="refname[]" value="{{ $item->refname, old('refname') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="position">Position</label>
                                                <input type="text" class="position form-control" id="position" name="position[]" value="{{  $item->position, old('position') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">Phone No</label>
                                                <input type="text" class="phone form-control" name="phone[]" value="{{  $item->phone, old('phone') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="ComName">Company Name</label>
                                                <input type="text" class="ComName form-control" id="ComName" name="ComName[]" value="{{  $item->ComName, old('ComName') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="Details">Address</label>
                                                <textarea  class='form-control Details' id="Details" name='Details[]'>{{ $item->Details, old('Details') }}</textarea>
                                            </div>
                                            <div class="text-right">
                                                <input type="button" class="btn btn-danger delete" value="Remove">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                @php
                                 $x++;
                                @endphp
                                @endforeach
                            </tbody>
                        </table>
                        <div class="text-right">
                            <input type="button" class="btn btn-info add" id="addMore" rel="1" value="Add More">
                        </div>
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Reference Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>

            </div>
@endsection
@push('scripts')
@endpush
