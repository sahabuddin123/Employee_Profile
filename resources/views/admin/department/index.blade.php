@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')
   
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30 " style="padding:30px;">
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-tags"></i> {{ $pageTitle }}
                </h3>
                <a href="{{ route('admin.department.create') }}" class="btn btn-primary pull-right">Add Department</a>
            <div class="tile">
                <div class="tile-body">
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>
                            <th class="text-center"> # </th>
                            <th class="text-center"> Department Code </th>
                            <th class="text-center"> Department Name  </th>
                            <th class="text-center"> Status  </th>
                            <th class="text-center" style="width:100px; min-width:100px;" class="text-center text-danger"><i class="fa fa-bolt"> </i></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($department as $item)
                            <tr>
                                <td class="text-center">{{ $item->id }}</td>
                                <td class="text-center">{{ $item->code }}</td>
                                <td class="text-center">{{ $item->department }}</td>
                                {{--  <td class="text-center">
                                    @if($item->IsActive == 1)
                                        <button class="btn btn-success"> Active</button>
                                    @else
                                    <button class="btn btn-danger"> Deactive</button>
                                    @endif
                                </td>  --}}
                                <td class="text-center">@if($item->IsActive == 1)
                                    <form action="{{ route('completedUpdate', $item->id) }}" method="POST">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn btn-success" name="IsActive" value="0">Active</button>
                                    </form>
                                @else
                                    <form action="{{ route('completedUpdate', $item->id) }}" method="POST">
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn btn-danger" name="IsActive" value="1">Inactive</button>
                                    </form>
                                @endif
                            </td>

                                <td class="text-center">
                                    <div class="btn-group" role="group" aria-label="Second group">

                                        <a href="{{ route('admin.department.edit', $item->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                                        {{--  <a href="{{ route('admin.department.delete', $item->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i></a>  --}}
                                        <a href="{{ route('admin.link.department.create', $item->id) }}" class="btn btn-sm btn-info"><i class="fa fa-desktop"></i></a>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('scripts')
    <script type="text/javascript" src="{{ asset('backend/js/plugins/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('backend/js/plugins/dataTables.bootstrap.min.js') }}"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
@endpush
