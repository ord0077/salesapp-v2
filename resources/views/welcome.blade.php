<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>:: HBL Corporate Presentation Demo ::</title>

<link rel="stylesheet" href="{{asset('css/reveal.css')}}">
<link rel="stylesheet" href="{{asset('css/theme/white.css')}}" id="theme">
<link rel="stylesheet" href="{{asset('css/fe_animate.css')}}">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- Theme used for syntax highlighting of code -->
<link rel="stylesheet" href="{{asset('lib/css/zenburn.css')}}">
<!-- Bootstrap core CSS -->
<link href="{{asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
<link rel="stylesheet" href="{{asset('css/fe_style.css')}}">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Printing and PDF exports -->
<script>
var link = document.createElement( 'link' );
link.rel = 'stylesheet';
link.type = 'text/css';
link.href = window.location.search.match( /print-pdf/gi ) ? 'css/print/pdf.css' : 'css/print/paper.css';
document.getElementsByTagName( 'head' )[0].appendChild( link );
</script>
<!-- Chart js -->
<script src="{{url('js/Chart.bundle.js')}}"></script>
<script src="{{url('js/utils.js')}}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js" integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ==" crossorigin="anonymous"></script>
</head>
<body>

<div class="reveal">
<a href="{{url('/')}}" style="display:block;position:absolute;top:0;left:0; width:280px;height:65px; background:#cc000000;z-index:9999999;
">

</a>
<div id="header">
<div class="col-sm-12">
<img src="{{asset('images/header-logo-img.png')}}" alt="">
</div>
</div>
<!-- charts -->
@include('frontend.charts.welcome_charts')
<!-- charts end -->
<div class="slides">
<!-- Corporate Presentation Start-->
<!-- Paste Here -->

@include('presentation')


<!--<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>-->



<!-- Corporate Presentation End-->

<!-- Risk Profiler Start-->



<section id="fragments" data-transition="slide" data-state="vali" data-prevent-swipe>
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>


<div class="col-lg-10 risk-profiler" style="margin:0 auto; background:#f5f5f5; border:1px solid #d3d2d2;">
<p >HBL Asset Management’s Risk Assessment Questionnaire guides you to the best investment strategy that you can rely on and let your investment work hard to achieve your objective.</p>

<p>By answering few questions, we can help you choose the best mutual fund or investment plan depending on your risk appetite.</p>
<hr>
<form method="POST" action="save_risk_profile">
{{csrf_field()}}

<label>Name</label>

<input id="client_name" name="client_name" placeholder="Name">
<p id="client_name_error" class="field-error"></p>

<label>Email Address</label>
<input id="client_email" name="client_email" placeholder="Email"  type="email">
<p id="client_email_error" class="field-error"></p>


<label>Cell Number</label>
<input id="client_number" name="client_number" placeholder="923001234567">
<p id="client_number_error" class="field-error"></p>


<label>CNIC</label>
<input id="client_cnic" name="client_cnic" type="text"    placeholder="99999-9999999-9">
<p id="client_cnic_error" class="field-error"></p>


<br/><input ontouchstart="checkClientDetails()"  click="checkClientDetails()"  class="button1 nextBtn enabled" type="submit" value="Next">
</div>
</section>

<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>


<div class="col-lg-8 risk-profiler" style="margin:0 auto;">
<p>&nbsp;</p>
<p style="color: #fff;"> Please answer the following questions as candidly as you can. Your answers will help us determine the most suitable asset allocation model for you.</p>
<hr>

<h6>1) Please mention the age bracket you fall in:</h6>
<ul>
<li>
  
    <label class="control control--radio">Above 61 years
    <input type="radio" name="q1" id="age1" value="-2" checked>
            <div class="control__indicator"></div>
        </label>  
</li>
<li>
<label class="control control--radio"> 55 - 60 years
<input type="radio" name="q1" id="age1" value="-1">
            <div class="control__indicator"></div>
        </label>  
</li>
<li>
<label class="control control--radio"> 40 - 54 years
<input type="radio" name="q1" id="age1" value="0">
            <div class="control__indicator"></div>
        </label>      
 </li>
