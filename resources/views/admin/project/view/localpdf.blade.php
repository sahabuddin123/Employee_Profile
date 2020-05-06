<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>


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
                    font-family: 'Paytone One', sans-serif;
                    font-weight: 500;
                    margin-top: 3px;
                    font-size: 14px;
                    float: left;
                }
                .uper-p0{
                    text-transform: uppercase;
                    font-family: 'Paytone One', sans-serif;
                    font-weight: 900;
                    margin-top: 28px;
                    font-size: 14px;
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
                    height: 15px;
                    float: right;
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
                    height: 15px;
                    float: right;
                    margin-right:634px;
                    margin-top: 30px;
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
                    border-bottom: 2px dashed blue;
                    margin-top: 20px;
                }
                .job-d{
                    text-transform: uppercase;
                    font-family: 'Gothic A1', sans-serif;
                    font-size: 18px;
                    font-weight: 900;
                    color: blue;

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
                    padding-bottom: 5px;
                    margin-bottom: 0px;
                    margin-left: 350px;

                }
                .job-ditl{
                    padding: 10px 0px 0px 30px;
                }
                .job-ditl table tr td li{
                    list-style-type: square;
                    font-size: 14px;
                }
                .job-ditl table tr td{
                    border-bottom: 1px dashed gray;
                    text-align: justify;
                    font-family: 'Gothic A1', sans-serif;
                }
                .job-ditl table tr td span{
                    color: blue;
                    font-weight: 900;
                    font-size: 14px;
                }
                .job{
                    position: relative;
                }
                .jobd{
                    position: absolute;
                    top: 29%;
                    left: 12%;
                    text-transform: uppercase;
                    font-family: 'Gothic A1', sans-serif;
                    font-size: 18px;
                    font-weight: 900;
                    color: blue;
                }
            </style>

</head>
<body>


    <div class="container">
        <div class="A4Size">
            <!--PersonalInfo Section-->
            <section>
              <article>

                    <div class="title">
                        <h2>Professional Associates LTD.</h2>
                    </div>
                    <div class="d-flex">
                        <div>
                            <p class="uper-p">
                                project information
                            </p>
                            <p class="uper-p0" style="margin-top:50px;">
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
                                <b style="font-size:14px;">
                                project title &nbsp;&nbsp;:
                                <span style="color: red;border-bottom: 1px dashed #36FF4E;font-size:14px;">
                                    {{ $personals->ptitle }}
                                </span>
                                </b>
                            </li>
                            <li>
                                <b class="gray" style="font-size:14px;">
                                clinent details :
                                <span style="color: blue;border-bottom: 1px dashed gray;width:78%;font-size:14px;">
                                    {{ $personals->cdetails }}
                                </span>
                                </b>
                            </li>
                            <li>
                                <b class="gray" style="font-size:14px;">
                                contact person :
                                <span style="color: blue;border-bottom: 1px dashed gray;width:77%;font-size:14px;">
                                    {{ $personals->contactp }}
                                </span>
                                </b>
                            </li>
                            <li>
                                <b class="gray" style="font-size:14px;">
                                SITE DETAILS & DOCUMENTS :
                                <span style="color: blue;border-bottom: 1px dashed gray;width:65%;font-size:14px;">
                                    {{ $personals->siteDDOC }}
                                </span>
                                </b>
                            </li>
                            <li>
                                <b class="gray" style="font-size:14px;">
                                SURVEY & AS BUILT DWG :
                                <span style="color: blue;border-bottom: 1px dashed gray;width:69%;font-size:14px;">
                                    {{ $personals->SASBD }}
                                </span>
                                </b>
                            </li>

                        </ul>
                    </div>
                    <div class="jobd">
                        <b>job details</b>
                    </div>
                    <div class="job">
                        <div class="job-d">
                        </div>
                        <div class="job-r">
                        <b>remarks/responsibilaty</b>
                        </div>
                    </div>
                    <!--  Job Details-->
                    <div class="job-ditl">
                        <table width="100%">
                            <tr>
                                <td width="25%"><li><b>ARCHITECTURE</b></li></td>
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
</body>
</html>
