<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\BaseController;
use App\Contracts\PersonalinfoContract;
use App\Models\Link;
use App\Models\Personalinfo;
use App\Models\Department;
use App\Models\Document;
use App\Models\Education;
use App\Models\Employeeinfo;
use App\Models\Language;
use App\Models\Reference;
use App\Models\Skill;
use App\Models\Traning;
use App\Models\Workexpreance;
use App\Models\Permission;
use PDF;
use App;
use Dompdf\Dompdf;
class LinkCreateController extends BaseController
{
    /**
    * @var PersonalinfoContract
    */
    protected $PersonalinfoRepository;

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
        $personals = Personalinfo::where('IsActive', 1)->get();
        $this->setPageTitle('Create New Link', 'List of all Employee');
        return view('admin.link.index', compact('personals'));
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
        $insert = new Link;
        $insert->linkid = $linkid;
        $insert->projectname = $projectname;
        $insert->starttime = $starttime;
        $insert->endtime = $endtime;
        $insert->link = $micro;
        $insert->cvlink = $cvlink;
        $insert->save();
        //
        $premission = new Permission;
        $premission->linksID = $micro;
        $premission->role = $request->role;
        $premission->save();
        //
        if(!$insert && $premission){
            return $this->responseRedirectBack('Error occurred while Create Link.', 'error', true, true);
        }
        else{
            return $this->responseRedirect('admin.link.linkpage','Employee Link Create successfully' ,'success',false, false);
        }
    }
    /**
     *
     */
    public function showLink(Request $request)
    {
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = link::where('link', $request->link)->get();
        $roleData = Permission::where('linksID', $request->link)->first();
        foreach ($data as $key => $value) {
            $id = json_decode($value['linkid']);
            $cvlink = $value['cvlink'];
            $full = url('/view/Who/SjdFv/Qwrd/'.$value['link']);
            $linksID = $roleData->linksID;
            $role = $roleData->role;
             if($role == 0){
                $userLink = url("/view/emplyee/sing/short");
             }
             elseif($role == 1){
                $userLink = url("view/emplyee/singfQs/full");
             }
             elseif($role == 2){
                $userLink = url("/view/emplyee/sindocz/docx");
             }
            $link = $value['link'];
            $dbstart = strtotime($value['starttime']);
            $dbend = strtotime($value['endtime']);
            if( $dbstart <=$start && $dbend != $end){
                return view('admin.link.show',compact('id','full', 'link', 'cvlink','userLink', 'linksID'));
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

        $personals = $this->PersonalinfoRepository->listPersonalinfo();
        $this->setPageTitle('Personal information', 'List of all Employee');
        $data = Link::where('id', $id)->first();
        $roleData = Permission::where('linksID', $data->link)->first();
        $role = $roleData->role;
        $roleid = $roleData->id;
        $linkpageid = $data->id;
        $linkid = json_decode($data->linkid);
        return view('admin.link.edit', compact('personals','data','role','linkid','roleid','linkpageid'));
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
        $insert = Link::find($request->linkpageid);
        $insert->linkid = $linkid;
        $insert->projectname = $projectname;
        $insert->starttime = $starttime;
        $insert->endtime = $endtime;
        //$insert->link = $micro;
        $insert->cvlink = $cvlink;
        $insert->update();
        //
        $premission = Permission::find($request->roleid);
        //$premission->linksID = $micro;
        $premission->role = $request->role;
        $premission->update();
        //
        if(!$insert && $premission){
            return $this->responseRedirectBack('Error occurred while Update Link.', 'error', true, true);
        }
        else{
            return $this->responseRedirect('admin.link.linkpage','Employee Link Update successfully' ,'success',false, false);
        }
    }

    /**
     *
     */
    public function linkpage(){
        $data = Link::all();
        return view('admin.link.linkpage', compact('data'));
    }
    /**
     * PDF Generate
    */
    public function docxPDF(Request $request){
        $data = Link::where('link', $request->link)->get();
        $roleData = Permission::where('linksID', $request->link)->first();
        foreach ($data as $key => $value) {
                $id = json_decode($value['linkid']);
               // $cvlink = $value['cvlink'];
             $link = $value['link'];
             $linksID = $roleData->linksID;
             $role = $roleData->role;

                $pdf = $pdf = PDF::loadView('admin.pdf.docx',['id' => $id, 'data' => $data, 'linksID' => $linksID, 'role' => $role, 'link' => $link])->setpaper('a4', 'portrait');
                return $pdf->stream();
        }
    }
}
