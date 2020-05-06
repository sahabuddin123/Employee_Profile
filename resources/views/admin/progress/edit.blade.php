@extends('admin.app')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 0) + 1;
            var tr = '<tr><td class="no">' + n + '</td>' +
                    '<td><input type="text" class="Dgname form-control @error('Dgname') is-invalid @enderror" name="Dgname[]" value="{{ old('Dgname') }}">@error('Dgname') {{ $message }} @enderror</td>'+
                    '<td><input type="text" class="twork form-control @error('twork') is-invalid @enderror" name="twork[]" value="{{ old('twork') }}">@error('twork') {{ $message }} @enderror</td>'+
                    '<td><input type="text" class="cwork form-control" name="cwork[]" value="{{ old('cwork') }}"></td>'+
                    '<td><input type="date" class="wstart form-control" name="wstart[]" value="{{ old('wstart') }}"></td>'+
                    '<td><input type="date" class="wend form-control" name="wend[]" value="{{ old('wend') }}"></td>'+
                    '<td><input type="button" class="btn btn-danger delete" value="x"></td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });
</script>
@section('title') {{ $pageTitle }} @endsection

@section('content')
    <div class="app-title">
        <div>
            <h3 class="p-b-30"><i class="fa fa-users"></i> {{ $pageTitle }}</h3>
        </div>
    </div>
    @include('admin.partials.flash')
    <div class="row user">
        <div class="col-md-12 mx-auto">
            <div class="user-data m-b-30" style="padding:30px;">
            <div class="tab-content">
                <div class="tab-pane active">
                    <div class="tile">
                        <h3 class="tile-title">{{ $subTitle }}</h3>
                        <form action="{{ route('admin.progress.update') }}" method="POST" role="form" enctype="multipart/form-data">
                            @csrf
                            <div class="tile-body">
                                <label for="title">Select Project</label>
                                <select name="Pid" class="form-control" id="title">
                                    @foreach (App\Models\Project::all() as $item2)
                                        <option value="{{$item2->id}}" @if($item2->id == $Pid) selected @endif>{{$item2->jobno}}</option>
                                    @endforeach
                                </select>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Work Title</th>
                                            <th>Percentis of work</th>
                                            <th>Complete Of Percentis work</th>
                                            <th>Start Date</th>
                                            <th>End Date</th>
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
                                                <input type="text" class="Dgname form-control" name="Dgname[]" value="{{ $item->Dgname, old('Dgname') }}">
                                            </td>
                                            <td>
                                                <input type="text" class="twork form-control" name="twork[]" value="{{  $item->twork, old('twork') }}">
                                            </td>
                                            <td>
                                                <input type="text" class="cwork form-control" name="cwork[]" value="{{ $item->cwork, old('cwork') }}">
                                            </td>
                                            <td>
                                                <input type="date" class="wstart form-control" name="wstart[]" value="{{  $item->wstart, old('wstart') }}">
                                            </td>
                                            <td>
                                                <input type="date" class="wend form-control" name="wend[]" value="{{ $item->wend, old('wend') }}">
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
                                    <input type="button" class="btn btn-info add" value="Add New">
                                </div>
                            </div>
                            <div class="tile-footer">
                               <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Progress Info</button>
                                &nbsp;&nbsp;&nbsp;
                                <a class="btn btn-secondary" href="{{ route('admin.progress.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                            </div>
                        </form>
                    </div>
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
