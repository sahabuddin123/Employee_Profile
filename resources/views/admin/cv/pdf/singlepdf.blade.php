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
                                $EmpProLink = url("/view/emplyee/single/".$personal['slug']);
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
