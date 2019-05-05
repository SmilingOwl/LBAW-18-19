@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection


@section('content')

    <div class="container settings-items">


        <div class="row">
            <h1  style=" margin: 5%; padding-right: 15px; text-align: center;">Delete Account</h1>
        </div>
        <div class="row" style="padding-left: 15px;">
            <input style="width: 70%" type="password" class="form-control input-h4 mt-2 passwordInput" placeholder="Confirm your password"
                required>

        </div>
        <div class="row">
            <a href="{{URL::to('/')}}" class="btn btn-dark " style="width: 10em; margin-top: 20px; margin-bottom: 20px;">Delete
                Account</a>
        </div>

    </div>
    @endsection