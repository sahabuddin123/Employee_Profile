<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Http\Controllers\BaseController;
use App\Contracts\ProjectContract;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Doctrine\Instantiator\Exception\InvalidArgumentException;
use Redirect;
use QrCode;
use App\Models\ProjectProgress;
use PDF;
use Charts;
use App\Charts\SampleChart;
class ProjectController extends BaseController
{
    /**
     * @var ProjectContract
     */
    protected $ProjectRepository;
    use UploadAble;
    /**
     * CategoryController constructor.
     * @param ProjectContract $ProjectRepository
     */
    public function __construct(ProjectContract $ProjectRepository)
    {
        $this->ProjectRepository = $ProjectRepository;
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(){
        $personals = Project::orderBy('id','Asc')->get();
        $this->setPageTitle('Project information', 'List of all Project');
        return view('admin.project.index', compact('personals'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $this->setPageTitle('Create a new Project', 'Project Information');
        return view('admin.project.create');
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $params = $request->except('_token');

        $personals = $this->ProjectRepository->createData($params);
        if (!$personals) {
            return $this->responseRedirectBack('Error occurred while creating Project information.', 'error', true, true);
        }
        //return redirect()->route('admin.cv.update.personal', $personals->id);
        return $this->responseRedirect('admin.project.index', 'Project Information added successfully' ,'success',false, false);
    }
    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($id)
    {

        //dd($departments);
        $personals = $this->ProjectRepository->findDataById($id);
        $this->setPageTitle('Update Employee Information', 'Edit :  Project information ' );
        return view('admin.project.edit', compact('personals'));
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request)
    {
        $params = $request->except('_token');

        $personals = $this->ProjectRepository->updateData($params);

        if (!$personals) {
            return $this->responseRedirectBack('Error occurred while updating Project Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Project Information updated successfully' ,'success',false, false);
    }
    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($id)
    {
        $brand = $this->ProjectRepository->deleteData($id);

        if (!$brand) {
            return $this->responseRedirectBack('Error occurred while deleting Project Information.', 'error', true, true);
        }
        return $this->responseRedirect('admin.cv.index', 'Project Information deleted successfully' ,'success',false, false);
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function completedUpdate(Request $request, $id)
    {
        if($request->IsActive == 1){
            $data = Project::where('id',$id)->first();
            $data->IsActive = $request->IsActive;
            $data->update();
            return $this->responseRedirectBack('Project Status Active successfully' ,'success',false, false);
        }
        elseif($request->IsActive == 0){
            $data = Project::where('id',$id)->first();
            $data->IsActive = $request->IsActive;
            $data->update();
            return $this->responseRedirectBack('Department Status Inactive successfully' ,'success',false, false);
        }
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function GovView($id)
    {
        $personals = $this->ProjectRepository->findDataById($id);
        return view('admin.project.view.gov', compact('personals'));
    }
    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function LocalView($id)
    {
        $personals = $this->ProjectRepository->findDataById($id);
        return view('admin.project.view.local', compact('personals'));
    }

    /**
     * PDF Generate
    */
    public function GOvPDF($id){
        $personals = $this->ProjectRepository->findDataById($id);
         $pdf = PDF::loadView('admin.project.view.govpdf',['personals' => $personals])->setpaper('a4', 'portrait');
                return $pdf->stream();
    }
    /**
     * PDF Generate
    */
    public function localPDF($id){
        $personals = $this->ProjectRepository->findDataById($id);
         $pdf = PDF::loadView('admin.project.view.localpdf', ['personals' => $personals])->setpaper('a4', 'portrait');
                return $pdf->stream();
    }

    /**
     * Single Modal Show
     */

    public  function showSingle(Request $request){
        $id = $request->phoneData;
        $personals = Project::where('id',$id)->first();
        $single =
    "<div class='row'>
      <div class='col-md-12 col-sm-4 col-lg-12'>
        <div class='tile'>
          <div class='tile-body'>
            <div class='card-body border'>
              <div class='A4Size'>
                <section>
                  <article>
                        <table width='100%' cellpadding='5'>
                        <tr >
                          <th colspan='4' align='left'>
                            <b style='text-transform:uppercase;'>Project Name : ". $personals['ptitle'] ."</b>
                          </th>
                        </tr>

                        <tr >
                          <td rowspan='5' width='15%'>
                              <div class='personalImage' >";
                                                    if(isset($personals['image'])){
                                                        $single .=   "<a data-magnify='gallery' data-src=' data-caption='".$personals['image']."' data-group='a'
                                                      href='". asset('public/storage/'.$personals['image'])."'>
                                                      <img src='". asset('public/storage/'.$personals['image'])."' class='rounded  img-thumbnail' alt='...' width='85'>
                                                    </a>";
                                                    }
                                                    else{
                                                        $single .=  "<img src=' class='rounded  img-thumbnail' alt='...' width='120' alt='!'>";
                                                    }

                                                    $single .= "
                                                  </div>
                            </td>
                          <td width='30%'>
                              <b>Start Date : </b>&nbsp;&nbsp;". date('d-M-Y', strtotime($personals['PStartDate'])) ."</td>
                          <td width='40%'>
                              <b>Completion Date :</b>&nbsp;&nbsp;";
                              if($personals['PCompleteD'] != null){
                                $single .= date('d-M-Y', strtotime($personals['PCompleteD']));
                              }
                              else{
                                $single .=  'Continue';
                              }
                              $single .= " </td>
                          <td rowspan='5'>
                          <div class='personalImage'>";

                          $EmpProLink = url("/projectview/emplyee/single/".$personals['slug']);
                     $single .= QrCode::size(150)->generate($EmpProLink);
                     $single .='<br><input type="text" value="'.$EmpProLink.'" id="myInput" style=""> <button onclick="myFunction()" onmouseout="outFunc()" class="btn btn-info">Copy Link</button>';
                  $single .=" <a href=".route('admin.short.save', $personals['id'])." class='btn btn-danger'>PDF</a></div>
                             </td>
                        </tr>
                         <tr>

                          <td><b>Name of Clients :</b> </td>
                          <td><b>".$personals['Cname']."</b></td>
                        </tr>
                        <tr>
                          <td><b>Job No. :</b></td>
                          <td> <b>". $personals['jobno'] ."</b></td>
                        </tr>
                        <tr>
                          <td><b>Team Leader :</b></td>
                          <td><b>". $personals['NSPstaffN'] ."</b></td>
                        </tr>
                      </table>
                  </article>
                </section>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>";
 return Response()->json($single, 200, [], JSON_UNESCAPED_UNICODE);
    }
/**
 * Pie Chart
 */
public function ProjectPie($id){
    $project = Project::find($id);
    $progress = ProjectProgress::where('Pid', $id)->get();
    $Data = array();
    foreach($progress as $val){
        $dataval = [
            'value' => $val['twork'],
            'name' => $val['Dgname']
        ];
        array_push($Data, $dataval);
    }
    $Data2 = array();
    foreach($progress as $val){
        $dataval2 = [
            'value' => $val['cwork'],
            'name' => $val['Dgname']
        ];
        array_push($Data2, $dataval2);
    }
    $totsl = 0;
    foreach($progress as $val){
        $totsl +=  $val['cwork'];
    }
    return view('admin.Piechart.projectpie', compact('Data','Data2','totsl'));
}

public function ProjectPie2($slug){
    $project = Project::where('slug', $slug)->first();
    //dd($project);
    $progress = ProjectProgress::where('Pid', $project->id)->get();
    $Data = array();
    foreach($progress as $val){
        $dataval = [
            'value' => $val['twork'],
            'name' => $val['Dgname']
        ];
        array_push($Data, $dataval);
    }
    $Data2 = array();
    foreach($progress as $val){
        $dataval2 = [
            'value' => $val['cwork'],
            'name' => $val['Dgname']
        ];
        array_push($Data2, $dataval2);
    }
    $totsl = 0;
    foreach($progress as $val){
        $totsl +=  $val['cwork'];
    }
    return view('fontend.Piechart.projectpie', compact('Data','Data2','totsl', 'project'));
}

    public function SinglePDF($id){
        $personals = $this->ProjectRepository->findDataById($id);
        $pdf = PDF::loadView('admin.project.view.singlepdf', ['personals' => $personals])->setpaper('a4', 'portrait');
               return $pdf->stream();
    }
}
