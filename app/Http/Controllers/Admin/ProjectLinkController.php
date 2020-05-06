<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Http\Controllers\BaseController;
use App\Contracts\ProjectContract;
use App\Models\ProjectLink;
use App\Models\ProjectPermission;
use App;
use Dompdf\Dompdf;
use PDF;
class ProjectLinkController extends BaseController
{
    /**
     * @var ProjectContract
     */
    protected $ProjectRepository;
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
        $personals = Project::where('IsActive', 1)->get();
        $this->setPageTitle('Create New Link', 'List of all Project');
        return view('admin.projectlink.index', compact('personals'));
    }
    /**
     *
     */
    public function store(Request $request){
        //dd($request->all());
        $linkid = $request->linkid;
        $projectname = $request->projectname;
        $starttime = $request->starttime;
        $endtime = $request->endtime;
        $cvlink = $request->cvlink;
        $linkid = json_encode($linkid);
        //
        $micro = microtime(true)*10000;
        $insert = new ProjectLink;
        $insert->linkid = $linkid;
        $insert->projectname = $projectname;
        $insert->starttime = $starttime;
        $insert->endtime = $endtime;
        $insert->link = $micro;
        $insert->cvlink = $cvlink;
        $insert->save();
        //
        $premission = new ProjectPermission;
        $premission->linksID = $micro;
        $premission->role = $request->role;
        $premission->save();
        //
        if(!$insert && $premission){
            return $this->responseRedirectBack('Error occurred while Create Project Link.', 'error', true, true);
        }
        else{
            return $this->responseRedirect('admin.projectlink.linkpage','Project Link Create successfully' ,'success',false, false);
        }
    }
    /**
     *
     */
    public function showLink(Request $request)
    {
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = ProjectLink::where('link', $request->link)->get();
        $roleData = ProjectPermission::where('linksID', $request->link)->first();
        foreach ($data as $key => $value) {
            $id = json_decode($value['linkid']);
            $cvlink = $value['cvlink'];
            $full = url('/projectview/project/list/'.$value['link']);
            $linksID = $roleData->linksID;
            $role = $roleData->role;
             if($role == 0){
                $userLink = url("/projectview/emplyee/sing/short");
             }
             elseif($role == 1){
                $userLink = url("/projectview/emplyee/singfQs/full");
             }
             elseif($role == 2){
                $userLink = url("/projectview/emplyee/sindocz/docx");
             }
            $link = $value['link'];
            $dbstart = strtotime($value['starttime']);
            $dbend = strtotime($value['endtime']);
            if( $dbstart <=$start && $dbend != $end){
                return view('admin.projectlink.show',compact('id','full', 'link', 'cvlink','userLink', 'linksID'));
            }
            else{
                echo "404 Not Found";
            }
        }
    }
    /**
     * Edit
    */
    public function editFunc($id){

        $personals = $this->ProjectRepository->listData();
        $this->setPageTitle('Project information', 'List of all Project');
        $data = ProjectLink::where('id', $id)->first();
        $roleData = ProjectPermission::where('linksID', $data->link)->first();
        $role = $roleData->role;
        $roleid = $roleData->id;
        $linkpageid = $data->id;
        $linkid = json_decode($data->linkid);
        return view('admin.projectlink.edit', compact('personals','data','role','linkid','roleid','linkpageid'));
    }
    /**
     * Update
     */
    public function update(Request $request){
        //dd($request->all());
        $linkid = $request->linkid;
        $projectname = $request->projectname;
        $starttime = $request->starttime;
        $endtime = $request->endtime;
        $cvlink = $request->cvlink;
        $linkid = json_encode($linkid);
        //
        //$micro = microtime(true)*10000;
        $insert = ProjectLink::find($request->linkpageid);
        $insert->linkid = $linkid;
        $insert->projectname = $projectname;
        $insert->starttime = $starttime;
        $insert->endtime = $endtime;
        //$insert->link = $micro;
        $insert->cvlink = $cvlink;
        $insert->update();
        //
        $premission = ProjectPermission::find($request->roleid);
        //$premission->linksID = $micro;
        $premission->role = $request->role;
        $premission->update();
        //
        if(!$insert && $premission){
            return $this->responseRedirectBack('Error occurred while Update Link.', 'error', true, true);
        }
        else{
            return $this->responseRedirect('admin.projectlink.linkpage','Employee Link Update successfully' ,'success',false, false);
        }
    }

    /**
     *
     */
    public function linkpage(){
        $data = ProjectLink::all();
        return view('admin.projectlink.linkpage', compact('data'));
    }
    /**
     * PDF Generate
    */
    public function docxPDF(Request $request){
        $data = ProjectLink::where('link', $request->link)->get();
        $roleData = ProjectPermission::where('linksID', $request->link)->first();
        foreach ($data as $key => $value) {
                $id = json_decode($value['linkid']);
               // $cvlink = $value['cvlink'];
             $link = $value['link'];
             $linksID = $roleData->linksID;
             $role = $roleData->role;

             $pdf = PDF::loadView('admin.projectpdf.docx',['id' => $id, 'data' => $data, 'linksID' => $linksID, 'role' => $role, 'link' => $link])->setpaper('a4', 'portrait');
                return $pdf->stream();
        }
    }
}
