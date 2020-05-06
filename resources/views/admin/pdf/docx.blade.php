<style>
    table{
    border:2px solid #ccc;
    padding: 10px;
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
        max-height: 120;
        max-width: 80px;
        margin-top: 10px;
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
    </style>
    <div class="main">
        <table style="border:none;width:100%;max-height:50px;">
            <tr>
                <td style="width:30%;border:none;">
                    <?php
                    $docxlink = url('view/Who/SjdFv/Qwrd/'.$link);
                    ?>
                    <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(130)->generate($docxlink)) !!} ">
                </td>
                 <td style="width:70%;border:none;text-align:left;padding:0;margin:0;">
                     @foreach ($data as $item)
                         <h3 style="text-align:left">{{$item->projectname}}</h3>
                         <p>Link Duration : {{ date('d-M-Y', strtotime($item->starttime)) }} to {{ date('d-M-Y', strtotime($item->endtime)) }}</p>
                         <h3 style="padding-left:100px;"><u>Employee List</u> </h3>
                     @endforeach

                 </td>
            </tr>
        </table>
      <div class="text-center">
      </div>
      <?php
      $count = 1;
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
                            <div class="personalImage">
                                <?php

                                if($role == 0){

                                    $EmpProLink =  url('view/emplyee/sing/short/'.$personal->slug.'/'.$link);

                                }
                                elseif($role == 1){
                                    $EmpProLink =  url('view/emplyee/singfQs/full/'.$personal->slug.'/'.$link);

                                }
                                elseif($role == 2){
                                    $EmpProLink =  url('view/emplyee/sindocz/docx/QrPx/'.$personal->slug.'/'.$link);
                                }
                                ?>
                                <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(100)->generate($EmpProLink)) !!} ">
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
    if($count == 4){
        echo "<div class='page-break'></div>";
    }
    $count++;
    }
    ?>
