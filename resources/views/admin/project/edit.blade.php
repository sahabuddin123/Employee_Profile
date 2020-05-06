@extends('admin.app')

@section('title') {{ $pageTitle }} @endsection

@section('content')
    {{--  <div class="app-title">
        <div class="user-data m-b-10" style="padding-top:10px;">
            <h1 class="text-center"><i class="fas fa-desktop"></i> {{ $pageTitle }}</h1>
        </div>
    </div>  --}}
    @include('admin.partials.flash')
    <div class="row user">
        <div class="col-md-12 mx-auto">
            <div class="user-data m-b-30" style="padding:30px;">
            <div class="tab-content">
{{--  Start  --}}
                <style>
                    label{
                        text-transform: uppercase;
                    }
                </style>
            <div class="tile">
                <h3 class="tile-title text-center text-success"> <U>{{ $subTitle }}</U> </h3>
                <form action="{{ route('admin.project.update') }}" method="POST" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="tile-body">
                        <div class="form-group">
                            <input type="hidden" name="id" value="{{ $personals->id }}">
                            <label class="control-label" for="jobno">JOB NO : <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('jobno') is-invalid @enderror" type="text" name="jobno" id="jobno" value="{{ $personals->jobno, old('jobno') }}"/>
                            @error('jobno') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="pctg">PROJECT CATEGORY <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('pctg') is-invalid @enderror" type="text" name="pctg" id="pctg" value="{{ $personals->pctg, old('pctg') }}"/>
                            @error('pctg') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="pdate">Date<span class="m-l-5 text-danger"> * </span></label>
                                <input class="form-control @error('pdate') is-invalid @enderror" type="date" name="pdate" id="pdate" value="{{ $personals->pdate, old('pdate') }}"/>
                                @error('pdate') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="ptitle">PROJECT TITLE <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('ptitle') is-invalid @enderror" type="text" name="ptitle" id="ptitle" value="{{ $personals->ptitle, old('ptitle') }}"/>
                            @error('ptitle') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="cdetails">CLIENT DETAILS <span class="m-l-5 text-danger"> *</span></label>
                            <input class="form-control @error('cdetails') is-invalid @enderror" type="text" name="cdetails" id="cdetails" value="{{ $personals->cdetails, old('cdetails') }}"/>
                            @error('cdetails') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="contactp">CONTACT PERSON <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('contactp') is-invalid @enderror" type="text" name="contactp" id="contactp" value="{{ $personals->contactp, old('contactp') }}"/>
                            @error('contactp') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="siteD&DOC">SITE DETAILS & DOCUMENTS <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('siteD&DOC') is-invalid @enderror" type="text" name="siteDDOC" id="siteD&DOC" value="{{ $personals->siteDDOC, old('siteDDOC') }}"/>
                            @error('siteD&DOC') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="S&ASBD">SURVEY & AS BUILT DWG <span class="m-l-5 text-danger"> </span></label>
                            <input type="text" class="form-control @error('S&ASBD') is-invalid @enderror" name="SASBD" id="S&ASBD" value="{{ $personals->SASBD, old('SASBD') }}">
                            @error('S&ASBD') {{ $message }} @enderror
                        </div>
                            {{--   JOB DETAILS --}}
                        <div class="text-center">
                            <h3 class="text-success"><u>JOB DETAILS</u></h3>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Arch">ARCHITECTURE <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Arch') is-invalid @enderror" type="text" name="Arch" id="Arch" value="{{ $personals->Arch, old('Arch') }}"/>
                            @error('Arch') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Struc">STRUCTURE <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Struc') is-invalid @enderror" type="text" name="Struc" id="Struc" value="{{ $personals->Struc, old('Struc') }}"/>
                            @error('Struc') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Elec">ELECTRICAL <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Elec') is-invalid @enderror" type="text" name="Elec" id="Elec" value="{{ $personals->Elec, old('Elec') }}"/>
                            @error('Elec') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Plum">PLUMBING <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Plum') is-invalid @enderror" type="text" name="Plum" id="Plum" value="{{ $personals->Plum, old('Plum') }}"/>
                            @error('Plum') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Plan">PLANNER <span class="m-l-5 text-danger"> </span></label>
                            <input type="text" class="form-control @error('Plan') is-invalid @enderror" name="Plan" id="Plan" value="{{ $personals->Plan, old('Plan') }}">
                            @error('Plan') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="visuali">VISUALIZATION [3D] <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('visuali') is-invalid @enderror" type="text" name="visuali" id="visuali" value="{{ $personals->visuali, old('visuali') }}"/>
                            @error('visuali') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Authority">AUTHORITY DWG <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Authority') is-invalid @enderror" type="text" name="Authority" id="Authority" value="{{ $personals->Authority, old('Authority') }}"/>
                            @error('Authority') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Co_Ordination">CO-ORDINATION <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Co_Ordination') is-invalid @enderror" type="text" name="Co_Ordination" id="Co_Ordination" value="{{ $personals->Co_Ordination, old('Co_Ordination') }}"/>
                            @error('Co_Ordination') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Experts">EXPERTS <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Experts') is-invalid @enderror" type="text" name="Experts" id="Experts" value="{{ $personals->Experts, old('Experts') }}"/>
                            @error('Experts') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="OutSource">OUT SOURCE <span class="m-l-5 text-danger"> </span></label>
                            <input type="text" class="form-control @error('OutSource') is-invalid @enderror" name="OutSource" id="OutSource" value="{{ $personals->OutSource, old('OutSource') }}">
                            @error('OutSource') {{ $message }} @enderror
                        </div>
                        {{--   MANAGEMENT --}}
                        <div class="text-center">
                            <h3 class="text-success"><u>MANAGEMENT</u></h3>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="FINANCE">FINANCE <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('FINANCE') is-invalid @enderror" type="text" name="FINANCE" id="FINANCE" value="{{ $personals->FINANCE, old('FINANCE') }}"/>
                            @error('FINANCE') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="BOQ">B.O.Q <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('BOQ') is-invalid @enderror" type="text" name="BOQ" id="BOQ" value="{{ $personals->BOQ, old('BOQ') }}"/>
                            @error('BOQ') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Estimation">ESTIMATION <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Elec') is-invalid @enderror" type="text" name="Estimation" id="Estimation" value="{{ $personals->Estimation, old('Estimation') }}"/>
                            @error('Estimation') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="SiteEngr">SITE ENGR. <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('SiteEngr') is-invalid @enderror" type="text" name="SiteEngr" id="SiteEngr" value="{{ $personals->SiteEngr, old('SiteEngr') }}"/>
                            @error('SiteEngr') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Supervison">SUPERVISION <span class="m-l-5 text-danger"> </span></label>
                            <input type="text" class="form-control @error('Supervison') is-invalid @enderror" name="Supervison" id="Supervison" value="{{ $personals->Supervison, old('Supervison') }}">
                            @error('Supervison') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="vendor">VENDOR <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('vendor') is-invalid @enderror" type="text" name="vendor" id="vendor" value="{{ $personals->vendor, old('vendor') }}"/>
                            @error('vendor') {{ $message }} @enderror
                        </div>
                        {{--  NOTES  --}}
                        <div class="text-center">
                            <h3 class="text-success"><u>NOTE</u></h3>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="note">WORK SCHEDULE [NOTE] <span class="m-l-5 text-danger"> </span></label>
                            <textarea class="form-control @error('note') is-invalid @enderror" rows="4" placeholder="WORK SCHEDULE [NOTE]" name="note" id="note" >{{ $personals->note, old('note') }}</textarea>
                            @error('note') {{ $message }} @enderror
                        </div>
                        {{--  GOV. FORMATE INFO  --}}
                        <div class="text-center">
                            <h3 class="text-success"><u>GOV. FORMATE INFO</u></h3>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="ProjectVL">Approx. value of Contact (Tk. Lacs): <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('ProjectVL') is-invalid @enderror" type="text" name="ProjectVL" id="ProjectVL" value="{{ $personals->ProjectVL, old('ProjectVL') }}"/>
                            @error('ProjectVL') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="country">COUNTRY : <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('country') is-invalid @enderror" type="text" name="country" id="country" value="{{ $personals->country, old('country') }}"/>
                            @error('country') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="LocationWC">Location within Country: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('LocationWC') is-invalid @enderror" type="text" name="LocationWC" id="LocationWC" value="{{ $personals->LocationWC, old('LocationWC') }}"/>
                            @error('LocationWC') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="PDuration">Duration of Assignment (Months): <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('PDuration') is-invalid @enderror" type="text" name="PDuration" id="PDuration" value="{{ $personals->PDuration, old('PDuration') }}"/>
                            @error('PDuration') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="Cname">Name of Clients: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('Cname') is-invalid @enderror" type="text" name="Cname" id="Cname" value="{{ $personals->Cname, old('Cname') }}"/>
                            @error('Cname') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="CAddress">Address of Clients: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('CAddress') is-invalid @enderror" type="text" name="CAddress" id="CAddress" value="{{ $personals->CAddress, old('CAddress') }}"/>
                            @error('CAddress') {{ $message }} @enderror
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="PStartDate">PROJECT Start Date: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('PStartDate') is-invalid @enderror" type="date" name="PStartDate" id="PStartDate" value="{{ $personals->PStartDate, old('PStartDate') }}"/>
                            @error('PStartDate') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="PCompleteD">PROJECT Completion Date: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('PCompleteD') is-invalid @enderror" type="date" name="PCompleteD" id="PCompleteD" value="{{ $personals->PCompleteD, old('PCompleteD') }}"/>
                            @error('PCompleteD') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="SCharge">Approx. value of services provided by our firm under the contract (Tk. Lacs) <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('SCharge') is-invalid @enderror" type="text" name="SCharge" id="SCharge" value="{{ $personals->SCharge, old('SCharge') }}"/>
                            @error('SCharge') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="joinConsul">Name of Joint Consultants:<span class="m-l-5 text-danger">(if any) </span></label>
                            <input class="form-control @error('joinConsul') is-invalid @enderror" type="text" name="joinConsul" id="joinConsul" value="{{ $personals->joinConsul, old('joinConsul') }}"/>
                            @error('joinConsul') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="NojoinCons">No. of Staff-Months of Professional Staff provided by Joint Venture Consultants: <span class="m-l-5 text-danger">(if any) </span></label>
                            <input class="form-control @error('NojoinCons') is-invalid @enderror" type="text" name="NojoinCons" id="NojoinCons" value="{{ $personals->NojoinCons, old('NojoinCons') }}"/>
                            @error('NojoinCons') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="NSPstaffP">Post of Senior Professional Staff Involved and Functions Performed: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('NSPstaffP') is-invalid @enderror" type="text" name="NSPstaffP" id="NSPstaffP" value="{{ $personals->NSPstaffP, old('NSPstaffP') }}" placeholder="Project Director/Coordinator, Team Leader" />
                            @error('NSPstaffP') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="NSPstaffN">Name of Senior Professional Staff Involved and Functions Performed: <span class="m-l-5 text-danger"> </span></label>
                            <input class="form-control @error('NSPstaffN') is-invalid @enderror" type="text" name="NSPstaffN" id="NSPstaffN" value="{{ $personals->NSPstaffN, old('NSPstaffN') }}"  />
                            @error('NSPstaffN') {{ $message }} @enderror
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="DNDescriptionP">Detailed Narrative Description of Project: <span class="m-l-5 text-danger"> </span></label>
                            <textarea class="form-control @error('DNDescriptionP') is-invalid @enderror" rows="4" name="DNDescriptionP" id="DNDescriptionP" >{{ $personals->DNDescriptionP, old('DNDescriptionP') }}</textarea>
                            @error('DNDescriptionP') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="DDASPstaff">Detailed Description of Actual Services Provided by our Staff: <span class="m-l-5 text-danger"> </span></label>
                            <textarea class="form-control @error('DDASPstaff') is-invalid @enderror" rows="4" name="DDASPstaff" id="DDASPstaff" >{{ $personals->DDASPstaff, old('DDASPstaff') }}</textarea>
                            @error('DDASPstaff') {{ $message }} @enderror
                        </div>

                        <div class="form-group">
                            <label for="Firmsname" class="control-label">Firm’s Name:</label>
                              <input type="text" class="  @error('Firmsname') is-invalid @enderror form-control" id="Firmsname" name="Firmsname"  value="{{ $personals->Firmsname, old('Firmsname') }}"/>
                              @error('Firmsname') {{ $message }} @enderror
                        </div>
                        <div class="form-group">
                            <div class="row">
                                @if ($personals->image != null)
                                <div class="col-md-2">
                                    <figure class="mt-2" style="width: 80px; height: auto;">
                                            <img src="{{ asset('public/storage/'.$personals->image) }}" id="PostsImage" class="img-fluid" alt="img">
                                    </figure>
                                </div>
                            @endif
                            <div class="col-md-10">
                                <label for="image" class="control-label">Project Image:</label>
                                <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image"/>
                                @error('image') {{ $message }} @enderror
                            </div>
                        </div>

                        </div>
                        <div class="form-group">
                            <div class="row">
                                @if ($personals->AuthordSignature != null)
                                <div class="col-md-2">
                                    <figure class="mt-2" style="width: 80px; height: auto;">
                                            <img src="{{ asset('public/storage/'.$personals->AuthordSignature) }}" id="PostsImage" class="img-fluid" alt="img">
                                    </figure>
                                </div>
                            @endif
                            <div class="col-md-10">
                                <label for="AuthordSignature" class="control-label">Authorized Signature:</label>
                                <input class="form-control @error('AuthordSignature') is-invalid @enderror" type="file" id="AuthordSignature" name="AuthordSignature"/>
                                @error('AuthordSignature') {{ $message }} @enderror
                            </div>
                        </div>

                        </div>
                        <div class="form-group">
                            <label for="IsActive">Status</label>
                            <select class="IsActive form-control" name="IsActive" id="IsActive">

                                <option value="1" @if($personals->IsActive == 1) selected @endif>Active</option>
                                <option value="0" @if($personals->IsActive == 0) selected @endif>Deactive</option>
                            </select>
                        </div>
                    </div>

                    <div class="tile-footer">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update Project Info</button>
                        &nbsp;&nbsp;&nbsp;
                        <a class="btn btn-secondary" href="{{ route('admin.project.index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                    </div>
                </form>
            </div>

{{--  End  --}}
            </div>
        </div>
    </div>
    </div>
@endsection
@push('scripts')


@endpush
