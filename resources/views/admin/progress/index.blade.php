@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30" style="padding:30px;">
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-briefcase"></i> {{ $pageTitle }}
                </h3>
                <a href="{{ route('admin.progress.create') }}" class="btn btn-primary pull-right">Add New Progress</a>
            <div class="tile">
                <div class="tile-body">
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>
                            <th> # </th>
                            <th> JOB NO </th>
                            <th style="width:100px; min-width:100px;" class="text-center text-danger"><i class="fa fa-bolt"> </i></th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php
                            $k = 1;
                            ?>
                        @foreach($personals as $item)
                            <tr>
                                <td>{{ $k }}</td>
                                <td>
                                <?php
                                    $job = App\Models\Project::where('id', $item->Pid)->first();
                                ?>
                                    {{ $job['jobno'] }}</td>
                                <td class="text-center">
                                    <div class="btn-group" role="group" aria-label="Second group">
                                        <a href="{{ route('admin.progress.edit', $item->Pid) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <?php
                            $k++;
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