<li>
<label class="control control--radio">   25 - 39 years
<input type="radio" name="q1" id="age1" value="1">
            <div class="control__indicator"></div>
        </label>    
   
</li>
<li><label class="control control--radio"> Less than 25 years
<input type="radio" name="q1" id="age1" value="2">
            <div class="control__indicator"></div>
        </label>    
</li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>

</ul>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>2) I plan to keep my investment for:</h6>
<ul>
<li><label class="control control--radio">Less than a year<input type="radio" name="q2" id="age2" value="-2"  checked> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">1 - 3 years<input type="radio" name="q2" id="age2" value="-1"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">3 - 5 years<input type="radio" name="q2" id="age2" value="0"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">5 - 10 years<input type="radio" name="q2" id="age2" value="1"> <div class="control__indicator"></div></label> </li>
<li><label class="control control--radio">More than 10 year<input type="radio" name="q2" id="age2" value="2"> <div class="control__indicator"></div></label> </li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>3) I have enough savings to support my lifestyle for:</h6>
<ul>
<li><label class="control control--radio"> Up to 3 months<input type="radio" name="q3" id="age3" value="-2"  checked><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Up to 6 months<input type="radio" name="q3" id="age3" value="-1"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Up to 1 year<input type="radio" name="q3" id="age3" value="0"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> 1 - 3 years<input type="radio" name="q3" id="age3" value="1"><div class="control__indicator"></div></label> </li>
<li><label class="control control--radio"> Over 3 years<input type="radio" name="q3" id="age3" value="2"><div class="control__indicator"></div></label> </li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>4) I would like my financial goals to be attained in:</h6>
<ul>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="-2"  checked> Less than a year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="-1"> 1 - 3 year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> <input type="radio" name="q4" id="age4" value="0"> 3 - 5 year<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="1"> 5 - 10 years<div class="control__indicator"></div></label></li>
<li><label class="control control--radio"><input type="radio" name="q4" id="age4" value="2"> More than 10 year<div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>5) I can relate myself to the following statement:</h6>
<ul>
<li><label class="control control--radio"> I cannot bear any capital loss<input type="radio" name="q5" id="age5" value="-2"  checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will redeem my entire investment amount if I incur 5% loss<input type="radio" name="q5" id="age5" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will wait for my investment to appreciate if I incur 10% loss<input type="radio" name="q5" id="age5" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I have other sources of income to maintain my lifestyle<input type="radio" name="q5" id="age5" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> I will invest on long term basis and will make additional
investments when the price falls<input type="radio" name="q5" id="age5" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>6) For further investment I intend to take:</h6>
<ul>
<li><label class="control control--radio"> No risk<input type="radio" name="q6" id="age6" value="-2"  checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Slight risk with reasonable return and principal protection<input type="radio" name="q6" id="age6" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Moderate risk with higher than average return<input type="radio" name="q6" id="age6" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Moderate to high risk for potential greater returns<input type="radio" name="q6" id="age6" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> High risk for superior returns<input type="radio" name="q6" id="age6" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>7) If I incur substantial initial loss I would:</h6>
<ul>
<li><label class="control control--radio"> Redeem my investment<input type="radio" name="q7" id="age7" value="-2" checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Switch to safer and secure investment option<input type="radio" name="q7" id="age7" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Hold my investment and decide later<input type="radio" name="q7" id="age7" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Observe economic situation and market outlook<input type="radio" name="q7" id="age7" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Continue with my investment plan<input type="radio" name="q7" id="age7" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>8) I usually invest/keep my money in:</h6>
<ul>
<li><label class="control control--radio"> Current Accounts<input type="radio" name="q8" id="age8" value="-2" checked><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> PLS/Savings/TDR's<input type="radio" name="q8" id="age8" value="-1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Fixed Income Mutual Fund/National Savings
Schemes/Prize Bond<input type="radio" name="q8" id="age8" value="0"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Stock/Share/Equity based mutual fund<input type="radio" name="q8" id="age8" value="1"><div class="control__indicator"></div></label></li>
<li><label class="control control--radio"> Real Estate<input type="radio" name="q8" id="age8" value="2"><div class="control__indicator"></div></label></li>
<li>&nbsp;</li>
<li><input class="button2 nextBtn navigate-right enabled" type="button" value="Next"></li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>

