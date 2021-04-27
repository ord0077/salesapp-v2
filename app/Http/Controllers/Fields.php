<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use DB;
use App\Form;
use App\Field;
use App\Mail\Correction;
use App\Mail\Correction_Response;

class Fields extends Controller
{

  public function __construct()
  {
    $this->middleware('auth');
  }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $data = DB::table('fields')->where('user_id',\Auth::user()->id)->get();
      return view('fields.list',['data' => $data]);
    }

    public function corrections(Request $request,$id)
    {
       if(!$request->crs && !$request->cd && !$request->bd && !$request->ids && !$request->od && !$request->fd && !$request->ndFirst && !$request->ndSecond){
         return back()->with('err','Atleast 1 field is required to send request.');
       }

      DB::table('discussions')->insert([
        'form_id'=>$id,
        'msg'=>$request->msg,
        'receiver_id' => $request->user_id,
        'sender_id' => \Auth::user()->id,
        'created_at' => now(),
        'updated_at' => now(),
      ]);

        $nominees = array($request->ndFirst,$request->ndSecond);
        $data = [
        'form_id' => $id,
        'customer_details' => json_encode($request->cd),
        'nominee_details' => json_encode($nominees),
        'bank_details' => json_encode($request->bd),
        'investment_details' => json_encode($request->ids),
        'other_details' => json_encode($request->od),
        'fatca_details' => json_encode($request->fd),
        'crs_details' => json_encode($request->crs),
        'user_id' => $request->user_id,
        'status' => 'unchecked',
        "created_at" => now(),
        "updated_at" => now(),
        ];
        // echo "<pre>";
        // print_r($data);
        // die;

        // dd($data);


        $success = (DB::table('fields')->where('form_id',$id)->exists()) 
            ? DB::table('fields')->where('form_id',$id)->update($data) 
            : DB::table('fields')->insert($data) ;

           


        if($success){
          $status_updated = DB::table('forms')->where('form_id',$id )->update(['status' => 1]);
          $result_msg = ['msg','Your form has been submitted.'];  
          
          // $sales_email = DB::table('users')->where('id',$request->user_id)->first()->email;
          // $send = Mail::to($sales_email)->send(new Correction());
          // 		if (empty($send)) {
		      //     \DB::table('email_activities')->insert([
		      //     'status' => 'success',
		      //     'msg' => 'mail has been sent successfully',
		      //     'action' => 'send back to changes',
		      //     'created_at' => now()
		      //     ]);
		      //     }
		      //     else {          
	
		      //     \DB::table('email_activities')->insert([
		      //     'status' => 'fail',
		      //     'msg' => 'mail not sent',
		      //      'action' => 'send back to changes',
		      //     'created_at' => now()
		      //     ]);	           
		      //     }
          //  $recipients = \DB::table('users')->select('email')->where('role_id',3)->get();
	 	
	 	//  foreach ($recipients as $recipient) {
	 	// 	$send = Mail::to($recipient)->send(new Correction());
	 	// 	if (empty($send)) {
		//           \DB::table('email_activities')->insert([
		//           'status' => 'success',
		//           'msg' => 'mail has been sent successfully',
		//           'action' => 'send back to changes',
		//           'created_at' => now()
		//           ]);
		//           }
		//           else {          
	
		//           \DB::table('email_activities')->insert([
		//           'status' => 'fail',
		//           'msg' => 'mail not sent',
		//            'action' => 'send back to changes',
		//           'created_at' => now()
		//           ]);	           
		//           }
	 	// }
	 	
        }
        else{
        $result_msg = ['err','Your form has not been submitted.'];  
        }

        list($msg_type,$msg) = $result_msg;

        return back()->with($msg_type,$msg);
    }

    public function edit($id)
    {
        $customer_id = Form::where('form_id',$id)->first()->customer_id;
        $cds = json_decode(Field::where('form_id',$id)->first()->customer_details);
        $nds = json_decode(Field::where('form_id',$id)->first()->nominee_details);
        $bds = json_decode(Field::where('form_id',$id)->first()->bank_details);
        $ids = json_decode(Field::where('form_id',$id)->first()->investment_details);
        $ods = json_decode(Field::where('form_id',$id)->first()->other_details);
        $fds = json_decode(Field::where('form_id',$id)->first()->fatca_details);
        $crs = json_decode(Field::where('form_id',$id)->first()->crs_details);
        $data = [];
     
    

      
        
      if(!is_null($cds)){ 
        foreach($cds as $d){
        $custom_old_data = \DB::table('customers')->where('id',$customer_id)->first()->$d;        
        $cds_new[] = [$d,$custom_old_data];
        
        }
      }

      if(!is_null($nds)){ 
        $nds_new = array();
        $var = "first";
        foreach($nds as $nd){
          $nid = null;
          foreach($nd as $key=>$n){
            if($key == 0){
              $nid = $n;
              $custom_old_data = \DB::table('nominees')->where('id',$nid)->first()->id;
              $nds_new[$var][] = ['id',$custom_old_data];
            }
            else{
              $custom_old_data = \DB::table('nominees')->where('id',$nid)->first()->$n;
              $nds_new[$var][] = [$n,$custom_old_data];
            }
          }
          echo "<br>";
          $var = "second";
        }
      }


      if(!is_null($crs)){ 
        foreach($crs as $d){
        $custom_old_data = \DB::table('c_r_s')->where('customer_id',$customer_id)->first()->$d;        
        $crs_new[] = [$d,$custom_old_data];
        }
      }  

    
      if(!is_null($bds)){ 
        foreach($bds as $d){
        $custom_old_data = \DB::table('bank_details')->where('customer_id',$customer_id)->first()->$d;        
        $bds_new[] = [$d,$custom_old_data];
        }
      }  

      if(!is_null($ids)){ 
        foreach($ids as $d){
        $custom_old_data = \DB::table('investment_details')->where('customer_id',$customer_id)->first()->$d;        
        $ids_new[] = [$d,$custom_old_data];
        }
      }  

      if(!is_null($ods)){ 
        foreach($ods as $d){
        $custom_old_data = \DB::table('other_details')->where('customer_id',$customer_id)->first()->$d;        
        $ods_new[] = [$d,$custom_old_data];
        }
      }  

       if(!is_null($fds)){ 
        foreach($fds as $d){
        $custom_old_data = \DB::table('fatca_details')->where('customer_id',$customer_id)->first()->$d;        
        $fds_new[] = [$d,$custom_old_data];
        }
      }  

      return view('fields.edit',[
        'form_id' => $id,
        'cds_new' => $cds_new ?? null,
        'nds_new' => $nds_new ?? null,
        'bds_new' => $bds_new ?? null,
        'ids_new' => $ids_new ?? null,
        'ods_new' => $ods_new ?? null,
        'fds_new' => $fds_new ?? null,
        'crs_new' => $crs_new ?? null,
        'customer_id' => $customer_id,
        'aiw_db' => \DB::table('investment_details')
                    ->where('customer_id',$customer_id)
                    ->first()->amount_in_words,
        'msgs' => \DB::table('discussions')->where('form_id',$id)->get(),
        ]);


}


