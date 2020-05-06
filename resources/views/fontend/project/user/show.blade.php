@extends('fontend.app')
@section('title') {{ "USER VIEW" }} @endsection
@section('content')
<style>
ul li{
list-style: square;
}
.personalMian{
display: flex;
}
.emp_exp table{
width: 100% !important;
}
</style>
<link href="{{asset('backend/lightbox/css/jquery.magnify.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack-helper.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/docs.css')}}" rel="stylesheet">

<?php
foreach($id as $key => $val){
    $id = $val;
    $personals = App\Models\Project::where('id',$id)->first();
?>
    <div class="row">
      <div class="col-md-12 col-sm-4 col-lg-12">
        <div class="tile">
          <div class="tile-body">
            <div class="card-body border">
              <div class="A4Size">
                <!--PersonalInfo Section-->
                <section>
                  <article>
                    <table width="100%" cellpadding="5">
                        <tr >
                          <th colspan="4" align="left">
                            <b style="text-transform:uppercase;">Project Name : {{ $personals->ptitle }}</b>
                          </th>
                        </tr>

                        <tr >
                          <td rowspan="5" width="15%">
                              <div class="personalImage" >
                                                    @if(isset($personals->image))
                                                    <a data-magnify="gallery" data-src="" data-caption="{{ $personals->name}}" data-group="a"
                                                      href="{{ asset('public/storage/'.$personals->image)}}">
                                                      <img src="{{ asset('public/storage/'.$personals->image)}}" class="rounded  img-thumbnail" alt="..." width="85">
                                                    </a>
                                                    @else
                                                    <img src="" class="rounded  img-thumbnail" alt="..." width="120"alt="!">
                                                    @endif
                                                  </div>
                            </td>
                          <td width="30%">
                              <b>Start Date : </b>&nbsp;&nbsp;<?php echo date('d-M-Y', strtotime($personals->PStartDate)) ?></td>
                          <td width="40%">
                              <b>Completion Date :</b>&nbsp;&nbsp;@if($personals->PCompleteD != null)<?php echo date('d-M-Y', strtotime($personals->PCompleteD)) ?>@else {{"Continue"}} @endif</td>
                          <td rowspan="5">
                            <div class="personalImage d-flex">
                                <?php
                                          if($role == 0){

                                              $EmpProLink =  url('projectview/emplyee/sing/short/'.$personals->slug.'/'.$link);
                                  ?>
                                              <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(100)->generate($EmpProLink)) !!} ">
                                  <?php
                                          }
                                          elseif($role == 1){
                                  ?>
                                              <a href="{{ url('projectview/emplyee/singfQs/full/'.$personals->slug.'/'.$link) }}" class="btn btn-info">See Full</a>
                                  <?php
                                    }
                                ?>
                                <a href="{{ route('admin.project.pies', $personals->slug) }}" class="btn btn-info">See Progress</a>

                            </div>
                             </td>
                        </tr>
                         <tr>

                          <td><b>Name of Clients :</b> </td>
                          <td><b>{{$personals->Cname}}</b></td>
                        </tr>
                        <tr>
                          <td><b>Job No. :</b></td>
                          <td> <b>{{ $personals->jobno }}</b></td>
                        </tr>
                        <tr>
                          <td><b>Team Leader :</b></td>
                          <td><b>{{ $personals->NSPstaffN }}</b></td>
                        </tr>

                      </table>
                  </article>
                </section>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php
}

?>
@endsection
@push('scripts')
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

@endpush



