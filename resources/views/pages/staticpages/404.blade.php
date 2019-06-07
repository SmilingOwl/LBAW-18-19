@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet"  media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection
@section('title')
    404 | LearnIt
@endsection

@section('content')

<div class="container" id="notFound" >

        <img src="../images/404-21.svg" alt="error" class="mx-auto d-block img-fluid rounded-circle" style="width:20%;" id="pic404">

        <h1 style="text-align:center"> 404 </h1>
        <h2 style="text-align:center"> Oops...The page you were looking for was not found! </h2>

        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <a href={{URL::to('/')}} class="btn btn-dark " style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Home</a>
                </div>
            </div>
        </div>
    </div>


@endsection