</div>

</section>


<section id="fragments" data-transition="slide"  >
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto;">

<p>&nbsp;</p>

<h6>9) Preferred Product Type:</h6>
<ul>
<li style="color: #ffc807; font-weight: 500;"> Conventional</li>
<li><label class="control control--radio">Conventional Fund<input type="radio" name="q9" id="conventional" value="conventional" checked><div class="control__indicator"></div></label</li>
<li style="color: #ffc807; font-weight: 500;"> Islamic</li>
<li><label class="control control--radio"> Islamic Fund<input type="radio" name="q9" id="islamic" value="islamic"><div class="control__indicator"></div></label</li>
<li style="color: #ffc807; font-weight: 500;"> OR</li>
<li><label class="control control--radio"> Any<input type="radio" name="q9" id="any" value="any"><div class="control__indicator"></div></label</li>
<li>&nbsp;</li>
<li><input class="tch button2 nextBtn navigate-right  enabled" id="submitButton" onClick="submitQuiz()" type="submit" value="Next"></li>
</ul>
<p>&nbsp;</p>

</div>
</section>
<input id="location" name="location" value type="hidden"/>
<input id="choosen_fund" name="choosen_fund" type="hidden"/>
<input id="user_id" name="user_id" value="{{ Auth::user()->id }}" type="hidden"/>


<section id="fragments" data-transition="slide">
<h3 class="main-heading" data-animate="fadeInRight">Risk Profiler</h3>
<div class="col-lg-8 risk-profiler" style="margin:0 auto; background:none;">

<p id="pns" style="font-size:25px;">Recommended Funds</p>
<span style="display:none !important; width:auto; padding:20px 50px; font-size:25px; background:#01a896; color:#fff; border-radius:10px;    display: block;
width: 80%; margin:0 auto;" id="userScore">
<input id="value_for_userScore" name="userScore" type="hidden"></span>

<div style="margin:auto;" class="col-sm-6">
<select id="recommended_funds"  name="recommended_funds" required class="form-control test"></select>
<input id="crf" name="crf" type="hidden">
<input id="irf" name="irf" type="hidden">
</div>

<p style="font-size:25px; padding:40px; color:#01a896;">
<input id="rec" required name="decision" value="I agree I will go with above recommended product 
"  type="radio" style="width:30px; height:20px; border:2px solid #01a896; margin-top:20px;">
I agree I will go with above recommended product
<br>
<input id="risk" required name="decision" value="I Disagree and Choose Another Product at My Own Risk"  type="radio" style="width:30px; height:20px; border:2px solid #01a896; margin-top:20px;">
I Disagree and Choose Another Product at My Own Risk
</p>
<div style="margin:auto;" class="col-sm-6">
<select id="risk_funds" name="risk_funds" class="form-control test"></select>
</div>

</div>
<br>
<center><div class="col-sm-2">
<input style="font-size:21px; color:#fff; background:#01a896;" class="form-control" type="submit" value="Submit">
</div>
</center>
</section>


</form>

</div>


</div>
<footer>
<div class="col-sm-4 weblink">
<img src="{{asset('images/glob-icon.png')}}" alt="">
<p><a href="http://hblasset.com/" target="_blank">www.hblasset.com</a></p>

<p><a class="" href="{{url('/')}}">DashBoard</a></p>
{{-- <p><a class="" href="{{url('welcome')}}">Home</a></p> --}}




