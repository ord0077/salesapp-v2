<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Risk;
use App\User;
use DB;
use Illuminate\Support\Facades\Validator;
class ProfilesController extends Controller
{

public function __construct()
{
$this->middleware('auth')->except('mytest');
}



public function profiles(){
$users = DB::table('risks')
            ->leftJoin('users', 'users.id', '=', 'risks.user_id')
            ->select('risks.*', 'users.name')
            ->get();
return view('admin.profile',['users' => $users]);
}


public function profile_single($id){
    return view('admin.profile-single',['profiles' => Risk::find($id)]);
}


public function my_risk_profiles($id){

    return view('user.my_risk_profile',[
        'my_risk_profiles' => Risk::where('user_id', '=', $id)->orderBy('id','dsc')->paginate(10)
    ]);
}

public function my_risk_profile_single($id){

    $data = Risk::find($id);
    $user = User::find($data->user_id);

    return view('user.my-risk-profile-single',compact('data','user'));
}


public function checkClientDetails(Request $r){
    
         
    $validator = Validator::make($r->all(), [
        'client_name' => 'required|min:3|max:50',
        'client_email' => 'required',    
        'client_number' => 'required:min:11|max:13', 
        'client_cnic' => 'required|min:15|max:15|unique:risks|regex:/^[0-9]{5}-{1}[0-9]{7}-{1}[0-9]{1}$/'  
    ]);

    if ($validator->fails()) {
        return response()->json([ 'success' => false, 'errors' => $validator->errors() ]); 
    }

    return response()->json([ 'success' => true ]); 

   
   
}


public function save_risk_profile(Request $r){      



    $counts = DB::table('rp_count')->pluck('counts');
    $res = $counts[0];
    if($res > 0){
        DB::table('rp_count')->where('id','=',1)->update(['counts'=>$res+1]);
    }
    else{
        DB::table('rp_count')->insert(['counts'=>$res++]);
    }

    $args = [
    "client_name" => $r->client_name,
    "client_email" => $r->client_email,
    "client_number" => $r->client_number,
    "client_cnic" =>  $r->client_cnic,
    "location" => $r->location,
    "choosen_fund" => explode('|',$r->choosen_fund)[1] ?? '',
    "choosen_fund_id" => explode('|',$r->choosen_fund)[0] ?? '',
    "irf" => $r->irf,
    "crf" => $r->crf,
    "user_id" => $r->user_id,
    "decision" => $r->decision,
    "userScore" => array_sum([$r->q1,$r->q2,$r->q3,$r->q4,$r->q5,$r->q6,$r->q7,$r->q8]),
    ];

    
    $success = Risk::create($args);
    return $success ? redirect('rpqmessage') : redirect('welcome')->with('rpq_err_msg','RPQ has not been submitted');


}
}
