<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController;
use App\Models\ProjectProgress;
use App\Models\Project;
use Illuminate\Support\Facades\Input;
class ProjectProgressController extends BaseController
{


    public function index(){
        $personals = ProjectProgress::select('Pid')->distinct()->get(['Pid']);
        $this->setPageTitle('Create Project Progress', '' );
       return view('admin.progress.index', compact('personals'));
   }

    public function create(){
         $this->setPageTitle('Create Project Progress', '' );
        return view('admin.progress.create');
    }

    /**
     * educatuion section Start
     *
     */
    public function edit($id){
        $Pid = $id;
        $personals = Project::find($id);
        $educations = ProjectProgress::where('Pid' , '=', $Pid)->get();
         $this->setPageTitle('Update Project Progress', '' );
        return view('admin.progress.edit', compact('personals','educations','Pid'));
    }

    public function update(Request $request)
    {
        //dd(Input::all());
        $this->validate($request,[
                'Dgname' => 'required|max:255',
                'Pid' => 'required|max:255',
            ]);

        $input = Input::all();
        $Pid = $request->Pid;
        $eduinfo = ProjectProgress::where('Pid' , '=', $Pid);
        if($eduinfo != null){
            $eduinfo->delete();
        }
        //dd($eduinfo);
        $condition = $input['Dgname'];
        foreach ($condition as $key => $condition) {
            $education = new ProjectProgress;
            $education->Pid = $Pid;
            $education->Dgname = $input['Dgname'][$key];
            $education->twork = $input['twork'][$key];
            $education->cwork = $input['cwork'][$key];
            $education->wstart = $input['wstart'][$key];
            $education->wend = $input['wend'][$key];
            $education->save();
        }
        if (!$education) {
            return $this->responseRedirectBack('Error occurred while Updating Project Progress information.', 'error', true, true);
        }
        return $this->responseRedirect('admin.progress.index','Project Progress information added successfully' ,'success',false, false);
    }

}
