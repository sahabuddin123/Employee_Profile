@extends('admin.app')
@section('title') {{ "Local View" }} @endsection
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
            <a href="{{route('admin.project.localpdf', $personals->id )}}">Print</a>
           {{--  <button  class="printPage" id="printPage">Print</button>  --}}
        </div>
        <div class="card-body border">
          <div class="A4Size">
            <!--PersonalInfo Section-->
            <section>
              <article>

	<style>
		@import url('https://fonts.googleapis.com/css?family=Paytone+One&display=swap');
		@import url('https://fonts.googleapis.com/css?family=Gothic+A1&display=swap');
		*{
			padding: 0;
			margin: 0;
		}
		body{
			padding: 0;
			margin: 0;
		}
		.title{
			border-bottom: 5px solid #36FF4E;
		}
		.title h2{
			text-transform: uppercase;
			font-family: 'Paytone One', sans-serif;
		}
		.container{
			margin: 20px 80px;
		}
		.uper-p{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-weight: 500;
			margin-top: 3px;
			font-size: 18px;
		}
		.uper-p0{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-weight: 900;
			margin-top: 28px;
			font-size: 16px;
		}
		.uper-p0 span{
			border:1px solid #36FF4E;
			padding: 5px;
		}
		.uper-p1{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-weight: bold;
			margin-top: 8px;
			font-size: 14px;
			padding: 8px;
			color: #fff;
			background: #36FF4E;
			margin-right: -30px;
			width: 300px;
			height: 35px;
		}
		.uper-p2{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-weight: bold;
			font-size: 14px;
			padding: 8px;
			color: #000;
			background: #BDEB7B;
			margin-right: -30px;
			width: 275px;
			height: 35px;
		}
		.d-flex{
			display: flex;
			justify-content: space-between;
		}
		.p-title{
			margin-top: 40px;
		}
		.p-title ul li b{
			border-bottom: 1px dashed #36FF4E;
			text-align: justify;
		}
		.p-title ul li .gray{
			border-bottom: 1px dashed gray;
			text-align: justify;
		}
		.p-title ul li{
			list-style-type: square;
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			text-align: justify;
			margin-top: 5px;
		}
		.job{
			display: flex;
			justify-content: space-between;
			border-bottom: 2px dashed blue;
			margin-top: 20px;
		}
		.job-d{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-size: 18px;
			font-weight: 900;
			color: blue;
			margin-top: 20px;
		}

		.job-r{
			text-transform: uppercase;
			font-family: 'Gothic A1', sans-serif;
			font-size: 16px;
			font-weight: 900;
			color: white;
			background: blue;
			padding: 8px;
			padding-left: 30px;
			padding-right: 12px;
			padding-bottom: 0px;
			margin-top: 10px;
		}
		.job-ditl{
			padding: 10px 0px 0px 30px;
		}
		.job-ditl table tr td li{
			list-style-type: square;
		}
		.job-ditl table tr td{
			border-bottom: 1px dashed gray;
			text-align: justify;
			font-family: 'Gothic A1', sans-serif;
		}
		.job-ditl table tr td span{
			color: blue;
			font-weight: 900;
		}
	</style>



			<div class="title">
				<h2>Professional Associates LTD.</h2>
			</div>
			<div class="d-flex">
				<div>
					<p class="uper-p">
						project information
					</p>
					<p class="uper-p0">
						project category :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span>{{ $personals->pctg }}</span>
					</p>
				</div>
				<div>
					<p class="uper-p1">
						<span>job no : {{ $personals->jobno }}</span>
					</p>
					<p class="uper-p2">
						<span>date &nbsp;&nbsp;: <?php echo date('d-m-Y', strtotime($personals->pdate)); ?></span>
					</p>
				</div>
			</div>
			<div class="p-title">
				<ul>
					<li>
						<b>
						project title &nbsp;&nbsp;:
						<span style="color: red;">
                            {{ $personals->ptitle }}
						</span>
						</b>
					</li>
					<li>
						<b class="gray">
						clinent details :
						<span style="color: blue;">
                            {{ $personals->cdetails }}
						</span>
						</b>
					</li>
					<li>
						<b class="gray">
						contact person :
						<span style="color: blue;">
                            {{ $personals->contactp }}
						</span>
						</b>
					</li>
					<li>
						<b class="gray">
						SITE DETAILS & DOCUMENTS :
						<span style="color: blue;">
                            {{ $personals->siteDDOC }}
						</span>
						</b>
					</li>
					<li>
						<b class="gray">
						SURVEY & AS BUILT DWG :
						<span style="color: blue;">
                            {{ $personals->SASBD }}
						</span>
						</b>
					</li>

				</ul>
			</div>
			<div class="job">
				<div class="job-d">
					<b>job details</b>
				</div>
				<div class="job-r">
				<b>remarks/responsibilaty</b>
				</div>
			</div>
			<!--  Job Details-->
			<div class="job-ditl">
				<table width="100%">
					<tr>
						<td width="32%"><li><b>ARCHITECTURE</b></li></td>
						<td width="2%"> : </td>
						<td><span>{{ $personals->Arch }}</span></td>
					</tr>
					<tr>
						<td><li><b>STRUCTURE</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Struc }}</span></td>
					</tr>
					<tr>
						<td><li><b>ELECTRICAL</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Elec }}</span></td>
					</tr>
					<tr>
						<td><li><b>PLUMBING</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Plum }}</span></td>
					</tr>
					<tr>
						<td><li><b>PLANNER</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Plan }}</span></td>
					</tr>
					<tr>
						<td><li><b>VISUALIZATION [3D]</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->visuali }}</span></td>
					</tr>
					<tr>
						<td><li><b>AUTHORITY DWG</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Authority }}</span></td>
					</tr>
					<tr>
						<td><li><b>CO-ORDINATION</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Co_Ordination }}</span></td>
					</tr>
					<tr>
						<td><li><b>EXPERTS</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Experts }}</span></td>
					</tr>
					<tr>
						<td><li><b>OUT SOURCE</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->OutSource }}</span></td>
					</tr>
				</table>
			</div>
			<!--  -->
			<div class="job">
				<div class="job-d">
					<b>management</b>
				</div>
			</div>
			<!-- Management -->
			<div class="job-ditl">
				<table width="100%">
					<tr>
						<td width="30%"><li><b>FINANCE</b></li></td>
						<td width="2%"> : </td>
						<td><span>{{ $personals->FINANCE }}</span></td>
					</tr>
					<tr>
						<td><li><b>B.O.Q</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->BOQ }}</span></td>
					</tr>
					<tr>
						<td><li><b>ESTIMATION</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Estimation }}</span></td>
					</tr>
					<tr>
						<td><li><b>SITE ENGR.</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->SiteEngr }}</span></td>
					</tr>
					<tr>
						<td><li><b>SUPERVISION</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->Supervison }}</span></td>
					</tr>
					<tr>
						<td><li><b>VENDOR</b></li></td>
						<td> : </td>
						<td><span>{{ $personals->vendor }}</span></td>
					</tr>
				</table>
			</div>
			<!--  -->
			<div class="job" style="border-color: gray;">
				<div class="job-d">
				</div>
				<div class="job-r" style="background: gray">
				<b>WORK SCHEDULE [NOTE]</b>
				</div>
			</div>
			<p class="note"><b style="border-bottom: 1px dashed gray;">
				{{ $personals->note }}
			</b></p>

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
