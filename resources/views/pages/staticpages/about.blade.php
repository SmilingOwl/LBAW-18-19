@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet"  media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
@endsection

@section('title')
    About | LearnIt
@endsection

@section('content')
<div class="container" id="about">

        <h1 class="h1-responsive font-weight-bold text-center mt-5 mb-3 py-3"> About us </h1>
        
        <div class="col-lg-6 offset-lg-3 py-3">

            <p style="font-family: 'Prompt', sans-serif;" id="about0"><em>&nbsp;&nbsp;&nbsp;&nbsp;LearnIt</em> is an online platform to introduce academic related questions and answers, where people can ask questions
                and contribute with answers, developing a community of unique insights on a wide variety of topics. 
            </p>
            
            <p style="font-family: 'Prompt', sans-serif;" id="about1">&nbsp;&nbsp;&nbsp;&nbsp; Despite the ever-evolving ease of finding information on the Internet, it is often difficult to find reliable and objective 
                information about certain specific topics in each area of knowledge. Sometimes, resorting to books  to find the answer to 
                some specific doubts becomes a very time-consuming process. In this reality, in a society that is increasingly more global, 
                having a place where students and other academical members from diverse origins and geographic locations can offer their 
                knowledge and give their input is highly advantageous. 
            </p>
            <p style="font-family: 'Prompt', sans-serif; " id="about2">
                <em>&nbsp;&nbsp;&nbsp;&nbsp; LearnIt</em> will provide an extremely useful tool for all students, where they and other academic members, can find 
                reliable, objective and specific information very quickly.
            </p>
            
            <p style="font-family: 'Prompt', sans-serif; " id="about3">
                &nbsp;&nbsp;&nbsp;&nbsp; It's a website thoughtfully designed, beautifully crafted to be simple, clean and easy to use.   
            </p>

            <p class="mt-4" style="font-family: 'Prompt', sans-serif; text-align:center; margin-bottom: 20px;" id="about4">
                <strong>The LearnIt team,</strong><br>
                <em>Leonor Freitas, João Lima, José Martins, Juliana Marques.</em>
            </p>
        </div>

    </div>
@endsection