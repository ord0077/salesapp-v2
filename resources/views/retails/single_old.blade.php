<?php
// dd($form_data->status);
?>
@extends('layouts.retail-app')

@section('content')


<div id="page-wrapper">

@if($form_data->status != 5)

<form method="post" action="{{url('ptc')}}">
{{csrf_field()}}

<input type="hidden" name="form_data" value="{{json_encode($form_data)}}">
<input type="hidden" name="customer_details" value="{{json_encode($customer_details)}}">
<input type="hidden" name="bank_details" value="{{json_encode($bank_details)}}">
<input type="hidden" name="investment_details" value="{{json_encode($investment_details)}}">
<input type="hidden" name="fatca_details" value="{{json_encode($fatca_details)}}">
<input type="hidden" name="other_details" value="{{json_encode($other_details)}}">
<input type="hidden" name="agent_code" value="{{$agent_code}}">
<input type="hidden" name="email" value="{{$email}}">






<button type="submit" class="btn btn-success printbtn" style="">Push to CRM</button>
<br>
</form>

@endif

<button type="submit" class="btn btn-info printbtn" onclick="window.print()" style="float: right; margin-top: -25px;">Print</button>


<div class="main-page">

  @if (session()->has('msg'))
  <br>
<div class="alert alert-success" role="alert">
<strong></strong> {{session('msg')}}
</div>
@endif

@if (session()->has('err'))
<br>
<div class="alert alert-danger" role="alert">
{{session('err')}}
</div>
@endif

<br>

<div class="form-title">




<h4 class="title-logo">Digital Account Opening Form (For Individuals Only)
  {{-- <img style="margin-left:150px;" src="{{url('uploads/Logo Green.bmp')}}" /> --}}
  

  <img class="testimg" style="margin-left:150px;" src="{{url('images/logo.png')}}" />

</h4>

<h4 style="color:white;">Form Id # {{$form_id}}
  <button type="button" class="btn btn-success btnsiscussion" style="float:right;margin-top:-5px;" data-toggle="modal" data-target="#myModal">Discussion</button>

</h4>


</div>


<div class="tables">
<div class="panel-body widget-shadow">
<div id="cbc" class="modal fade" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Comments for CBC User</h4>
</div>
<div class="modal-body">
<form method="post" action="{{url('send_to_cbc')}}/{{$form_id}}">
{{csrf_field()}}
<textarea required name="msg" class="form-control" rows="4"></textarea>
<br><button type="submit" class="btn btn-info" style="">Send To CBC</button>
</form>
</div>

</div>

</div>
</div>
<button type="button" style="float:right;margin:0px;" data-toggle="modal" data-target="#cbc"  class="btn btn-info to_cbc">
	Send To CBC
</button>

<form  method="post" action="{{url('send_back')}}/{{$form_id}} " enctype="multipart/form-data">

<table class="table">
<tbody>
<button type="submit" class="btn btn-info bckchanges" style="float:right; margin-right: 5px;">Send Back To Changes</button>
{{csrf_field()}}

<br>
<strong class="addspecial">Add Special Note</strong>
<br>
<textarea required name="msg" class="form-control textblock" rows="4"></textarea>
<br>

