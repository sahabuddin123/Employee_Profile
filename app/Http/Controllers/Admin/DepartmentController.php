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
use DB;
use Mediakit;

class DepartmentController extends BaseController
{
    use UploadAble;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(){
        $department = Department::all();
        $this->setPageTitle('Department information', 'List of all Department');
        return view('admin.department.index', compact('department'));
    }
         /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function active(){
        $department = Department::where('IsActive','1')->get();
        $this->setPageTitle('Department information', 'List of all Active Department');
        return view('admin.department.index', compact('department'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function inactive(){
        $department = Department::where('IsActive','0')->get();
        $this->setPageTitle('Department information', 'List of all Inactive Department');
        return view('admin.department.index', compact('department'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $department = Department::all();
        $this->setPageTitle('Create a new Department', 'Department');
        return view('admin.department.create', compact('department'));
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $requests)
    {
        $this->validate($requests, [
            'code' => 'required|min:2',
            'department' => 'required',
        ]);

        $request = [
            'code' => $requests->code,
            'department' => $requests->department
        ];

        $collection = collect($request);
        $department = $request['department'];
        $code = $request['code'];
        $merge = $collection->merge(compact('code','department'));
        $brand = new Department($merge->all());
        $brand->save();

        if (!$brand) {
            return $this->responseRedirectBack('Error occurred while Create Employee Documents.', 'error', true, true);
        }
            return $this->responseRedirect('admin.department.index','Employee Documents Create successfully' ,'success',false, false);

}
    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($id)
    {

        //dd($departments);
        $department = Department::find($id);
        $this->setPageTitle('Update Department Information', 'Edit : '.$department->name.' Department ' );
        return view('admin.department.edit', compact('department'));
    }
    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Illuminate\Validation\ValidationException
     */
    public function update(Request $requests)
    {
        $this->validate($requests, [
            'code' => 'required|min:2',
            'department' => 'required',
        ]);
            //
        $params = [
            'code' => $requests->code,
            'department' => $requests->department
        ];
        //
        $departments = Department::find($requests->id);
        //
        $collection = collect($params);
        $department = $params['department'];
        $code = $params['code'];
        $merge = $collection->merge(compact('code','department'));
        $departments->update($merge->all());


        if (!$departments) {
            return $this->responseRedirectBack('Error occurred while updating Department information.', 'error', true, true);
        }
        return $this->responseRedirectBack('Department information updated successfully' ,'success',false, false);
    }


    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($id)
    {
        $department = Department::find($id);
        $department->delete();
        if (!$department) {
            return $this->responseRedirectBack('Error occurred while deleting Department information.', 'error', true, true);
        }
        return $this->responseRedirect('admin.department.index', 'Department information deleted successfully' ,'success',false, false);
    }

    /**
    * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
    */
    public function DepartmentIndex($id){
        $personals = Personalinfo::where('IsActive', 1)->where('department', $id)->get();
        $this->setPageTitle('Create New Link', 'List of Department Wise Employee');
        return view('admin.link.department.create', compact('personals'));
    }

    public function completedUpdate(Request $request, $id)
        {
            // Set ALL records to a status of 0
            //DB::table('departments')->where('IsActive',1)->update(['status' => 0]);
            if($request->IsActive == 1){
                $data = Department::where('id',$id)->first();
                $data->IsActive = $request->IsActive;
                $data->update();
                return $this->responseRedirectBack('Department Status Active! successfully' ,'success',false, false);
                //return redirect()->back()->with('message', 'Status changed!');
            }
            elseif($request->IsActive == 0){
                $data = Department::where('id',$id)->first();
                $data->IsActive = $request->IsActive;
                $data->update();
                return $this->responseRedirectBack('Department Status Inactive! successfully' ,'success',false, false);
            }

        }

 //
}
