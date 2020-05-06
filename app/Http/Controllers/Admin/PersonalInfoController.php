<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Contracts\PersonalinfoContract;
use App\Models\Department;
use App\Models\Document;
use App\Models\Education;
use App\Models\Employeeinfo;
use App\Models\Language;
use App\Models\Personalinfo;
use App\Models\Reference;
use App\Models\Skill;
use App\Models\Traning;
use App\Models\Workexpreance;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Doctrine\Instantiator\Exception\InvalidArgumentException;
use Redirect;
use QrCode;
use PDF;
class PersonalInfoController extends BaseController
{
    /**
     * @var PersonalinfoContract
     */
    protected $PersonalinfoRepository;
    use UploadAble;
    /**
     * CategoryController constructor.
     * @param PersonalinfoContract $PersonalinfoRepository
     */
    public function __construct(PersonalinfoContract $PersonalinfoRepository)
    {
        $this->PersonalinfoRepository = $PersonalinfoRepository;
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(){
        $personals = Personalinfo::orderBy('id','Asc')->get();
        $this->setPageTitle('Personal information', 'List of all Employee');
        return view('admin.cv.personal', compact('personals'));
    }
     /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function active(){
        $personals = Personalinfo::where('IsActive','1')->get();
        $this->setPageTitle('Project information', 'List of all Active Project');
        return view('admin.cv.personal', compact('personals'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function inactive(){
        $personals = Personalinfo::where('IsActive','0')->get();
        $this->setPageTitle('Project information', 'List of all Inactive Project');
        return view('admin.cv.personal', compact('personals'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $department = Department::where('IsActive', 1)->get();
        $this->setPageTitle('Create a new Employee', 'Personal information');
        return view('admin.cv.create', compact('department'));
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $this->validate($request, [

            'name'              =>  'required|max:191',
            'father_name'       =>  'required|max:191',
            'mother_name'       =>  'required|max:191',
            'dob'               =>  'required|max:191',
            'religion'          =>  'required|max:191',
            'nationality'       =>  'required|max:191',
            'department'        =>  'required|max:191',
            'image'             =>  'required',
            'expYear'           =>  'required',
            'rgularStuff'       =>  'required',
            'signature'         =>  'required',
            'signing'           =>  'required'

        ]);

        $params = $request->except('_token');

        $personals = $this->PersonalinfoRepository->createPersonalinfo($params);
        // {{ route('admin.cv.update.personal', $item->id) }}
        if (!$personals) {
            return $this->responseRedirectBack('Error occurred while creating Personal information.', 'error', true, true);
        }
        return redirect()->route('admin.cv.update.personal', $personals->id);
        //return $this->responseRedirect('admin.cv.personal', 'Employee Personal information added successfully' ,'success',false, false);
    }
    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($id)
    {

        //dd($departments);
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $department = Department::where('IsActive', 1)->get();
        $this->setPageTitle('Update Employee Information', 'Edit : '.$personals->name.' Personal information ' );
        return view('admin.cv.edit', compact('personals', 'department'));
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'name'              =>  'required|max:191',
            'father_name'       =>  'required|max:191',
            'mother_name'       =>  'required|max:191',
            'dob'               =>  'required|max:191',
            'religion'          =>  'required|max:191',
            'nationality'       =>  'required|max:191',
            'department'        =>  'required|max:191',
            'expYear'           =>  'required',
            'rgularStuff'       =>  'required',
            'signing'           =>  'required'

        ]);

        $params = $request->except('_token');

        $personals = $this->PersonalinfoRepository->updatePersonalinfo($params);

        if (!$personals) {
            return $this->responseRedirectBack('Error occurred while updating Employee Personal information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Personal information updated successfully' ,'success',false, false);
    }
    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($id)
    {
        $brand = $this->PersonalinfoRepository->deletePersonalinfo($id);

        if (!$brand) {
            return $this->responseRedirectBack('Error occurred while deleting Employee Personal information.', 'error', true, true);
        }
        return $this->responseRedirect('admin.cv.personal', 'Employee Personal information deleted successfully' ,'success',false, false);
    }

    public function personal($id){
        $departments = Department::where('IsActive', 1)->get();
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $this->setPageTitle('Update Employee Information', 'Edit : '.$personals->name.' Personal information ' );
        return view('admin.cv.update.personal', compact('personals', 'departments'));
    }
    /**
     * educatuion section Start
     *
     */
    public function education($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $educations = Education::where('empID' , '=', $empID)->get();
         $this->setPageTitle('Update Employee Education Information', 'Edit : Education information ' );
        return view('admin.cv.update.education', compact('personals','educations','empID'));
    }

    public function storeEducation(Request $request)
    {
        $this->validate($request,[
                'ExmTitle' => 'required|max:255',
                'board' => 'required|max:255',
            ]);

        $input = Input::all();
        $empID = $request->empID;
        $eduinfo = Education::where('empID' , '=', $empID);
        if($eduinfo != null){
            $eduinfo->delete();
        }
        //dd($eduinfo);
        $condition = $input['ExmTitle'];
        foreach ($condition as $key => $condition) {
            $education = new Education;
            $education->empID = $empID;
            $education->ExmTitle = $input['ExmTitle'][$key];
            $education->board = $input['board'][$key];
            $education->passing_year = $input['passing_year'][$key];
            $education->group = $input['group'][$key];
            $education->CGPA = $input['CGPA'][$key];
            $education->save();
        }
        if (!$education) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Education information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Education information Update successfully' ,'success',false, false);
    }

    /**
     * Language section Start
     *
     */

    public function language($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $language = Language::where('empID' , '=', $empID)->get();
         $this->setPageTitle('Update Employee Language Skill', 'Edit : Language skill ' );
        return view('admin.cv.update.language', compact('personals','language','empID'));
    }

    public function storelanguage(Request $request)
    {
        $this->validate($request,[
                'LangName' => 'required|max:255',
                'spoken' => 'required|max:255',
            ]);

        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Language::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['LangName'];
        foreach ($condition as $key => $condition) {
            $language = new Language;
            $language->empID = $empID;
            $language->LangName = $input['LangName'][$key];
            $language->spoken = $input['spoken'][$key];
            $language->reading = $input['reading'][$key];
            $language->writin = $input['writin'][$key];
            $language->save();
        }
        if (!$language) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Language Skill.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Language Skill Update successfully' ,'success',false, false);
    }
    /**
     *
     * traning section Start
     */
    public function traning($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $traning = Traning::where('empID' , '=', $empID)->get();
         $this->setPageTitle('Update Employee Traning Information', 'Edit : Traning Information ' );
        return view('admin.cv.update.traning', compact('personals','traning','empID'));
    }

    public function storetraning(Request $request)
    {
        $this->validate($request,[
                'TraningTitle' => 'required|max:255',
                'duration' => 'required|max:255',
            ]);
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Traning::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['TraningTitle'];
        foreach ($condition as $key => $condition) {
            $traning = new Traning;
            $traning->empID = $empID;
            $traning->TraningTitle = $input['TraningTitle'][$key];
            $traning->duration = $input['duration'][$key];
            $traning->save();
        }
        if (!$traning) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Traning Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Traning Information Update successfully' ,'success',false, false);
    }

    /**
     *
     * workexp section Start
     */
    public function workexp($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $workexp = Workexpreance::where('empID' , '=', $empID)->get();
        foreach($workexp as $key){
            $data = $key->empID;
        }
        if(isset($data))
        {
            if($data != null){
                $data = 1;
            }
            else{
                $data = null;
            }
        }
        else{
            $data = null;
        }
        //echo $data;
        //dd($workexp);
         $this->setPageTitle('Update Employee Work expreance Information', 'Edit : Work expreance Information ' );
        return view('admin.cv.update.workexp', compact('personals','workexp','empID','data'));
    }

    public function storeworkexp(Request $request)
    {
        $this->validate($request,[
                'company_name' => 'required|max:255',
                'position' => 'required|max:255',
            ]);
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Workexpreance::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['company_name'];
        foreach ($condition as $key => $condition) {
            $workexp = new Workexpreance;
            $workexp->empID = $empID;
            $workexp->company_name = $input['company_name'][$key];
            $workexp->position = $input['position'][$key];
            $workexp->project_name = $input['project_name'][$key];
            $workexp->from = $input['from'][$key];
            $workexp->to = $input['to'][$key];
            $workexp->save();
        }
        if (!$workexp) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Work Expreance Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Work Expreance Information Update successfully' ,'success',false, false);
    }

    /**
     *
     * Skill section Start
     */
    public function skill($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $skill = Skill::where('empID' , '=', $empID)->get();
         $this->setPageTitle('Update Employee Computer Skills Information', 'Edit : Computer Skills ' );
        return view('admin.cv.update.skill', compact('personals','skill','empID'));
    }

    public function storeskill(Request $request)
    {
        $this->validate($request,[
                'skillname' => 'required|max:255',
            ]);
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Skill::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['skillname'];
        foreach ($condition as $key => $condition) {
            $skill = new Skill;
            $skill->empID = $empID;
            $skill->skillname = $input['skillname'][$key];
            $skill->save();
        }
        if (!$skill) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Computer Skill Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Computer Skills Information Update successfully' ,'success',false, false);
    }

  /**
     *
     * Skill section Start
     */
    public function empInfo($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $empInfo = Employeeinfo::where('empID' , '=', $empID)->get();
        foreach($empInfo as $key){
            $data = $key->empID;
        }
        if(isset($data))
        {
            if($data != null){
                $data = 1;
            }
            else{
                $data = null;
            }
        }
        else{
            $data = null;
        }
        $department = Department::all();
         $this->setPageTitle('Update Employee Information', 'Edit : Employee Information ' );
        return view('admin.cv.update.empInfo', compact('personals','empInfo','empID', 'department', 'data'));
    }

    public function storeempInfo(Request $request)
    {
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Employeeinfo::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['position'];
        foreach ($condition as $key => $condition) {
            $empInfo = new Employeeinfo;
            $empInfo->empID = $empID;
            $empInfo->countrywork = $input['countrywork'][$key];
            $empInfo->bestwork = $input['bestwork'][$key];
            $empInfo->position = $input['position'][$key];
            $empInfo->department = $input['department'][$key];
            $empInfo->save();
        }
        if (!$empInfo) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Information Update successfully' ,'success',false, false);
    }

     /**
     *
     * Reference section Start
     */
    public function reference($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $reference = Reference::where('empID' , '=', $empID)->get();
         $this->setPageTitle('Update Employee references Information', 'Edit :Employee references ' );
        return view('admin.cv.update.reference', compact('personals','reference','empID'));
    }

    public function storereference(Request $request)
    {
        $this->validate($request,[
                'ComName' => 'required|max:255',
            ]);
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Reference::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['ComName'];
        foreach ($condition as $key => $condition) {
            $skill = new Reference;
            $skill->empID = $empID;
            $skill->ComName = $input['ComName'][$key];
            $skill->refname = $input['refname'][$key];
            $skill->position = $input['position'][$key];
            $skill->phone = $input['phone'][$key];
            $skill->Details = $input['Details'][$key];
            $skill->save();
        }
        if (!$skill) {
            return $this->responseRedirectBack('Error occurred while Updating Employee reference Information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee References Information Update successfully' ,'success',false, false);
    }

    /**
     *
     * Document section Start
     */
    public function document($id){
        $empID = $id;
        $personals = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $document = Document::where('empID' , '=', $empID)->get();
        foreach($document as $key){
            $data = $key->empID;
        }
        if(isset($data))
        {
            if($data != null){
                $data = 1;
            }
            else{
                $data = null;
            }
        }
        else{
            $data = null;
        }
         $this->setPageTitle('Update Employee Documents Information', 'Edit : Documents ' );
        return view('admin.cv.update.document', compact('personals','document','empID', 'data'));
    }

    public function storedocument(Request $request)
    {
        $input = Input::all();
        $empID = $request->empID;
        $langinfo = Document::where('empID' , '=', $empID);
        if($langinfo != null){
            $langinfo->delete();
        }
        $condition = $input['filename'];
        // Define upload path
        $destinationPath = public_path('storage/Document/'); // upload path
        foreach ($condition as $key => $condition) {
            // Upload Orginal Image
            $profileImage = $input['file_path'][$key]->getClientOriginalName();
            $input['file_path'][$key]->move($destinationPath, $profileImage);
            $skill = new Document;
            $skill->empID = $empID;
            $skill->filename = $input['filename'][$key];
            $skill->file_path = 'Document/'.$profileImage;
            $skill->save();
        }
        if (!$skill) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Documents.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Documents Update successfully' ,'success',false, false);
    }

    public function storedocumentadd(Request $requests)
    {
            $request = [
                'empID' => $requests->empID,
                'filename' => $requests->filename,
                'file_path' => $requests->file_path
            ];

            $collection = collect($request);

            $file_path = null;

            if ($collection->has('file_path') && ($request['file_path'] instanceof  UploadedFile)) {
                $file_path = $this->uploadOne($request['file_path'], 'Document');
            }

            $merge = $collection->merge(compact('file_path'));

            $brand = new Document($merge->all());

            $brand->save();

            if (!$brand) {
                        return $this->responseRedirectBack('Error occurred while Create Employee Documents.', 'error', true, true);
                    }
                    return $this->responseRedirectBack('Employee Documents Create successfully' ,'success',false, false);

    }

    public function documentsingle(Request $requests)
    {
        $params = [
            'id' => $requests->id,
            'empID' => $requests->empID,
            'filename' => $requests->filename,
            'file_path' => $requests->file_path
        ];

        $id = $params['id'];
        $personal = Document::find($id);
        $collection = collect($params);
        $file_path = null;

        if ($collection->has('file_path') && ($params['file_path'] instanceof  UploadedFile)) {

            if ($personal->file_path != null) {
                $this->deleteOne($personal->file_path);
            }

            $file_path = $this->uploadOne($params['file_path'], 'Personal');
        }else{
            $file_path = null;
            $filename = $params['filename'];
        }
        if($file_path != null){
            $merge = $collection->merge(compact('file_path'));
          }
          else{
              $merge = $collection->merge(compact('filename'));
          }

        $personal->update($merge->all());

        if (!$personal) {
            return $this->responseRedirectBack('Error occurred while Updating Employee Documents.', 'error', true, true);
        }
        return $this->responseRedirectBack('Employee Documents Update successfully' ,'success',false, false);
    }



public function fullProfile($id){

    $personal = Personalinfo::where('id',$id)->first();
    $education = Education::where('empID',$id)->get();
    $language = Language::where('empID',$id)->get();
    $employeeinfo = Employeeinfo::where('empID',$id)->first();
    $reference = Reference::where('empID',$id)->get();
    $skill = Skill::where('empID',$id)->get();
    $traning = Traning::where('empID',$id)->get();
    $workexpreance = Workexpreance::where('empID',$id)->get();
    $document = Document::where('empID',$id)->get();

    // $data = [$personal,$education,$language,$employeeinfo,$reference,$skill,$traning,$workexpreance,$document];
    // dd($data);

    return view('admin.cv.Profile.full', compact('personal','education','language','employeeinfo','reference','skill','traning','workexpreance','document'));

  }


  public function shortProfile($id){

  }

  public function completedUpdate(Request $request, $id)
        {
            // Set ALL records to a status of 0
            //DB::table('departments')->where('IsActive',1)->update(['status' => 0]);
            if($request->IsActive == 1){
                $data = Personalinfo::where('id',$id)->first();
                $data->IsActive = $request->IsActive;
                $data->update();
                return $this->responseRedirectBack('Employee Status Active! successfully' ,'success',false, false);
                //return redirect()->back()->with('message', 'Status changed!');
            }
            elseif($request->IsActive == 0){
                $data = Personalinfo::where('id',$id)->first();
                $data->IsActive = $request->IsActive;
                $data->update();
                return $this->responseRedirectBack('Employee Status Inactive! successfully' ,'success',false, false);
            }

        }

    public  function showSingle(Request $request){
        $id = $request->phoneData;
        $personal = Personalinfo::where('id',$id)->first();
        $employeeinfo = Employeeinfo::where('empID',$id)->first();
        $single = "<div class='row'>

      <div class='col-md-12 col-sm-4 col-lg-12'>
        <div class='tile'>
          <div class='tile-body'>
            <div class='card-body border'>
              <div class='A4Size'>

                <section>
                  <article>
                    <table width='100%'' cellpadding='5'>
                      <tr>
                          <th rowspan='4' width='20%'><div class='personalImage'>";
                          if(isset($personal["image"])){

                        $single .= '<a data-magnify="gallery" data-src="" data-caption="'.$personal['name'].'" data-group="a"
                                href="'.asset('public/storage/'.$personal['image']).'">
                                <img src="'. asset('public/storage/'.$personal['image']).'" class="rounded  img-thumbnail" alt="..." width="120">
                              </a>';

                        }

                             else{
                             $single .=' <img src="" class="rounded  img-thumbnail" alt="..." width="120"alt="!">';
                              }
                           $single .='  </div></th>
                        <th width="30%">PROPOSED POSITION <br> FOR THIS PROJECT</th>
                        <th width="30%">';
                        if(isset($employeeinfo['position'])){
                           $single .= $employeeinfo['position'] ;

                        }

                        $single .=' </th>

                        <th rowspan="4" width="20%">
                          <div class="personalImage">';

                                  $EmpProLink = url("/view/emplyee/single/".$personal['slug']);
                             $single .= QrCode::size(150)->generate($EmpProLink);
                             $single .='<br><input type="text" value="'.$EmpProLink.'" id="myInput" style=""> <button onclick="myFunction()" onmouseout="outFunc()" class="btn btn-info">Copy Link</button>';
                          $single .=' <a href='.route("admin.profile.short.pdf", $personal["id"]).' class="btn btn-danger">PDF</a></div>
                      </th>
                      </tr>
                      <tr>
                        <th>NAME OF STAFF</th>
                       <th> '.$personal['name'].'</th>
                      </tr>
                      <tr>
                        <th>WORK EXPERIENCE</th>

                        <th>'.$personal['expYear'].'</th>
                      </tr>
                      <tr>
                        <th>NATIONALITY</th>
                        <th>'.$personal['nationality'].'</th>
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
  </div>';
 return Response()->json($single, 200, [], JSON_UNESCAPED_UNICODE);
   //echo response()->json($single);
    }

    public function SinglePDF($id){
        $personal = $this->PersonalinfoRepository->findPersonalinfoById($id);
        $pdf = PDF::loadView('admin.cv.pdf.singlepdf', ['personal' => $personal])->setpaper('a4', 'portrait');
               return $pdf->stream();
    }
    public function fullPDF($id){
        $personal = Personalinfo::where('id',$id)->first();
        $education = Education::where('empID',$id)->get();
        $language = Language::where('empID',$id)->get();
        $employeeinfo = Employeeinfo::where('empID',$id)->first();
        $reference = Reference::where('empID',$id)->get();
        $skill = Skill::where('empID',$id)->get();
        $traning = Traning::where('empID',$id)->get();
        $workexpreance = Workexpreance::where('empID',$id)->get();
        $document = Document::where('empID',$id)->get();
        $pdf = PDF::loadView('admin.cv.pdf.Fullpdf', compact('personal','education','language','employeeinfo','reference','skill','traning','workexpreance','document'))->setpaper('a4', 'portrait');
               return $pdf->stream();
    }

}