public function update(Request $request, $id)
{  
  
  $customer_id = \DB::table('forms')->where('form_id',$id)->first()->customer_id;

  if($request->hasFile('zakat_certificate')){
  $zakat_certificate = $request->zakat_certificate->getClientOriginalName();
  $request->zakat_certificate->move(public_path('uploads/zakat_certificates/'),$zakat_certificate);	
  $zc_success = DB::table('customers')->where('id',$customer_id)->update(['zakat_certificate' => $zakat_certificate]);	
  }

  if($request->hasFile('cnic_attachment')){
  $cnic_attachment = $request->cnic_attachment->getClientOriginalName();
  $request->cnic_attachment->move(public_path('uploads/cnic_attachment/'),$cnic_attachment);  
  $cnic_attachment_success = DB::table('customers')->where('id',$customer_id)->update(['cnic_attachment' => $cnic_attachment]);  
  }

  if($request->hasFile('soi_attachment')){
  $soi_attachment = $request->soi_attachment->getClientOriginalName();
  $request->soi_attachment->move(public_path('uploads/soi_attachment/'),$soi_attachment);  
  $soi_attachment_success = DB::table('customers')->where('id',$customer_id)->update(['soi_attachment' => $soi_attachment]);  
  }

  if($request->hasFile('attachment')){
  $attachment = $request->attachment->getClientOriginalName();
  $request->attachment->move(public_path('uploads/investment_detail_attachments/'),$attachment);	
  $attach_success = DB::table('investment_details')->where('customer_id',$customer_id)->update(['attachment' => $attachment]);	
  }

  if($request->hasFile('wform')){
  $wform = $request->wform->getClientOriginalName();
  $request->wform->move(public_path('uploads/wforms/'),$wform);	
  $wf_success = DB::table('fatca_details')->where('customer_id',$customer_id)->update(['wform' => $wform]);	
  }



  if($request['cd']){    
    foreach ($request['cd'] as $key => $value) {
     $cd_success = DB::table('customers')->where('id',$customer_id)->update([$key => $value]);
    }
  }
  
  if($request['ndfirst']){
    $nid = null;
    foreach ($request['ndfirst'] as $key => $value) {
      if($key == 'id'){
        $nid = $value;
      }
      else{
        $nd_success = DB::table('nominees')->where('id',$nid)->update([$key => $value]);
      }
     }
  }
  if($request['ndsecond']){
    $nid = null;
    foreach ($request['ndsecond'] as $key => $value) {
      if($key == 'id'){
        $nid = $value;
      }
      else{
        $nd_success = DB::table('nominees')->where('id',$nid)->update([$key => $value]);
      }
     }
  }

  // dd($request['crs']);

  if($request['crs']){    
    foreach ($request['crs'] as $key => $value) {
     $crs_success = DB::table('c_r_s')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['bd']){    
    foreach ($request['bd'] as $key => $value) {
     $bd_success = DB::table('bank_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['ids']){    
    foreach ($request['ids'] as $key => $value) {

      $ids_arr = (!$request->aiw_value) ? [$key => $value] : [
        $key => $value,
        'amount_in_words' => $request->aiw_value 
      ];

     $ids_success = DB::table('investment_details')->where('customer_id',$customer_id)
     ->update($ids_arr);
    }
  }

   if($request['od']){    
    foreach ($request['od'] as $key => $value) {
     $od_success = DB::table('other_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }

  if($request['fd']){    
    foreach ($request['fd'] as $key => $value) {
     $fd_success = DB::table('fatca_details')->where('customer_id',$customer_id)->update([$key => $value]);
    }
  }
if(isset($zc_success) 
|| isset($attach)
|| isset($cnic_attachment_success)
|| isset($soi_attachment_success)
|| isset($wf_success)
|| isset($cd_success)
|| isset($crs_success)
|| isset($nd_success) 
|| isset($bd_success)
|| isset($ids_success)
|| isset($od_success)
|| isset($fd_success)){
//  dd($id);
  $success = DB::table('fields')
  ->where('form_id',$id)
  ->update(['status' => 'checked']);

  $success = DB::table('forms')
  ->where('form_id',$id)
  ->update(['status' => 2]);

  $insert = DB::table('discussions')->insert([
  'form_id'=>$id,
  'msg'=>$request->msg,
  'receiver_id' => \DB::table('discussions')
                  ->where('form_id',$id)
                  ->where('sender_id','!=',\Auth::user()->id)
                  ->first()->sender_id,
  'sender_id' =>  \Auth::user()->id,
  'created_at' => now(),
  'updated_at' => now(),
  ]);

  
  	
	$user_id = DB::table('forms')->where('form_id',$id)->first()->assigned_to;
			
	$retail_email = DB::table('users')->where('id',$user_id)->first();
  
	  if($retail_email){
	  
		 $send = Mail::to($retail_email->email)->send(new Correction_Response()); 
		 	if (empty($send)) {
		          \DB::table('email_activities')->insert([
		          'status' => 'success',
		          'msg' => 'mail has been sent successfully',
		          'action' => 'Field update',
		          'created_at' => now()
		          ]);
		          }
		          else {          
	
		          \DB::table('email_activities')->insert([
		          'status' => 'fail',
		          'msg' => 'mail not sent',
		           'action' => 'Field update',
		          'created_at' => now()
		          ]);	           
		          } 	
	  }
	  
	 $recipients = \DB::table('users')->select('email')->where('role_id',3)->get();
	 	
	 	//  foreach ($recipients as $recipient) {
	 	// 	$send = Mail::to($recipient)->send(new Correction_Response());
	 	// 	if (empty($send)) {
		//           \DB::table('email_activities')->insert([
		//           'status' => 'success',
		//           'msg' => 'mail has been sent successfully',
		//           'action' => 'Field update',
		//           'created_at' => now()
		//           ]);
		//           }
		//           else {          
	
		//           \DB::table('email_activities')->insert([
		//           'status' => 'fail',
		//           'msg' => 'mail not sent',
		//            'action' => 'Field update',
		//           'created_at' => now()
		//           ]);	           
		//           }
	 	// }
     
         return back()->with('msg','Field has been updated');    
		
}
else {          
        return back()->with('msg','Field has not been updated');
     }

}

public function check(Request $request)
{
  $agent_data = $request->agents;
  session(['sales-Agent-Id' => $agent_data[0]['FAC_ID']]);
  //echo $agent_data[0]['FAC_ID'];
}

}
