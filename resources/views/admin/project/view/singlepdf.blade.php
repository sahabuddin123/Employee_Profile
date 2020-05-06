<style>
    table{
       border: 1px solid #ccc;
    }
    table th{
    font-size: 14px;
    font-weight: 700;
    text-align: left;
    }
    </style>
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
    .rounded{

    }
    .A4Size{
        border: 2px solid #ccc;
        padding:5px;
    }
    .row{
        margin-top:7px;
    }
    .page-break {
        page-break-after: always;
    }
    table tr td{
        padding-left:10px;
        background: #fff;


    }
    table tr th{
        padding-left:10px;
        background: #fff;

    }
    </style>
    <div class="main">
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
                                  <div class="personalImage">
                                <?php

                                    $EmpProLink = url("/projectview/emplyee/single/".$personals->slug);

                                ?>
                                <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(100)->generate($EmpProLink)) !!} " style="padding-top:-20px;">

                                                    </div></td>
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
