@extends('fontend.app')
@section('title') {{ "Employee Short CV" }} @endsection
@section('content')
@if($cvlink == 0)
<div class="row">
    <div class="col-md-12 col-sm-4 col-lg-12 ">
      <div class="user-data" style="padding:0px;">
      <div class="tile" style="padding:30px;">
        <div class="tile-body">
          <div class="card-body border">
            <div class="A4Size">
              <!--PersonalInfo Section-->
              <section>
<link href="{{asset('backend/lightbox/css/jquery.magnify.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack-helper.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/docs.css')}}" rel="stylesheet">
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
                    <div class="clear"></div>
                  </section>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
  @else
      <h1 class='text-center justify-center'>Access Denied</h1>
  @endif
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
