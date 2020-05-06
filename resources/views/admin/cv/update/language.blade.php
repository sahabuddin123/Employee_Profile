@extends('admin.cv.edit')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.add').click(function () {
            var n = ($('.resultbody tr').length - 0) + 1;
            var tr = '<tr><td class="no">' + n + '</td>' +
                    '<td><input type="text" class="LangName form-control @error('LangName') is-invalid @enderror" name="LangName[]" value="{{ old('LangName') }}">@error('LangName') {{ $message }} @enderror</td>'+
                    '<td><select class="spoken form-control @error('spoken') is-invalid @enderror" name="spoken[]"><option value="Basic">Basic</option><option value="Conversant">Conversant</option><option value="Proficient">Proficient</option><option value="Fluent">Fluent</option></select>@error('spoken') {{ $message }} @enderror</td>'+
                    '<td><select class="reading form-control @error('reading') is-invalid @enderror" name="reading[]"><option value="Basic">Basic</option><option value="Conversant">Conversant</option><option value="Proficient">Proficient</option><option value="Fluent">Fluent</option></select>@error('reading') {{ $message }} @enderror</td>'+
                    '<td><select class="writin form-control @error('writin') is-invalid @enderror" name="writin[]"><option value="Basic">Basic</option><option value="Conversant">Conversant</option><option value="Proficient">Proficient</option><option value="Fluent">Fluent</option></select>@error('writin') {{ $message }} @enderror</td>'+
                    '<td><input type="button" class="btn btn-danger delete" value="x"></td></tr>';
            $('.resultbody').append(tr);
        });
        $('.resultbody').delegate('.delete', 'click', function () {
            $(this).parent().parent().remove();
        });
    });
</script>
@section('language')
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                <form action="{{ route('admin.cv.update.language.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Language Name</th>
                                    <th>Speaking</th>
                                    <th>Reading</th>
                                    <th>Writting</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody class="resultbody">
                                @php
                                   $x = 1;
                                @endphp
                                @foreach ($language as $item)


                                <tr>
                                    <td class="no">{{ $x }}</td>
                                    <td>
                                        <input type="text" class="LangName form-control" name="LangName[]" value="{{ $item->LangName, old('LangName') }}">
                                    </td>
                                    <td>
                                        <select class="spoken form-control @error('spoken') is-invalid @enderror" name="spoken[]">
    <option value="Basic" @if ($item->spoken == "Basic") selected @endif>Basic</option>

    <option value="Conversant" @if ($item->spoken == "Conversant") selected @endif>Conversant</option>

    <option value="Proficient" @if ($item->spoken == "Proficient") selected @endif>Proficient</option>
    
    <option value="Fluent" @if ($item->spoken == "Fluent") selected @endif>Fluent</option>
</select>
@error('spoken') {{ $message }} @enderror
                                    </td>
                                    <td>
                                        <select class="reading form-control @error('reading') is-invalid @enderror" name="reading[]">
    <option value="Basic" @if ($item->reading == "Basic") selected @endif>Basic</option>

    <option value="Conversant" @if ($item->reading == "Conversant") selected @endif>Conversant</option>

    <option value="Proficient" @if ($item->reading == "Proficient") selected @endif>Proficient</option>
    
    <option value="Fluent" @if ($item->reading == "Fluent") selected @endif>Fluent</option>
</select>
@error('reading') {{ $message }} @enderror
                                    </td>
                                    <td>
                                        
                                        <select class="writin form-control @error('writin') is-invalid @enderror" name="writin[]">
    <option value="Basic" @if ($item->writin == "Basic") selected @endif>Basic</option>

    <option value="Conversant" @if ($item->writin == "Conversant") selected @endif>Conversant</option>

    <option value="Proficient" @if ($item->writin == "Proficient") selected @endif>Proficient</option>

    <option value="Fluent" @if ($item->writin == "Fluent") selected @endif>Fluent</option>
</select>
@error('writin') {{ $message }} @enderror
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
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Language Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>
@endsection