</div>
<div class="col-sm-4 copyright"><p>©<?php echo date('Y');?> HBL Asset Management.</p></div>
<div class="col-sm-4 social">
<a href="#"><img src="{{asset('images/linkedin-icon.png')}}" alt=""></a>
<a href="#"><img src="{{asset('images/facebook-icon.png')}}" alt=""></a>
<a href="#"><img src="{{asset('images/twitter-icon.png')}}" alt=""></a>
<p> Follow Us On :</p>
<p>	 <a href="{{ route('logout') }}"
onclick="event.preventDefault();
        document.getElementById('logout-form').submit();">
        <i class="fa fa-sign-out"></i>Logout &nbsp;</a>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
{{ csrf_field() }}
</form>
</p>
</div>
</footer>
<script src="{{asset('lib/js/head.min.js')}}"></script>
<script src="{{asset('js/reveal.js')}}"></script>
<script src="{{asset('js/fe_wow.min.js')}}"></script>

<!-- Bootstrap core JavaScript -->
<script src="{{asset('vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3/jquery.inputmask.bundle.js"></script>

<script>

$(":input").inputmask();


$('#risk_funds').hide();
//$('input[type="text"],input[type="radio"]').prop('required',true);
$('#submitButton').on('touchstart click', function(){
submitQuiz(); 
});


$('#btn').on('touchstart click', function(){
alert()
});


