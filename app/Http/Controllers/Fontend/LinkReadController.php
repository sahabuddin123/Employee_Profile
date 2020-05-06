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

class LinkReadController extends BaseController
{
    /**
     *
     */
    public function UserView($link){
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = link::where('link', $link)->get();
        $roleData = Permission::where('linksID', $link)->first();
        foreach ($data as $key => $value) {
            $id = json_decode($value['linkid']);
            $cvlink = $value['cvlink'];
            $role = $roleData->role;
            $link = $value['link'];
            $dbstart = strtotime($value['starttime']);
            $dbend = strtotime($value['endtime']);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.user.show',compact('id', 'link', 'cvlink','role'));
            }
            else{
                echo "404 Not Found";
            }

        }
    }
    /**
     *
     */
    public function EmpShort($slug, $arry){

    }
    /**
     *
     */
    public function EmpFull($slug, $link){

        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = Link::where('link', $link)->first();

        $personal = Personalinfo::where('slug',$slug)->first();
        $education = Education::where('empID',$personal->id)->get();
        $language = Language::where('empID',$personal->id)->get();
        $employeeinfo = Employeeinfo::where('empID',$personal->id)->first();
        $reference = Reference::where('empID',$personal->id)->get();
        $skill = Skill::where('empID',$personal->id)->get();
        $traning = Traning::where('empID',$personal->id)->get();
        $workexpreance = Workexpreance::where('empID',$personal->id)->get();
        $cvlink = $data->cvlink;

            $dbstart = strtotime($data->starttime);
            $dbend = strtotime($data->endtime);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.fullcv',compact('personal','education','language','employeeinfo','reference','skill','traning','workexpreance','cvlink'));
            }
            else{
                echo "404 Not Found";
            }

    }
    /**
     *
     */
    public function EmpDocx($slug, $link){
          $start = strtotime(date('Y-m-d'));
          $end = strtotime(date('Y-m-d'));
          $data = Link::where('link', $link)->first();
          $personal = Personalinfo::where('slug',$slug)->first();
          $education = Education::where('empID',$personal->id)->get();
          $language = Language::where('empID',$personal->id)->get();
          $employeeinfo = Employeeinfo::where('empID',$personal->id)->first();
          $reference = Reference::where('empID',$personal->id)->get();
          $skill = Skill::where('empID',$personal->id)->get();
          $traning = Traning::where('empID',$personal->id)->get();
          $workexpreance = Workexpreance::where('empID',$personal->id)->get();
          $document = Document::where('empID',$personal->id)->get();
          $cvlink = $data->cvlink;
              $dbstart = strtotime($data->starttime);
              $dbend = strtotime($data->endtime);
            if( $dbstart <=$start && $dbend != $end){
                return view('fontend.docx',compact('document','cvlink'));
            }
            else{
                echo "404 Not Found";
            }

        }
    /**
     * 
    */
    public function EmpDocxQrs($slug, $link){
        $start = strtotime(date('Y-m-d'));
        $end = strtotime(date('Y-m-d'));
        $data = Link::where('link', $link)->first();
        $personal = Personalinfo::where('slug',$slug)->first();
        $education = Education::where('empID',$personal->id)->get();
        $language = Language::where('empID',$personal->id)->get();
        $employeeinfo = Employeeinfo::where('empID',$personal->id)->first();
        $reference = Reference::where('empID',$personal->id)->get();
        $skill = Skill::where('empID',$personal->id)->get();
        $traning = Traning::where('empID',$personal->id)->get();
        $workexpreance = Workexpreance::where('empID',$personal->id)->get();
        $document = Document::where('empID',$personal->id)->get();
        $cvlink = $data->cvlink;
            $dbstart = strtotime($data->starttime);
            $dbend = strtotime($data->endtime);
          if( $dbstart <=$start && $dbend != $end){
              return view('fontend.docxQrs',compact('personal','education','language','employeeinfo','reference','skill','traning','workexpreance','cvlink','document'));
          }
          else{
              echo "404 Not Found";
          }

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
         
        $personal = Personalinfo::where('slug',$slug)->first();
        $education = Education::where('empID',$personal->id)->get();
        $language = Language::where('empID',$personal->id)->get();
        $employeeinfo = Employeeinfo::where('empID',$personal->id)->first();
        $reference = Reference::where('empID',$personal->id)->get();
        $skill = Skill::where('empID',$personal->id)->get();
        $traning = Traning::where('empID',$personal->id)->get();
        $workexpreance = Workexpreance::where('empID',$personal->id)->get();
        

            
            if($personal){
                return view('fontend.Singleview',compact('personal','education','language','employeeinfo','reference','skill','traning','workexpreance'));
            }
            else{
                echo "404 Not Found";
            }
    }
    

}
