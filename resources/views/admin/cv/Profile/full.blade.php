@extends('admin.app')
@section('title') {{ "Employee Full CV" }} @endsection
@section('content')
<style>
ul li{
}
.personalMian{
display: flex;
}
.emp_exp table{
width: 100% !important;
}
</style>
<style>
  ul li{
  margin-left: 20px !important;
  }
  .personalMian{
  display: flex;
  }
  .emp_exp table{
  width: 100% !important;
  }
  table tr td{
      padding-left:10px;
  }
  table tr th{
      padding-left:10px;
  }
  </style>
<link href="{{asset('backend/lightbox/css/jquery.magnify.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/snack-helper.css')}}" rel="stylesheet">
<link href="{{asset('backend/lightbox/css/docs.css')}}" rel="stylesheet">
{{--  print_r($personal);
print_r($education);
print_r($language);
print_r($employeeinfo);
print_r($reference);
print_r($skill);
print_r($traning);
print_r($workexpreance);
print_r($document);  --}}
<div class="app-title" id="ides1">
  <div>
    <h1><i class="fa fa-tags">Profile of {{ $personal->name }}</i></h1>
    <p></p>
  </div>
</div>
<div class="row">
  <div class="col-md-12 col-sm-4 col-lg-12">
    <div class="user-data" style="padding-top:0px;">
      <div class="tile p-30">
      <div class="tile-body">
        <h4 class="text-center">ID:#EM{{ $personal->id}} <span>Curriculum Vitea(CV)for Each Personal Professional Staff</span></h4>
        <div class="text-right" id="pnt">
           <button  class="printPage" id="printPage">Print</button>
           {{--  <a href="javascript:window.print();">Print me</a>  --}}
        </div>
        <div class="card-body border">
          <div class="A4Size">
            <!--PersonalInfo Section-->
            <section>
              <article>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="20%">PROPOSED POSITION <br> FOR THIS PROJECT</th>
                    <th width="60%">@if(isset($employeeinfo->position)){{ $employeeinfo->position }} @else @endif</th>
                    <th rowspan="4" width="20%"><div class="personalImage">
                      @if(isset($personal->image))
                      <a data-magnify="gallery" data-src="" data-caption="{{ $personal->name}}" data-group="a"
                        href="{{ asset('public/storage/'.$personal->image)}}">
                        <img src="{{ asset('public/storage/'.$personal->image)}}" class="rounded  img-thumbnail" alt="..." width="150">
                      </a>
                      @else
                      <img src="" class="rounded  img-thumbnail" alt="..." width="150"alt="!">
                      @endif
                    </div></th>
                  </tr>
                  <tr>
                    <th>NAME OF STAFF</th>
                    <th>{{ $personal->name }}</th>
                  </tr>
                  <tr>
                    <th>DATE OF BIRTH</th>
                    @php
                    $dob = date('d-M-Y', strtotime($personal->dob));
                    @endphp
                    <th>{{ $dob }}</th>
                  </tr>
                  <tr>
                    <th>NATIONALITY</th>
                    <th>{{ $personal->nationality  }}</th>
                  </tr>
                </table>
                <hr>
                <table width="80%" cellpadding="10">
                  <tr >
                    <th width="20%">MEMBERSHIP IN <br>PROFESSIONAL <br>SOCIETIES</th>
                    <th width="60%">{{ $personal->membership_scosity }}</th>
                  </tr>
                </table>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="20%">EDUCATION</th>
                    <th width="80%">
                      <table width="100%" border="1" cellpadding="10">
                        <tr>
                          <th>Name of Exam</th>
                          <th>Board/Univercity</th>
                          <th>Year of Passing</th>
                          <th>Group/Department</th>
                          <th>CGPA/GPA</th>
                        </tr>
                        @foreach ($education as $item)
                        <tr>
                          <th>{{ $item->ExmTitle }}</th>
                          <th>{{ $item->board }}</th>
                          <th>{{ $item->passing_year }}</th>
                          <th>{{ $item->group }}</th>
                          <th>{{ $item->CGPA }}</th>
                        </tr>
                        @endforeach
                      </table>
                    </th>
                  </tr>
                </table>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="20%">OTHER TRAINING</th>
                    <th width="80%">
                      <ul>
                        @foreach ($traning as $item)
                        <li>{{$item->TraningTitle}} &nbsp;&nbsp;( {{$item->duration}} )</li>
                        @endforeach
                      </ul>
                    </th>
                  </tr>
                </table>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="20%">LANGUAGES & <br>DEGREE OF <br>PROFICIENCY</th>
                    <th width="80%">
                      <table width="100%" border="1" cellpadding="10">
                        <tr>
                          <th>Language</th>
                          <th>Speaking</th>
                          <th>Reading</th>
                          <th>Writing</th>
                        </tr>
                        @foreach ($language as $item)
                        <tr>
                          <th>{{ $item->LangName }}</th>
                          <th>{{ $item->spoken }}</th>
                          <th>{{ $item->reading }}</th>
                          <th>{{ $item->writin }}</th>
                        </tr>
                        @endforeach
                      </table>
                    </th>
                  </tr>
                </table>
                <table width="80%" cellpadding="10">
                  <tr >
                    <th width="20%">COUNTRIES OF <br> WORK EXPERIENCE</th>
                    <th width="60%">@if(isset($employeeinfo->countrywork)){{ $employeeinfo->countrywork }}@endif</th>
                  </tr>
                </table>
                <hr>
                <table width="80%" cellpadding="10">
                  <tr >
                    <th width="20%">EMPLOYEMENT RECORDS</th>
                  </tr>
                </table>
                <div class="container">
                  @php
                  $coun = 1;
                  @endphp
                  @foreach ($workexpreance as $item)
                  <table cellpadding="10">
                    <tr>
                      <th width="50%">{{ $coun }}. {{ $item->company_name }}</th>
                      <td width="25%">From</td>
                      <td width="25%">To</td>
                    </tr>
                    <tr>
                      <td>{{ $item->position }}</td>
                      @php
                      $from = date('d-M-Y', strtotime($item->from));
                      @endphp
                      <td>{{ $from }}</td>
                      @if(isset($item->to))
                      @php
                      $to = date('d-M-Y', strtotime($item->to));
                      @endphp
                      <td>{{ $to }}</td>
                      @else
                      <td>{{ "Continue" }}</td>
                      @endif
                    </tr>
                  </table>
                  @if (isset($item->project_name))
                  <div class="emp_exp">
                    {!! $item->project_name !!}
                  </div>
                  @endif
                  @php
                  $coun ++;
                  @endphp
                  @endforeach
                </div>
                <hr>
                <table width="100%" cellpadding="10">
                  <tr>
                    <td width="50%">WORK UNDERTAKEN THAT BEST ILLUSTRATES YOUR <br> CAPABILITY TO HANDEL THIS ASSIGNMENT</td>
                    <th width="50%">@if(isset($employeeinfo->bestwork)){{ $employeeinfo->bestwork }}@endif</th>
                  </tr>
                </table>
                <hr>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="100%">COMPUTER SKILL</th>
                  </tr>
                </table>
                <div class="container">
                  <table width="100%" cellpadding="10">
                    <tr>
                      <th width="80%">
                        <ul>
                          @foreach ($skill as $item)
                          <li>{{$item->skillname}}.</li>
                          @endforeach
                        </ul>
                      </th>
                    </tr>
                  </table>
                </div>
                <hr>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="100%">Personal Details for Admin</th>
                  </tr>
                </table>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="30%">Name</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->name }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Father</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->father_name }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Mother</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->mother_name }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Brother</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->brother }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Sister</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->sister }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Date of Birth</th>
                    <th width="5%"> : </th>
                    @php
                    $dob = date('d-M-Y', strtotime($personal->dob));
                    @endphp
                    <th>{{ $dob }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Religion</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->religion }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Height</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->height }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Blood Group</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->blood_group }}</th>
                  </tr>
                  <tr>
                    <th width="30%">National ID Card No</th>
                    <th width="5%"> : </th>
                    <th width="65%">{{ $personal->NID }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Permanent Address</th>
                    <th width="5%"> : </th>
                    <th width="70%">{{ $personal->permanent_add }}</th>
                  </tr>
                  <tr>
                    <th width="30%">Present Address</th>
                    <th width="5%"> : </th>
                    <th width="70%">{{ $personal->persent_add }}</th>
                  </tr>
                </table>
                <hr>
                <table width="100%" cellpadding="10">
                  <tr>
                    <th width="100%">Reference Details</th>
                  </tr>
                  <tr>
                    @foreach ($reference as $item)
                    <table width="100%" style="margin-left:10px;">
                      <tr>
                        <th>{{ $item->refname }}</th>
                      </tr>
                      <tr>
                        <td>{{ $item->position }}</td>
                      </tr>
                      <tr>
                        <th>{{ $item->ComName }}</th>
                      </tr>
                      <tr>
                        <td>{{ $item->Details }}</td>
                      </tr>
                      <tr>
                        <td>Phone : {{ $item->phone }}</td>
                      </tr>
                    </table><br>
                    @endforeach
                  </tr>
                </table>
                <hr>
                <table>
                    <tr>
                        <th>CERTIFICATION <i>[Do not amend this Certification].</i></th>
                    </tr>
                    <tr>
                       <td>
                        <p>

                            I, the undersigned, certify that (i) I was not a former employee of the Client immediately before the submission of this proposal, and (I i) to the best of my knowledge and belief, this bio-data correctly describes myself, my qualifications, and my experience. I understand that any wilful misstatement described herein may lead to my disqualification or dismissal, if engaged.
                        </p>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                I have been employed by <i>[@if(isset($employeeinfo->position)){{ $employeeinfo->position }} @else @endif]</i> continuously for the last twelve (12) months as regular full time staff. Indicate “Yes” or “No” in the boxes below:
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>

                                <input type="checkbox"  @if($personal->rgularStuff == "Yes") checked @endif>&nbsp;Yes &nbsp;
                                <input type="checkbox"  @if($personal->rgularStuff == "No") checked @endif>&nbsp;No

                        </td>
                    </tr>
                </table>
                <table align="right" border="1">
                    <tr >
                        <th align="center">
                            <a data-magnify="gallery" data-src="" data-caption="{{ $personal->name}}" data-group="a"
                                href="{{ asset('public/storage/'.$personal->signature)}}">
                                <img src="{{ asset('public/storage/'.$personal->signature)}}" class="rounded  img-thumbnail" alt="..." width="150">
                              </a>
                        </th>

                    </tr>
                    <tr align="center">
                        <th align="center">
                            <?php
                            $signing = date('d-m-Y', strtotime($personal->signing));
                            ?>
                            {{ $signing }}
                        </th>
                    </tr>
                </table>
                <br>
                 <br>
                  <br>
                   <br>
                 <br>
                  <br>
                <hr>
                <table width="100%" cellpadding="10">
                    <tr>
                      <th width="100%">Documents</th>
                    </tr>
                </table>
                <table width="100%" cellpadding="10">
                    @foreach ($document as $item)
                    <tr>
                      <th ></th>
                      <th >{{ $item->filename }}</th>
                    </tr>
                    <tr><th></th>
                        <th ><embed src= "{{ asset('public/storage/'.$item->file_path) }}" width= "800" height= "500"></th>
                      </tr>
                      @endforeach
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