function submitQuiz() {
    

// get each answer score

function answerScore (qName) {

var radiosNo = document.getElementsByName(qName);

for (var i = 0, length = radiosNo.length; i < length; i++) {
if (radiosNo[i].checked) {
// do something with radiosNo
    var answerValue = Number(radiosNo[i].value);
}
}
// change NaNs to zero
if (isNaN(answerValue)) {
    answerValue = 0;
}
return answerValue;
}

var calcScore = 
(answerScore('q1') + answerScore('q2') + answerScore('q3') + answerScore('q4') + answerScore('q5') + answerScore('q6')
+ answerScore('q7') + answerScore('q8'));


var r = document.getElementsByName('q9');
var v = '';


for (var i = 0, length = r.length; i < length; i++) {
    if (r[i].checked) {
        v = r[i].value;
    }
}
//Test
//calcScore = -12;

var rfc = [];
var rfi = [];
var all_c = [
    {
        id :'5a8e05d4-ca56-4897-8ec7-fb930a4f32d4',
        fund_name :  'HBL Cash Fund'
    },
    {
        id :'7f3c02ad-c276-444e-a951-0222746843ff',
        fund_name :  'HBL Money Market Fund'
    },
    {
        id :'9e94adef-6f33-4dd4-98a4-6b6487276c86',
        fund_name :  'HBL Income Fund'
    },
    {
        id :'a219f1e0-ab18-455c-b9ef-79c5956d8068',
        fund_name :  'HBL Government Securities Fund'
    },
    {
        id :'5ffd8887-684c-403e-8cf5-a448ada5221a',
        fund_name :  'HBL Financial Planning Fund - Conservative Allocation Plan'
    },
    {
        id :'85065335-48ce-43ec-b872-e15fafb28169',
        fund_name :  'HBL Financial Planning Fund - Special Income Plan'
    },
    
    {
        id :'b3535ff7-f0fa-4047-9942-244d30986d41',
        fund_name :  'HBL Stock Fund'
    },
    
    {
        id :'220e1089-73ed-4f44-8225-61418ae9d29a',
        fund_name :  'HBL Equity Fund'
    },
    
    {
        id :'bfa0e1b2-92c8-42fc-ad82-06635027c86e',
        fund_name :  'HBL Energy Fund'
    },
    
    {
        id :'8269bf99-ee3a-45e7-a4e3-3d134c76d4d5',
        fund_name :  'HBL Growth Fund'
    },

    {
        id :'f2738538-2204-49ad-9c57-5cd30e8c5a76',
        fund_name :  'HBL Investment Fund'
    },
    
    {
        id :'c96a022a-1a76-44d1-9662-3656882709a1',
        fund_name :  'HBL Multi Asset Fund'
    },
     
    {
        id :'50a6c795-366f-4bb4-a193-0e7396750b13',
        fund_name :  'HBL Financial Planning Fund - Active Allocation Plan'
    }
  
    ];
    var all_i = [

        {
        id :'b3b5a6a4-594c-456b-bf6c-1d1a0759cbec',
        fund_name :  'HBL Islamic Money Market Fund'
        },

        {
        id :'ee48ac97-b65b-416c-9156-796c73b1221c',
        fund_name :  'HBL Islamic Asset Allocation Fund'
        },

        {
        id :'4b5c7ae8-39b5-485b-a6d9-53763d2a77c2',
        fund_name :  'HBL Islamic Income Fund'
        },

        {
        id :'0225e27e-f196-4c6f-a7b8-8cacf003d1cb',
        fund_name :  'HBL Islamic Financial Planning Fund - Conservative Allocation Plan'
        },

        {
        id :'bd88210e-813e-4914-babe-79d9ec750a4c',
        fund_name :  'HBL Islamic Stock Fund'
        },
 
        {
        id :'fd66e3f5-4d82-419b-ab8e-60f21837d5ae',
        fund_name :  'HBL Islamic Equity Fund'
        },
        
        {
        id :'2d60f800-0850-4caf-8215-eff54d952687',
        fund_name :  'HBL Islamic Dedicated Fund'
        },
       
        {
        id :'7a70c248-a40f-4072-b2c0-f1c225a4d733',
        fund_name :  'HBL Islamic Financial Planning Fund - Active Allocation Plan'
        },
       
       
    ];

if(calcScore >= -16 && calcScore <= -6){
    rfc = [
        {
        id :'5a8e05d4-ca56-4897-8ec7-fb930a4f32d4',
        fund_name :  'HBL Cash Fund'
        },
        {
            id :'7f3c02ad-c276-444e-a951-0222746843ff',
            fund_name :  'HBL Money Market Fund'
        }
    ];   
    rfi = [
        {
        id :'b3b5a6a4-594c-456b-bf6c-1d1a0759cbec',
        fund_name :  'HBL Islamic Money Market Fund'
        }
    ];

}
else if(calcScore >= -5 && calcScore <= 6){

    rfc = [
            {
            id :'9e94adef-6f33-4dd4-98a4-6b6487276c86',
            fund_name :  'HBL Income Fund'
            },
            {
            id :'a219f1e0-ab18-455c-b9ef-79c5956d8068',
            fund_name :  'HBL Government Securities Fund'
            },
            {
                id :'5ffd8887-684c-403e-8cf5-a448ada5221a',
                    fund_name :  'HBL Financial Planning Fund - Conservative Allocation Plan'
                },
                {
                    id :'85065335-48ce-43ec-b872-e15fafb28169',
                    fund_name :  'HBL Financial Planning Fund - Special Income Plan'
                }
        ];
    rfi = [
        {
        id :'ee48ac97-b65b-416c-9156-796c73b1221c',
        fund_name :  'HBL Islamic Asset Allocation Fund'
        },

        {
        id :'4b5c7ae8-39b5-485b-a6d9-53763d2a77c2',
        fund_name :  'HBL Islamic Income Fund'
        },

        {
        id :'0225e27e-f196-4c6f-a7b8-8cacf003d1cb',
        fund_name :  'HBL Islamic Financial Planning Fund - Conservative Allocation Plan'
        }
            
        ];

}
else if(calcScore >= 7 && calcScore <= 16){
    rfc = [
        {
        id :'b3535ff7-f0fa-4047-9942-244d30986d41',
        fund_name :  'HBL Stock Fund'
    },
    
    {
        id :'220e1089-73ed-4f44-8225-61418ae9d29a',
        fund_name :  'HBL Equity Fund'
    },
    
    {
        id :'bfa0e1b2-92c8-42fc-ad82-06635027c86e',
        fund_name :  'HBL Energy Fund'
    },
    
    {
        id :'8269bf99-ee3a-45e7-a4e3-3d134c76d4d5',
        fund_name :  'HBL Growth Fund'
    },

    {
        id :'f2738538-2204-49ad-9c57-5cd30e8c5a76',
        fund_name :  'HBL Investment Fund'
    },
    
    {
        id :'c96a022a-1a76-44d1-9662-3656882709a1',
        fund_name :  'HBL Multi Asset Fund'
    },
     
    {
        id :'50a6c795-366f-4bb4-a193-0e7396750b13',
        fund_name :  'HBL Financial Planning Fund - Active Allocation Plan'
    }
    ];
    
    rfi = [
        {
        id :'bd88210e-813e-4914-babe-79d9ec750a4c',
        fund_name :  'HBL Islamic Stock Fund'
        },
 
        {
        id :'fd66e3f5-4d82-419b-ab8e-60f21837d5ae',
        fund_name :  'HBL Islamic Equity Fund'
        },
        
        {
        id :'2d60f800-0850-4caf-8215-eff54d952687',
        fund_name :  'HBL Islamic Dedicated Fund'
        },
       
        {
        id :'7a70c248-a40f-4072-b2c0-f1c225a4d733',
        fund_name :  'HBL Islamic Financial Planning Fund - Active Allocation Plan'
        },
        
        ];
}

if(v == "conventional") { 
    get_funds(rfc);
    $('#crf').val(rfc.map(v => v.fund_name).join(','));    
    $('#irf').val('');  
    get_risk_funds(all_c);

 }

else if(v == "islamic") { 
    get_funds(rfi);
    $('#irf').val(rfi.map(v => v.fund_name).join(','));
    $('#crf').val('');     
    get_risk_funds(all_i);
} 

else if(v == "any") {
    $('#crf').val(rfc.map(v => v.fund_name).join(','));   
    $('#irf').val(rfi.map(v => v.fund_name).join(',')); 
    get_funds(rfc.concat(rfi));
    get_risk_funds(all_c.concat(all_i));
}    
else
{
var check = "Product Not Selected";
$('#pns').text(check);
}

$('#recommended_funds').on('touchstart click', function(){
	    $('#choosen_fund').val($('#recommended_funds').val());  
});

$('#risk_funds').on('touchstart click', function(){
	    $('#choosen_fund').val($('#risk_funds').val());  
});

$('#rec').click(function() {
   
    $('#recommended_funds').show();
    $('#risk_funds').hide();
    $('#risk_funds').removeAttr('required');
    $('#recommended_funds').prop('required',true);
});
$('#risk').click(function() {
    $('#risk_funds').show();
    
    $('#risk_funds').prop('required',true);
    $('#recommended_funds').removeAttr('required');

});


function get_funds(arr){
    
    $("#recommended_funds").empty();   
    $("#recommended_funds").append('<option value="">Select Fund</option>');
    
    for(iter in arr){
        $("#recommended_funds").append(`<option value="${arr[iter].id}|${arr[iter].fund_name}">${arr[iter].fund_name}</option>`);
    }
};

function get_risk_funds(arr){

    
    
    $("#risk_funds").empty();   
    $("#risk_funds").append('<option value="">Select Fund</option>');
    
    for(iter in arr){
 
        $("#risk_funds").append(`<option value="${arr[iter].id}|${arr[iter].fund_name}">${arr[iter].fund_name}</option>`);
    }
};

/////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

//$('#rf').val(p);

//// fg logics

//if(p == 'Multi Asset Fund'){

//$(".recommended_fund_link").attr("href", "maf");

//}
//if(p == 'Islamic Money Market Fund'){

//$(".recommended_fund_link").attr("href", "immf");
//}
//if(p == 'Islamic Income Fund'){
//$(".recommended_fund_link").attr("href", "iif");
//}
//if(p == 'Islamic Asset Allocation Fund or IFPF Conservative Plan'){
//$(".recommended_fund_link").attr("href", "iaaf");
//}		
//if(p == 'IFPF Active Allocation Plan'){
//$(".recommended_fund_link").attr("href", "ifpf");
//}

//// fg logics end
}

