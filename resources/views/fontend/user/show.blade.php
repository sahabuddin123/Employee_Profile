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
    $personal = App\Models\Personalinfo::where('id',$id)->first();
    $employeeinfo = App\Models\Employeeinfo::where('empID',$id)->first();
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
                      <tr>
                          <th rowspan="4" width="20%"><div class="personalImage">
                              @if(isset($personal->image))
                              <a data-magnify="gallery" data-src="" data-caption="{{ $personal->name}}" data-group="a"
                                href="{{ asset('public/storage/'.$personal->image)}}">
                                <img src="{{ asset('public/storage/'.$personal->image)}}" class="rounded  img-thumbnail" alt="..." width="120">
                              </a>
                              @else
                              <img src="" class="rounded  img-thumbnail" alt="..." width="120"alt="!">
                              @endif
                            </div></th>
                        <th width="30%">PROPOSED POSITION <br> FOR THIS PROJECT</th>
                        <th width="30%">@if(isset($employeeinfo->position)){{ $employeeinfo->position }} @else @endif</th>

                        <th rowspan="4" width="20%">
                          <div class="personalImage d-flex">
                              <?php
                                        if($role == 0){

                                            $EmpProLink =  url('view/emplyee/sing/short/'.$personal->slug.'/'.$link);
                                ?>
                                            <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(100)->generate($EmpProLink)) !!} ">
                                <?php
                                        }
                                        elseif($role == 1){

                                ?>
                                            <a href="{{ url('view/emplyee/singfQs/full/'.$personal->slug.'/'.$link) }}" class="btn btn-info">See Full CV</a>
                                <?php
                                        }
                                        elseif($role == 2){

                                ?>
                                    <a href="{{ url('view/emplyee/singfQs/full/'.$personal->slug.'/'.$link) }}" class="btn btn-info">See Full CV</a> &nbsp;&nbsp;
                                    <a href="{{ url('view/emplyee/sindocz/docx/'.$personal->slug.'/'.$link) }}" class="btn btn-info">See Docx </a>
                                <?php
                                        }

                              ?>

                          </div>
                      </th>
                      </tr>
                      <tr>
                        <th>NAME OF STAFF</th>
                        <th>{{ $personal->name }}</th>
                      </tr>
                      <tr>
                        <th>WORK EXPERIENCE</th>

                        <th>{{ $personal->expYear }}</th>
                      </tr>
                      <tr>
                        <th>NATIONALITY</th>
                        <th>{{ $personal->nationality  }}</th>
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



