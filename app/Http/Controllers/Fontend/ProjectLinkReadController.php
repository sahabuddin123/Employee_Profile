<?php

namespace App\Http\Controllers\Fontend;

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
use App\Models\Project;
use App\Contracts\ProjectContract;
use App\Models\ProjectLink;
use App\Models\ProjectPermission;
class ProjectLinkReadController extends BaseController
{
    /**
     *
     */
    public function UserView($link){
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = ProjectLink::where('link', $link)->get();
        $roleData = ProjectPermission::where('linksID', $link)->first();
        foreach ($data as $key => $value) {
            $id = json_decode($value['linkid']);
            $cvlink = $value['cvlink'];
            $role = $roleData->role;
            $link = $value['link'];
            $dbstart = strtotime($value['starttime']);
            $dbend = strtotime($value['endtime']);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.project.user.show',compact('id', 'link', 'cvlink','role'));
            }
            else{
                echo "404 Not Found";
            }

        }
    }
    /**
     *
     */
    public function EmpShort($slug, $link){
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = ProjectLink::where('link', $link)->first();

        $personals = Project::where('slug',$slug)->first();
        $cvlink = $data->cvlink;

            $dbstart = strtotime($data->starttime);
            $dbend = strtotime($data->endtime);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.project.short',compact('personals','cvlink'));
            }
            else{
                echo "404 Not Found";
            }
    }
    /**
     *
     */
    public function EmpFull($slug, $link){

        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = ProjectLink::where('link', $link)->first();

        $personals = Project::where('slug',$slug)->first();
        $cvlink = $data->cvlink;

            $dbstart = strtotime($data->starttime);
            $dbend = strtotime($data->endtime);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.project.fullcv',compact('personals','cvlink'));
            }
            else{
                echo "404 Not Found";
            }

    }
    /**
     *
     */
    public function EmpDocx($slug, $link){
        //   $start = strtotime(date('Y-m-d'));
        //   $end = strtotime(date('Y-m-d'));
        //   $data = ProjectLink::where('link', $link)->first();
        //   $personal = Project::where('slug',$slug)->first();
        //   $cvlink = $data->cvlink;
        //       $dbstart = strtotime($data->starttime);
        //       $dbend = strtotime($data->endtime);
        //     if( $dbstart <=$start && $dbend != $end){
        //         return view('fontend.docx',compact('document','cvlink'));
        //     }
        //     else{
        //         echo "404 Not Found";
        //     }
        echo "Access denied";
        }
    /**
     *
    */
    public function EmpDocxQrs($slug, $link){
        // $start = strtotime(date('Y-m-d'));
        // $end = strtotime(date('Y-m-d'));
        // $data = ProjectLink::where('link', $link)->first();
        // $personal = Project::where('slug',$slug)->first();
        // $cvlink = $data->cvlink;
        //     $dbstart = strtotime($data->starttime);
        //     $dbend = strtotime($data->endtime);
        //   if( $dbstart <=$start && $dbend != $end){
        //       return view('fontend.project.docxQrs',compact('personal','cvlink'));
        //   }
        //   else{
        //       echo "404 Not Found";
        //   }
        echo "Access denied";

      }
    /**
     *
     */
    public function UserShort($link){

    }
    /**
     *
     */
    public function UserFull($link){

    }
    /**
     *
     */
    public function UserDox($link){

    }

    public function Singleview($slug){

        $personals = Project::where('slug',$slug)->first();
            if($personals){
                return view('fontend.project.Singleview',compact('personals'));
            }
            else{
                echo "404 Not Found";
            }
    }

}