// Set animation delay if data-delay is specified
Reveal.addEventListener('ready', function ( event ) {
$('*[data-delay]').each( function () {
var delay = $(this).attr("data-delay");
$(this).css("-webkit-animation-delay", delay+"s");
$(this).css("animation-delay", delay+"s");
});
});

// Set animation duration if data-duration is specified
Reveal.addEventListener('ready', function ( event ) {
$('*[data-duration]').each( function () {
var duration = $(this).attr("data-duration");
$(this).css("-webkit-animation-duration", duration+"s");
$(this).css("animation-duration", duration+"s");
});
});

// Animate items that are not in a fragment
Reveal.addEventListener('slidechanged', function( event ) {
// Animate elements that are not a fragment (or in a fragment)
var filter = '*[data-animate]:not(.fragment):not(.fragment *)';

$(event.currentSlide).find(filter).each( function () {
$(this).addClass('animated');
$(this).addClass($(this).attr('data-animate'));
});
$(event.previousSlide).find(filter).each( function () {
$(this).removeClass('animated');
$(this).removeClass($(this).attr('data-animate'));
});
});

// Animate fragments
Reveal.addEventListener('fragmentshown', function( event ) {
function loop(i, el) {
if ($(el).attr('data-animate')) {
$(el).addClass('animated');
$(el).addClass($(el).attr('data-animate'));
}
$.each($(el).children().not('.fragment'), loop);
};
$.each(event.fragments, loop);
});

