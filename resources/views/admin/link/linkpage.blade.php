@extends('admin.app')
@section('title') {{ "Link Page" }} @endsection
@section('content')

    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30">
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-link"></i> {{ "List Of Link Page" }}
                </h3>
                <div class="p-r-30">
                    <a href="{{ route('admin.linkcreate.index') }}" class="btn btn-primary pull-right">Create a new Link</a>
                </div>

            <div class="tile" >
                <div class="tile-body" style="width:100%;overflow-x: scroll;">
                    <table class="table table-hover table-bordered" id="sampleTable" >
                        <thead>
                        <tr>

                            <th> # </th>
                            <th> Project Name </th>
                            <th> Link Start </th>
                            <th> Link End </th>
                            <th> Link</th>
                            <th style="width:100px; min-width:100px;" class="text-center text-danger"><i class="fa fa-bolt"> </i></th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                                $count = 1;
                            ?>
                        @foreach($data as $item)
                            <tr>
                                <td>{{ $count }}</td>
                                <td>{{ $item->projectname }}</td>
                                <td>{{ $item->starttime }}</td>
                                <td>
                                    {{ $item->endtime }}
                                </td>
                                <td>
                                {{ url('/view/Who/SjdFv/Qwrd/'.$item->link) }}
                                </td>

                                <td class="text-center">
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <a href="{{ route('admin.link.show', $item->link) }}" class="btn btn-sm btn-info">View</a>
                                         <a href="{{ route('admin.link.edit', $item->id) }}" class="btn btn-sm btn-success">Edit</a>
                                    </div>
                                </td>
                            </tr>
                            <?php
                            $count++;
                            ?>
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
