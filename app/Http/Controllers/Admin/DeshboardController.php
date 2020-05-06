<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Doctrine\Instantiator\Exception\InvalidArgumentException;
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
use Mediakit;
use PragmaRX\Tracker\Vendor\Laravel\Facade as tracker;
use Illuminate\Support\Carbon;
use PragmaRX\Tracker\Support\Minutes;
use Illuminate\Support\Facades\DB;
use CyrildeWit\EloquentViewable\Views;

class DeshboardController extends BaseController
{

    public function index(Link $post){
        $employee = Personalinfo::all();
        $employee = $employee->count();
        //
        $activeEmp = Personalinfo::where('IsActive', 1)->get();
        $activeEmp = $activeEmp->count();
        //
        $department = Department::all();
        $department = $department->count();
        //
        $activeDep = Department::where('IsActive', 1)->get();
        $activeDep = $activeDep->count();
        //
        $link = Link::all();
        $link = $link->count();
        //
        $visitor = Tracker::currentSession();
        $visitor = $visitor->count();
        //
        $sessions = Tracker::sessions(60 * 24);
        //dd($sessions);
        $users = Tracker::onlineUsers();
        $Onlineusers = $users->count();
        //dd($users);
        $pageViews = Tracker::pageViews(60 * 24 * 30);
        foreach($pageViews as $todayview){
            $Todaydate = date('d-M', strtotime($todayview->date));
            $Todaytotal = $todayview->total;
        }

        return view('admin.dashboard.index', compact('employee','activeEmp','department','activeDep','link','visitor','Onlineusers','Todaydate','Todaytotal'));



    }



}