// Make the animation runnable again if fragment is hidden
Reveal.addEventListener('fragmenthidden', function( event ) {
function loop(i, el) {
if ($(el).attr('data-animate')) {
$(el).removeClass('animated');
$(el).removeClass($(el).attr('data-animate'));
}
$.each($(el).children().not('.fragment'), loop);
};
$.each(event.fragments, loop);
});



Reveal.initialize({

width: 1920,
height: 970,
margin: -0.05,
minScale: 0.2,
maxScale: 1.5,
dependencies: [
{ src: 'plugin/markdown/marked.js' },
{ src: 'plugin/markdown/markdown.js' },
{ src: 'plugin/notes/notes.js', async: true },
{ src: 'plugin/chart/Chart.min.js' },
{ src: 'plugin/chart/csv2chart.js' },
{ src: 'plugin/highlight/highlight.js', async: true, callback: function() { hljs.initHighlightingOnLoad(); } }
]
});

/// code for geo location

if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
} else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
}


function showPosition(position) {
var lat =  position.coords.latitude;
var lng = position.coords.longitude;	
var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function() {
if (this.readyState == 4 && this.status == 200) {
var arr = JSON.parse(this.responseText);
var data = arr.results[0].address_components;
var loc = data[0].long_name+ ' ' + data[1].long_name + ' ' + data[3].long_name + ', ' + data[4].long_name + ' ' + data[5].long_name ;
$('#location').val(loc);
$('#longitude').val(lng);
$('#latitude').val(lat);
}
};
xhr.open("GET", "https://maps.google.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=true&key=AIzaSyAauxe658vX6Gua6-oDfPPhq2qi1rT7eac");
xhr.send();

}


/// code for geo location end



/// hide product menu from footer on index and products page

var index_url = "{{url('welcome')}}";
var products_url = "{{url('products')}}";
var default_url = window.location.href.toString();
if(index_url == default_url || products_url == default_url ){
   $('.all_products').hide();
}

Reveal.addEventListener( 'vali', function() {

    $('aside.controls').hide();

}, false );

function checkClientDetails() {

    var payload = {

        client_name : $("#client_name").val(),
        client_email : $("#client_email").val(),
        client_number : $("#client_number").val(),
        client_cnic : $("#client_cnic").val()
    };

    axios.post('/checkClientDetails',payload).then(res => {

        if(res.data.success){

            Reveal.next();

            $('aside.controls').show();

            $("#client_name_error,#client_email_error,#client_number_error,#client_cnic_error").text('');

        }
        else{

            var err = res.data.errors;
            $("#client_name_error").text(err.client_name ? err.client_name[0] : '');
            $("#client_email_error").text(err.client_email ? err.client_email[0] : '');
            $("#client_number_error").text(err.client_number ? err.client_number[0] : '');
            $("#client_cnic_error").text(err.client_cnic ? err.client_cnic[0] : '');

        }
       
    });
   
    // if($("#cn").val() != '' &&  $("#ce").val() != '' &&  $("#cnu").val() != '' &&  $("#cni").val() != ''){
        
    //     Reveal.next();
    //     $('aside.controls').show();

    // }
    
}

</script>



</body>
</html>