@extends('admin.cv.edit')

@section('empInfo')
            <div class="tile">
                <h3 class="tile-title">{{ $subTitle }}</h3>
                @if($data == 1)
                <form action="{{ route('admin.cv.update.empInfo.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                        @foreach ($empInfo as $item)
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="position">Proposed Position for tis Project</label>
                                                <input type="text" class="position form-control" id="position" name="position[]" value="{{ $item->position, old('position') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="department">Department</label>
                                                <select class="department form-control" name="department[]" id="department">
                                                    <option value="{{  $item->department, old('department') }}">{{$item->department}}</option>
                                                    @foreach ($department as $dept)
                                                    <option value="{{$dept->department}}">{{$dept->department}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="countrywork">Countries Of Work Experience</label>
                                                <input type="text" class="countrywork form-control" id="countrywork" name="countrywork[]" value="{{  $item->countrywork, old('countrywork') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="bestwork">Work Undertaken That Best Illustrates Your Capability To Handle This Assignment</label>
                                                <textarea  class='form-control bestwork' id="bestwork"  name='bestwork[]'  cols="30" rows="10">{{ $item->bestwork, old('bestwork') }}</textarea>
                                            </div>

                                        </div>
                            @endforeach
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Employee Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
                @else
                <form action="{{ route('admin.cv.update.empInfo.store') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <input type="hidden" name="empID" value="{{ $empID }}">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="position">Proposed Position for tis Project</label>
                                                <input type="text" class="position form-control" id="position" name="position[]" value="{{old('position') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="department">Department</label>
                                                <select class="department form-control" name="department[]" id="department">
                                                    <option value="">Select</option>
                                                    @foreach ($department as $dept)
                                                    <option value="{{$dept->department}}">{{$dept->department}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="countrywork">Countries Of Work Experience</label>
                                                <input type="text" class="countrywork form-control" name="countrywork[]" id="countrywork" value="{{ old('countrywork') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="bestwork">Work Undertaken That Best Illustrates Your Capability To Handle This Assignment</label>
                                                <textarea  class='form-control bestwork' id="bestwork"  name='bestwork[]'  cols="30" rows="10">{{ old('bestwork') }}</textarea>
                                            </div>

                                        </div>
                    </div>
                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Employee Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.cv.personal') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
                @endif

            </div>
@endsection
@push('scripts')

@endpush