<h4 class="alert alert-success c_details">Customer Details</h4>
<tr>
<td>
<input type="hidden" name="user_id" value="{{$form_data->user_id}}">
<input type="checkbox" name="cd[]" value="name">
</td>
<th>Name</th>
<td>{{$customer_details->name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="father_name">
</td>
<th>Father Name</th>
<td>{{$customer_details->father_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="mother_name">
</td>
<th>Mother Name</th>
<td>{{$customer_details->mother_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="dob">
</td>
<th>Date Of Birth</th>
<td>{{$customer_details->dob}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="cnic">
</td>
<th>CNIC</th>
<td>{{$customer_details->cnic}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="cnic_attachment">
</td>
<th>CNIC Attachment</th>
<td>
<button id="cnic_attachment" type="button" style="background: none; border:none;" value="{{$customer_details->cnic_attachment}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/cnic_attachment')}}/{{$customer_details->cnic_attachment}}">
</button>
</td>
</tr>


<tr>
<td>
<input type="checkbox" name="cd[]" value="cnic_issue_date">
</td>
<th>CNIC Issue Date</th>
<td>{{$customer_details->cnic_issue_date}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="pob_country">
</td>
<th>Place Of Birth (Country)</th>
<td>{{$customer_details->pob_country}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="pob_city">
</td>
<th>Place Of Birth (City)</th>
<td>{{$customer_details->pob_city}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="email">
</td>
<th>Email</th>
<td>{{$customer_details->email}}</td>
</tr>


<tr>
<td>
<input type="checkbox" name="cd[]" value="cell">
</td>
<th>Cell</th>
<td>{{$customer_details->cell}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="occupation">
</td>
<th>Occupation</th>
<td>{{$customer_details->occupation}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="occ_name">
</td>
<th>Occupation name</th>
<td>{{$customer_details->occ_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="designation">
</td>
<th>Designation</th>
<td>{{$customer_details->designation}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="department">
</td>
<th>Department</th>
<td>{{$customer_details->department}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="working_experience">
</td>
<th>Working Experience</th>
<td>{{$customer_details->working_experience}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="org_emp_bes_name">
</td>
<th>Organization/Employer/Business Name</th>
<td>{{$customer_details->org_emp_bes_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="age_of_business">
</td>
<th>Age of Business</th>
<td>{{$customer_details->age_of_business}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="education">
</td>
<th>Education</th>
<td>{{$customer_details->education}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="marital_status">
</td>
<th>Marital Status</th>
<td>{{$customer_details->marital_status}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="no_of_dependants">
</td>
<th>No. of Dependants</th>
<td>{{$customer_details->no_of_dependants}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="public_figure">
</td>
<th>Public Figure</th>
<td>{{$customer_details->public_figure}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="average_annual_income">
</td>
<th>Average Annual Income</th>
<td>{{$customer_details->average_annual_income}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="refused_account_by_institute">
</td>
<th>Has any Financial Institution ever refused to open your account?</th>
<td>{{$customer_details->refused_account_by_institute}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="high_value_item">
</td>
<th>Do you deal high value items such as precious metal and real estate?</th>
<td>{{$customer_details->high_value_item}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="soi">
</td>
<th>Source Of Income</th>
<td>{{$customer_details->soi}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="soi_attachment">
</td>
<th>Source Of Income Attachment</th>
<td>
<button id="soi_attachment" type="button" style="background: none; border:none;" value="{{$customer_details->soi_attachment}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/soi_attachment')}}/{{$customer_details->soi_attachment}}">
</button>
</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="address">
</td>
<th>Address</th>
<td>{{$customer_details->address}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="country1">
</td>
<th>Mailing Country</th>
<td>{{$customer_details->country1}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="city1">
</td>
<th>Mailing City</th>
<td>{{$customer_details->city1}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="zakat">
</td>
<th>Zakat</th>
<td>{{$customer_details->zakat}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="cd[]" value="zakat_options">
</td>
<th>Zakat Option</th>
<td>{{$customer_details->zakat_options}}</td>
</tr>

@if($customer_details->zakat == 'no')
<tr>
<td>
<input type="checkbox" name="cd[]" value="zakat_certificate">
</td>
<th>Zakat Certificate</th>
<td>
<button id="zc" type="button" style="background: none; border:none;" value="{{$customer_details->zakat_certificate}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/zakat_certificates')}}/{{$customer_details->zakat_certificate}}">
</button>
</td>
</tr> 
@endif
@if($customer_details->underage)
<tr>
<td>
<input type="checkbox" name="cd[]" value="guardian">
</td>
<th>Guardian Name</th>
<td>{{$customer_details->guardian}}</td>
</tr> 
<tr>
<td>
<input type="checkbox" name="cd[]" value="relation_with_minor">
</td>
<th>Relation with Minor</th>
<td>{{$customer_details->relation_with_minor}}</td>
</tr> 
<tr>
<td>
<input type="checkbox" name="cd[]" value="cnic_nicop">
</td>
<th>CNIC/NICOP</th>
<td>{{$customer_details->cnic_nicop}}</td>
</tr> 
<tr>
<td>
<input type="checkbox" name="cd[]" value="cnic_nicop_expiry">
</td>
<th>CNIC/NICOP Expiry</th>
<td>{{$customer_details->cnic_nicop_expiry}}</td>
</tr> 
@endif
</tbody>
</table>


<table class="table">
<tbody>

@if(count($nominee_details) > 0)
<br>
<h4 class="alert alert-success bank_detail">Nominees Details</h4>
<?php $var = "First" ?>
@foreach($nominee_details as $nominee_detail)
<input type="hidden" name="nd{{$var}}[]" value="{{ $nominee_detail->id }}">
<tr>
<th colspan="3"><?php echo $var." Nominee"; ?></th>
</tr>
<tr>
<td>
<input type="checkbox" name="nd{{$var}}[]" value="name">
</td>
<th>Name</th>
<td class="td_print">{{$nominee_detail->name}}</td>
</tr>
<tr>
<td>
<input type="checkbox" name="nd{{$var}}[]" value="relationship">
</td>
<th>Relationship</th>
<td class="td_print">{{$nominee_detail->relationship }}</td>
</tr>
<tr>
<td>
<input type="checkbox" name="nd{{$var}}[]" value="share_percentage">
</td>
<th>Share %</th>
<td class="td_print">{{$nominee_detail->share_percentage}}</td>
</tr>
<tr>
<td>
<input type="checkbox" name="nd{{$var}}[]" value="cnic_nicop">
</td>
<th>CNIC/NICOP</th>
<td class="td_print">{{$nominee_detail->cnic_nicop}}</td>
</tr>
<tr>
<td>
<input type="checkbox" name="nd{{$var}}[]" value="cnic_nicop_expiry">
</td>
<th>CNIC/NICOP Expiry</th>
<td class="td_print">{{$nominee_detail->cnic_nicop_expiry}}</td>
</tr>
<?php $var = "Second"; ?>
@endforeach
</tbody>
</table>
@endif

<table class="table">
<tbody>

<br>
<h4 class="alert alert-success bank_detail">Bank Details</h4>

<tr>
<td>
<input type="checkbox" name="bd[]" value="bank_name">
</td>
<th>Bank Name</th>
<td class="td_print">{{$bank_details->bank_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="bd[]" value="branch_name">
</td>
<th>Branch Name</th>
<td class="td_print">{{$bank_details->branch_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="bd[]" value="account_title">
</td>
<th>Account Title</th>
<td class="td_print">{{$bank_details->account_title}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="bd[]" value="iban_number">
</td>
<th>IBAN</th>
<td class="td_print">{{$bank_details->iban_number}}</td>
</tr>


</tbody>
</table>



<table class="table">
  <tbody>
  
  <br>
  <h4 class="alert alert-success bank_detail">Common Reporting Standard (CRS) Details</h4>
  

    <tr>

      <td><input type="checkbox" name="crs[]" value="crs_name_account_holder"></td>

    <th>Name of Account Holder </th>
    <td class="td_print">{{$crs_details->crs_name_account_holder}}</td>

    </tr>
    
    <tr>
      <td><input type="checkbox" name="crs[]" value="crs_family_name"></td>

      <th>Family Name of Surname(s) Title </th>
    <td class="td_print">{{$crs_details->crs_family_name}}</td>
    </tr>
    
    
    <tr>
      <td><input type="checkbox" name="crs[]" value="crs_given_name"></td>

    <th>First or Given Name </th>
    <td class="td_print">{{$crs_details->crs_given_name}}</td>
    </tr>
    
    <tr>
      <td><input type="checkbox" name="crs[]" value="crs_middle_name"></td>

    <th>Middle Name(s) </th>
    <td class="td_print">{{$crs_details->crs_middle_name}}</td>
    </tr>
    
    <tr>
            <td><input type="checkbox" name="crs[]" value="crs_current_address"></td>

    <th>Current Residential Address </th>
    <td class="td_print">{{$crs_details->crs_current_address}}</td>
    </tr>
    
    <tr>
            <td><input type="checkbox" name="crs[]" value="crs_country_txt"></td>

    <th>Country </th>
    <td class="td_print">{{$crs_details->crs_country_txt}}</td>
    </tr>
    
    <tr>
            <td><input type="checkbox" name="crs[]" value="crs_city_txt"></td>

    <th>Town/City/Province/Count/State</th>
    <td class="td_print">{{$crs_details->crs_city_txt}}</td>
    </tr>

    
    <tr>
            <td><input type="checkbox" name="crs[]" value="crs_zipcode"></td>

    <th>Postal Code / Zip Code </th>
    <td class="td_print">{{$crs_details->crs_zipcode}}</td>
    </tr>
    
    <tr>
            <td><input type="checkbox" name="crs[]" value="crs_pobox"></td>

    <th>PO Box </th>
    <td class="td_print">{{$crs_details->crs_pobox}}</td>
    </tr>


    <tr>
      <th colspan="2"> <h4 style="margin-top: 15px;">Mailing Address Details</h4> </th>
      </tr>
      
      <tr>
        <td><input type="checkbox" name="crs[]" value="mailing_address"></td>
        <th>Mailing Address </th>
        <td class="td_print">{{$crs_details->mailing_address}}</td>
        </tr>
        
        
        <tr>
          <td><input type="checkbox" name="crs[]" value="mailing_city"></td>
        <th>Town/City/Province/Count/State</th>
        <td class="td_print">{{$crs_details->mailing_city}}</td>
        </tr>

      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_country"></td>
          <th>Country </th>
          <td class="td_print">{{$crs_details->mailing_country}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_zipcode"></td>
          <th>Postal Code / Zip Code </th>
          <td class="td_print">{{$crs_details->mailing_zipcode}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_pobox"></td>
          <th>PO Box </th>
          <td class="td_print">{{$crs_details->mailing_pobox}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_dob"></td>
          <th>Date of Birth </th>
          <td class="td_print">{{$crs_details->mailing_dob}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_pob"></td>
          <th>Place of Birth </th>
          <td class="td_print">{{$crs_details->mailing_pob}}</td>
          </tr>
         
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_tob"></td>
          <th>Town or City of Birth </th>
          <td class="td_print">{{$crs_details->mailing_tob}}</td>
          </tr>
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_cob"></td>
          <th>Country of Birth </th>
          <td class="td_print">{{$crs_details->mailing_cob}}</td>
          </tr>
      
      
          <tr>
            <th colspan="2"> <h4 style="margin-top: 15px;">Country of tax Residence & Taxpayer Identification Number (TIN) Details</h4> </th>
            </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="mailing_tax_country"></td>
          <th>Name of Country Residence</th>
          <td class="td_print">{{$crs_details->mailing_tax_country}}</td>
          </tr>
                  
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="isTaxPayer"></td>
          <th>Taxpayer Identification (TIN)</th>
          <td class="td_print">{{$crs_details->isTaxPayer}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="TaxPayerNumber"></td>
          <th>Taxpayer Number</th>
          <td class="td_print">{{$crs_details->TaxPayerNumber}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="reason"></td>
          <th>Reason</th>
          <td class="td_print">{{$crs_details->reason}}</td>
          </tr>
      
          <tr>
            <td><input type="checkbox" name="crs[]" value="specify_second_reason"></td>
          <th>Specific Reason</th>
          <td class="td_print">{{$crs_details->specify_second_reason}}</td>
          </tr>
  
  
  
  </tbody>
  </table>

<table class="table">
<tbody>

<br>
<h4 class="alert alert-success inv_details">Investment Details</h4>   

<tr>
<td>
<input type="checkbox" name="ids[]" value="fund_name">
</td>
<th>Fund Name</th>
<td>{{$investment_details->fund_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="amount">
</td>
<th>Amount</th>
<td>{{$investment_details->amount}} ({{$investment_details->amount_in_words}})</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="payment_mode">
</td>
<th>Payment Mode</th>
<td>{{$investment_details->payment_mode}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="attachment">
</td>
<th>Attachment</th>
<td>
<button id="id" type="button" style="background: none; border:none;" value="{{$investment_details->attachment}}" class="pop">
<img width="150px" height="150px" src="{{url('uploads/investment_detail_attachments')}}/{{$investment_details->attachment}}">
</button>
</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="bank_name">
</td>
<th>Bank Name</th>
<td>{{$investment_details->bank_name}}</td>
</tr>


<tr>
<td>
<input type="checkbox" name="ids[]" value="instrument_number">
</td>
<th>Instrument Number</th>
<td>{{$investment_details->instrument_number}}</td>
</tr>

@if($investment_details->beneficiary_investment)
<tr>
<td>
<input type="checkbox" name="ids[]" value="ultimate_beneficiary_name">
</td>
<th>Ultimate Beneficiary Name</th>
<td>{{$investment_details->ultimate_beneficiary_name}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="relation_ultimate_beneficiary_with_investor">
</td>
<th>Relation Ultimate Beneficiary with Investor</th>
<td>{{$investment_details->relation_ultimate_beneficiary_with_investor}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="ids[]" value="cnic_nicp_passport_no">
</td>
<th>CNIC/NICP/Passport No</th>
<td>{{$investment_details->cnic_nicp_passport_no}}</td>
</tr>
@endif
</tbody>
</table>


<table class="table">
<tbody>

<br>
<h4 class="alert alert-success bank_detail">Other Instructions/Information
</h4>

<tr>
<td>
<input type="checkbox" name="od[]" value="asf">
</td>
<th>Frequency of Account Statement</th>
<td class="td_print">{{$other_details->asf}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="od[]" value="dpo">
</td>
<th>Dividend pay-out</th>
<td class="td_print">{{$other_details->dpo}}</td>
</tr>


<tr>
<td>
<input type="checkbox" name="od[]" value="type_of_units">
</td>
<th>Type of Units</th>
<td class="td_print">{{$other_details->type_of_units}}</td>
</tr>



</tbody>
</table>

<table class="table">
<tbody>

<br>
<h4 class="alert alert-success fatca_detail">Fatca Details</h4>

<tr>
<td>
<input type="checkbox" name="fd[]" value="multiple_nat">
</td>
<th>Multiple Nationalities</th>
<td class="td_print_fatca">{{$fatca_details->multiple_nat}}</td>
</tr>

@if($fatca_details->multiple_nat == 'yes')
<tr>
<td>
<input type="checkbox" name="fd[]" value="nats">
</td>
<th>Nationality </th>
<td class="td_print_fatca">{{$fatca_details->nats}}</td>
</tr>
@endif

<tr>
<td>
<input type="checkbox" name="fd[]" value="green_card">
</td>
<th>US Green Card/US Permanent Residency</th>
<td class="td_print_fatca">{{$fatca_details->green_card}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="fd[]" value="for_citi">
</td>
<th>Foriegn Citizenship</th>
<td class="td_print_fatca">{{$fatca_details->for_citi}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="fd[]" value="co_ma">
</td>
<th>Overseas Mailing Address</th>
<td class="td_print_fatca">{{$fatca_details->co_ma}}</td>
</tr>


<tr>
<td>
<input type="checkbox" name="fd[]" value="co_mp">
</td>
<th>Overseas Mailing Phone Number</th>
<td class="td_print_fatca">{{$fatca_details->co_mp}}</td>
</tr>

<tr>
<td>
<input type="checkbox" name="fd[]" value="attor">
</td>
<th>Given Power of Attorney to any person residing overseas</th>
<td class="td_print_fatca">{{$fatca_details->attor}}</td>
</tr>


@if($fatca_details == 'yes')
<tr>
<td>
<input type="checkbox" name="fd[]" value="attor_addr">
</td>
<th>Given Power of Attorney to any person residing overseas</th>
<td class="td_print_fatca">{{$fatca_details->attor_addr}}</td>
</tr>
@endif


<tr>
<td>
<input type="checkbox" name="fd[]" value="trans_fund">
</td>
<th>Standing Instruction</th>
<td>{{$fatca_details->trans_fund}}</td>
</tr>


<tr>
<td>
<input type="checkbox" name="fd[]" value="wf">
</td>
<th>w8/w9 form</th>
<td>{{$fatca_details->wf}}</td>
</tr>

@if($fatca_details->wf == 'yes')
<tr>
<td>
<input type="checkbox" name="fd[]" value="wform">
</td>
<th>form</th>
<td>{{$fatca_details->wform}}</td>
</tr>
@endif

</tbody>
</table>

</form>

<br>
<table class="table">
<h4 class="alert alert-success action">Action</h4>
<tbody>
<tr>  
<th>Sales Agent</th>
<td class="td_print_action"><strong>{{$user_name}}</strong></td>
</tr>

<tr>  
  <th>Agent Code</th>
  <td class="td_print_action"><strong>{{$agent_code}}</strong></td>
  </tr>

  <tr>  
    <th>Email</th>
    <td class="td_print_action"><strong>{{$email}}</strong></td>
    </tr>

<tr>  
<th>Channel</th>
<td class="td_print_action">{{$form_data->channel}}</td>
</tr>

<tr>  
<th>Submitted At</th>
<td class="td_print_action">{{$form_data->created_at}}</td>
</tr>


</tbody>
</table>


<div class="title-logo">
<h4 class="alert alert-success title-logo">Declaration</h4>

<div>
I/We hereby confirm that all information provided in this form is correct to the best of my/our knowledge and the documents submitted along with this application are genuine. I /We also confirm having read and understood the Trust Deeds and Offering Documents that govern the transactions and in particular the risks disclosures. I/We confirm that I/we have understood the details of Sales Load to be deducted including taxes thereon as well as the advice given in the Risk Profile section.
</div>
<br> 

<div>
I/We hereby permit HBL AMC, subject to applicable local laws, to share my/our information with domestic or overseas regulators or tax authorities where necessary to establish my/our tax liability in any jurisdiction. Where required by domestic or overseas regulators or tax authorities, I/we further agree that HBL AMC may withhold from my/our account(s) such amount as may be required according to applicable laws, regulation and directives. I/We will indemnify and hold harmless HBL AMC from any loss, action, cost, expense (including, but not limited to sums paid in settlement of claims, reasonable attorneys’ and consultant fees, and expert fees), claim, damages, or liability which arises or is incurred by HBL AMC in discharging its obligations under FATCA/CRS as a result of disclosures to external tax authorities.
</div>
<br>

<div>
I/We undertake to notify HBL AMC within 30 calendar days if there is a change in any information which I/we have provided to HBL AMC. I/We understand and accept that HBL AMC reserves the right to close or suspend my/our account, without prior notice, if required document/information is not submitted within a stipulated time.
</div>
<br>

<div>
I/We, the undersigned, would like to purchase the units of the investment scheme as per the details mentioned above. I/We, hereby indemnify that the decision to make investment in Low/Medium/High Risk Funds has solely undertaken at my/our own discretion, and none of the employee or representative of HBL AMC has convinced/forced to undertake the aforesaid investment. I/We have read and understood the relevant Trust Deeds, Offering Documents (including any supplemental documents), Risk profile table* and understand the associated risks. I/We have understood that past performance is not necessarily indicative and its officer, representative and employee of future results and HBL AMC does not provide any guaranteed return or assurance of minimum profit/return. Except where expressly stated in offering document, HBL AMC does not promise capital protection in any fund/plan. I/We fully understand that gain/loss on investment is completely dependent on market fluctuation/movement of price/yield of underlying instruments. I/We/ am/are entirely responsible and able to bear loss (if any) incurred as a result of above investment decision. I/We agree that HBL AMC is does not liable to compensate in the event of loss or dilution in actual investment. I/We have also received and reviewed Fund Manager Report and/or basic fund information as applicable in respect of related investment scheme(s). I/We understand that I/We can take refund of my/our first investment (cooling-off right for individuals only) within six working days in any collective investment scheme (CIS) managed by HBL AMC on applicable NAV along with charged Front-end Load (after deduction of any Back-end Load or Contingent Load), if I/We send a written request within three (3) business days from Account Statement issuance date. I/We confirm that I/We have understood the details of Sales Load to be deducted including taxes, as % of NAV. I/We confirm that in case of investment in riskier fund, risk profile of the account to be assumed accordingly.
</div>
<br>

<div>
I/we notify the advisor of any changes in my/our information, risk tolerance goals or investments. I/We further declare that my/our financial needs may change over time and I/we shall be solely responsible for all my/our current and future investment, conversion and transfer transactions if these transactions are not in accordance with my/our abovementioned risk profiling results.
</div>
<br>


<div class="td_print_action">Name</div>
<div class="td_print_action" style="border:1px solid; height:75px;" ></div>


<div class="td_print_action">Signature</div>
<div class="td_print_action" style="border:1px solid; height:75px;" ></div>

<div class="td_print_action">Date</div>
<div class="td_print_action" style="border:1px solid; height:75px;" ></div>
</div>



<!-- Modal -->




</div>

</div>

<div class="clearfix"> </div>


</div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog">



<div class="container">
<div class="row">
<div class="col-md-5">
<div class="panel">
<div class="panel-heading">
<span class="glyphicon glyphicon-comment"></span> Chat
<button type="button" class="close" data-dismiss="modal">&times;</button>
<hr>

</div>
<div class="panel-body">
<ul class="chat">

@foreach($msgs as $msg)
@php 
$role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0]; 
$string = ($role == 5) ? 'CBC' : 'S';
@endphp
@if($role == 1 || $role == 5)

<li class="left clearfix" style="list-style-type: none;"><span class="chat-img pull-left">
<img src="http://placehold.it/50/55C1E7/fff&text={{$string}}" alt="User Avatar" class="img-circle" />
</span>
<div class="chat-body clearfix">
<div class="header">
<strong style="margin-left:7px;">{{DB::table('users')->where('id',$msg->sender_id)->first()->name}}</strong>
</div>
<p style="padding-left: 14%;     margin-bottom: 10%;">
{{$msg->msg}}
<br>
@php $d = new DateTime($msg->created_at);
$dates = $d->format('M d, h:i:sa');
@endphp
{{$dates}}
</p>
</div>
</li>
@else
@php
$role = \DB::table('users')->where('id',$msg->sender_id)->pluck('role_id')[0];
$string = ($role == 3) ? 'RA' : 'R';
@endphp
@if($role != 5)

<li class="right clearfix" style="list-style-type: none;"><span class="chat-img pull-right">
<img src="http://placehold.it/50/FA6F57/fff&text={{$string}}" alt="User Avatar" class="img-circle" />
</span>
<div class="chat-body clearfix">
<div class="header text-right">
<strong style="margin-left:7px;">{{DB::table('users')->where('id',$msg->sender_id)->first()->name}}</strong>
</div>
<p style="padding-right: 2%; float:right;    margin-bottom: 10%;">
{{$msg->msg}}
<br>
@php $d = new DateTime($msg->created_at);
$dates = $d->format('M d, h:i:sa');
@endphp
{{$dates}}
</p>
</div>
</li>
@endif
@endif
@endforeach


</ul>
</div>

</div>
</div>
</div>
</div>


</div>
</div>

<!-- Creates the bootstrap modal where the image will appear -->
<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" id="myModalLabel">Image preview</h4>
</div>
<div class="modal-body">
<img src="" id="imagepreview" style="width: 100%; height: auto;" >
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<script type="text/javascript">

$("#zc").on("click", function() {
  
var url = '<?php echo url('uploads/zakat_certificates/');?>';
$('#imagepreview').attr('src',url+'/'+ this.value);
$('#imagemodal').modal('show');
});

$("#id").on("click", function() {
  
  var url = '<?php echo url('uploads/investment_detail_attachments/');?>';
  $('#imagepreview').attr('src',url+'/'+ this.value);
  $('#imagemodal').modal('show');
  });


$("#cnic_attachment").on("click", function() {
  
  var url = '<?php echo url('uploads/cnic_attachment/');?>';
  $('#imagepreview').attr('src',url+'/'+ this.value);
  $('#imagemodal').modal('show');
  });


$("#soi_attachment").on("click", function() {
  
  var url = '<?php echo url('uploads/soi_attachment/');?>';
  $('#imagepreview').attr('src',url+'/'+ this.value);
  $('#imagemodal').modal('show');
  });


</script>

<!-- main content start-->
<style type="text/css">
  input[type='checkbox'] {
  -webkit-appearance:none;
  width:30px;
  height:30px;
  background:white;
  border-radius:5px;
  border:2px solid #555;
  }
  input[type='checkbox']:checked {
  background: #abd;
  }
  .title-logo{
    display:none;
  }
  @media print
  {
.testimg
{
 
  width: 220px!important;
  float: right;
  margin-top:-25px;
  height: 30px!important;
}

  input[type='checkbox']{display: none;}
  
  .dropdown-toggle {display:none!important;}
  
  button.printbtn{display: none!important;}
  
  .btnsiscussion{display: none!important;}
  .title-logo{
    display:block;
    margin-bottom:10px;
  }
  .form-title
  {
  /*display: none!important;*/
  margin-top: -200px;
  border: none!important;
  }
  
  .form-title h4
  {
  font-weight: 700;
  font-size: 20px!important;
  margin-left: -12px!important;
  }
  
  .addspecial{display: none!important;}
  
  .to_cbc{display: none!important;}
  
  .bckchanges{display: none!important;}
  
  .textblock{display: none!important;}
  
  .header-section{display:none!important;}
  
  .c_details
  {
    margin-top: -80px!important; 
    background-color:#9c9e9b!important;
  }
  
  .bank_detail{margin-top: -30px!important;}
  
  .fatca_detail{margin-top:-30px!important;}
  
  .action{margin-top:-30px!important;}
  
  .tables {margin-top:20px!important;}
  
  .tables h4
  {
  color: #000000!important;
  font-weight:600!important;
  border: solid #000!important;
  }
  
  .alert{padding: 5px!important;}
  
  img{width: 75px!important; height: 75px!important;}
  
  .footer
  {margin-top:40px!important;
  display:none!important;
  }
  
  .tables .table > thead > tr > th, .tables .table > tbody > tr > th, .tables .table > tfoot > tr > th, .tables .table > thead > tr > td, .tables .table > tbody > tr > td, .tables .table > tfoot > tr > td 
  {
      border-top: 1px solid #150000!important;
      line-height: 01;
  }
  
  .inv_details{margin-top:-30px!important;}
  
  table.table tr td:nth-child(1) {
      display: none;
  }
  
  td.td_print{padding-left: 145px!important;}
  
  td.td_print_fatca{padding-right: 200px!important;}
  
  td.td_print_action{padding-left: 130px!important;}
  
  }
  
  </style>
  
@endsection
