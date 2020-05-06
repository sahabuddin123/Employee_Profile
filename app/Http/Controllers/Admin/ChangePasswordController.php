<?php

namespace App\Http\Controllers\Admin;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Models\Admin;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
class ChangePasswordController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Where to redirect admins after login.
     *
     * @var string
     */
   

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function showChangePasswordForm(){
        return view('admin.auth.changepassword');
    }

    /**
 * @param Request $request
 * @return \Illuminate\Http\RedirectResponse
 * @throws \Illuminate\Validation\ValidationException
 */
    public function changePassword(Request $request){
            $data = $request->all();
            $Current_password = $data['current-password'];
            $New_password = $data['new-password'];
            $admin = Admin::where('id', '=', 1)->first();
            $mainPass = $admin->password;
            //print_r($admin);
            
            if(Hash::check($Current_password,$mainPass)){
                //echo "true";
                $validatedData = $request->validate([
                    'current-password' => 'required',
                    'new-password' => 'required|string|min:6|confirmed',
                ]);
                    //Change Password
                    $Current_password = bcrypt($New_password);
                    $su = Admin::where('id', '=', 1)->update(['password' => $Current_password ]);
                    if(isset($su)){
                        //print_r($su);
                    return redirect()->back()->with("success","Password changed successfully !");
                    }
                    else{
                        return redirect()->back()->with("error","Ops! Please Try Again");
                    }
                
            }else{
                return redirect()->back()->with("error","Your current password does not matches with the password you provided. Please Try Again");
            }
            

    }



}

