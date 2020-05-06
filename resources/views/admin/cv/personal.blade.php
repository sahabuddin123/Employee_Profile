@extends('admin.app')
@section('title') {{ $pageTitle }} @endsection
@section('content')

    
    @include('admin.partials.flash')
    <div class="row">
        <div class="col-md-12">
            <div class="user-data m-b-30 p-30">
                <h3 class="title-3 m-b-30">
                    <i class="fa fa-briefcase"></i> {{ $pageTitle }}
                </h3>
                <a href="{{ route('admin.cv.create') }}" class="btn btn-primary pull-right">Add New Employee</a>
            <div class="tile">
                <div class="tile-body">
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>

                            <th> # </th>
                            <th> Name </th>
                            <th> Department </th>
                            <th> Date Of Birth </th>
                            <th class="text-center"> Status </th>
                            <th style="width:100px; min-width:100px;" class="text-center text-danger"><i class="fa fa-bolt"> </i></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($personals as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->name }}</td>
                                <td><?php $data = App\Models\Department::where('id', $item->department)->first();?>{{ $data['department'] }}</td>
                                <td>
                                    @php
                                       $date = date('d-M-Y',strtotime($item->dob));
                                    @endphp
                                    {{ $date }}
                                </td>
                                {{--  <td class="text-center">
                                    @if($item->IsActive == 0)
                                        <button class="btn btn-danger">Deactive</button>
                                    @elseif($item->IsActive == 1)
                                        <button  class="btn btn-success">Active</button>
                                    @endif
                                </td>  --}}
                                <td class="text-center">@if($item->IsActive == 1)
                                        <form action="{{ route('completedUpdate.emp', $item->id) }}" method="POST">
                                            {{ csrf_field() }}
                                            <button type="submit" class="btn btn-success" name="IsActive" value="0">Active</button>
                                        </form>
                                    @else
                                        <form action="{{ route('completedUpdate.emp', $item->id) }}" method="POST">
                                            {{ csrf_field() }}
                                            <button type="submit" class="btn btn-danger" name="IsActive" value="1">Inactive</button>
                                        </form>
                                    @endif
                                </td>
                                <td class="text-center">
                                    <div class="btn-group" role="group" aria-label="Second group">

                                        <a href="{{ route('admin.cv.update.personal', $item->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                                        <a href="{{ route('admin.profile.full', $item->id) }}" class="btn btn-sm btn-info"><i class="fa fa-desktop"></i></a>
                                        <button type="button" class="btn btn-success btn-sm view_data" id="{{ $item->id }}"><i class='fa fa-meh-o' aria-hidden='true'></i></button>
                                        
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
    <link href="{{asset('backend/lightbox/css/jquery.magnify.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack-helper.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/docs.css')}}" rel="stylesheet">

    <!-- view Modal -->
 <div class="modal fade" id="phoneModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true" style="margin-top: 100px;">
   <div class="modal-dialog modal-lg">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
       </div>
       <div class="modal-body">
        <!-- Place to print the fetched phone -->
         <div id="phone_result"></div>
       </div>
       <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       </div>
     </div>
   </div>
 </div>
@endsection
@push('scripts')
<script type="text/javascript" src="{{ asset('backend/js/plugins/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('backend/js/plugins/dataTables.bootstrap.min.js') }}"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>


<!-- jQuery JS CDN -->
    <script type="text/javascript">
     // Start jQuery function after page is loaded
        $(document).ready(function(){
         // Start jQuery click function to view Bootstrap modal when view info button is clicked
            $('.view_data').click(function(){
             // Get the id of selected phone and assign it in a variable called phoneData
                var phoneData = $(this).attr('id');
                // Start AJAX function
                $.ajax({
                 // Path for controller function which fetches selected phone data
                    url: "{{ route('showSingle') }}",
                    // Method of getting data
                    method: "GET",
                    // Data is sent to the server
                    data: {phoneData:phoneData},
                    // Callback function that is executed after data is successfully sent and recieved
                    success: function(data){
                     // Print the fetched data of the selected phone in the section called #phone_result 
                     // within the Bootstrap modal
                     //console.log(data);
                        $('#phone_result').html(data);
                        // Display the Bootstrap modal
                        $('#phoneModal').modal('show');
                    }
             });
             // End AJAX function
         });
     });  
    </script>
    
    <script>
window.jQuery || document.write('<script src="{asset('+'backend/js/vendor/jquery-1.12.4.min.js'+')}}"><\/script>');
</script>
<script src="{{asset('backend/lightbox/js/jquery.magnify.js')}}"></script>
<script>
    $(document).ready(function(){
        $('#printPage').on('click', function(){
            window.print();
        });
    });
</script>
<script>
function myFunction() {
  var copyText = document.getElementById("myInput");
  copyText.select();
  copyText.setSelectionRange(0, 99999);
  document.execCommand("copy");
  
  var tooltip = document.getElementById("myTooltip");
  tooltip.innerHTML = "Copied: " + copyText.value;
}

function outFunc() {
  var tooltip = document.getElementById("myTooltip");
  tooltip.innerHTML = "Copy to clipboard";
}
</script>

@endpush
