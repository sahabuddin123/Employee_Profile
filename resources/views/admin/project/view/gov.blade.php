@extends('admin.app')
@section('title') {{ "Project Full View" }} @endsection
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
      {{--  padding-left:10px;  --}}
      padding: 10px;
  }
  table tr th{
      padding-left:10px;
  }
  </style>

<div class="row">
  <div class="col-md-12 col-sm-4 col-lg-12">
    <div class="user-data" style="padding-top:0px;">
      <div class="tile" style="padding:30px;">
      <div class="tile-body">
        <div class="text-right" id="pnt">
            <a href="{{route('admin.project.govpdf', $personals->id )}}">Print</a>
           {{--  <button  class="printPage" id="printPage">Print</button>  --}}
        </div>
        <div class="card-body border">
          <div class="A4Size">
            <!--PersonalInfo Section-->
            <section>
              <article>
                <table width="100%" cellpadding="10" border="1">
                    <tr>
                        <td colspan="2" width="50%"><b>Assignment Name :</b> {{$personals->ptitle}}</td>
                        <td colspan="2"  width="50%"><b>Approx. value of Contact (Tk. Lacs) :</b> {{$personals->ProjectVL}}</td>
                      </tr>
                      <tr>
                        <td colspan="2">
                            <b>Country :</b> {{$personals->country}} <br>
                            <b>Location within Country :</b> {{$personals->LocationWC}}
                        </td>
                        <td colspan="2">
                            <b>Duration of Assignment (Months) :</b> {{$personals->PDuration}}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2">
                            <b>Name of Clients :</b> {{$personals->Cname}} <br>
                            <b>Address :</b> {{$personals->CAddress}}
                        </td>
                        <td colspan="2"></td>
                      </tr>
                      <tr>
                        <td><b>Start Date : </b><br><?php $start = date('d-M-Y', strtotime($personals->PStartDate)) ?>{{$start}}</td>
                        <td><b>Completion Date : </b><br><?php $end = date('d-M-Y', strtotime($personals->PCompleteD)) ?>{{$end}}</td>
                        <td colspan="2">
                            <b>Approx. value of services provided by our firm under the contract (Tk. Lacs)</b><br>
                             {{ $personals->SCharge }}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2"><b>Name of Joint Consultants, if any : </b><br>{{ $personals->joinConsul }}</td>
                        <td colspan="2">
                            <b>No. of Staff-Months of Professional Staff provided by Joint Venture Consultants : </b><br>{{ $personals->NojoinCons }}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="4">
                            <b>Name of Senior Professional Staff ({{ $personals->NSPstaffP }}) Involved and Functions Performed : </b><br> {{ $personals->NSPstaffN }}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="4">
                            <b>Detailed Narrative Description of Project : </b><br> {{ $personals->DNDescriptionP }}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="4">
                            <b>
                                Detailed Description of Actual Services Provided by our Staff :
                            </b><br> {{ $personals->DDASPstaff }}
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2"><b>Firm’s Name :</b></td>
                        <td colspan="2"><b>{{ $personals->Firmsname }}</b></td>
                      </tr>
                      <tr>
                        <td colspan="2"><b>Authorized Signature :</b></td>
                        <td colspan="2" align="center">
                            <a data-magnify="gallery" data-src="" data-caption="{{ $personals->jobno}}" data-group="a"
                                href="{{ asset('public/storage/'.$personals->AuthordSignature)}}">
                                <img src="{{ asset('public/storage/'.$personals->AuthordSignature)}}" class="rounded  img-thumbnail" alt="..." width="150">
                              </a>
                        </td>
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
