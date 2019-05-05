@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
@endsection


@section('content')

    <div class="container settings-items">

        <div class="row">
            <h1 style="margin: 5%; text-align: center;">My Account</h1>
        </div>
        <div class="row">
            <input style="width: 70%" type="password" class="form-control input-h4 mt-2 passwordInput" placeholder="New password..."
                required>
            <input style="width: 70%" type="password" class="form-control input-h4 mt-2 passwordInput" placeholder="Confirm password"
                required>
        </div>
        <div class="row">
            <button class="btn btn-dark row" style="width: 10em; margin-top: 20px; margin-bottom: 20px;">Save</button>
        </div>
        <div class="row">
            <h1 style=" margin: 5%; text-align: center;">Connected Accounts</h1>
        </div>

        <div class="row" style=" margin-bottom: 20px; width: 100%; padding-right: 15px;">

            <div class="row" style="width: 100%; padding-bottom: 10px;">
                <div class="container-fluid social-buttons align-items-center" style="width:70%;">
                    <div class="row" style="padding-bottom: 10px;">
                        <div class="col" >
                            <a href="#" class="google btn" style="max-width:292px;"><i class=" fa fa-google fa-fw"></i>
                                Disconnect with Google</a>
                        </div>
                        <div class="col" style="min-width:230px;">
                            <h5 class="text-truncate">luis12mai@gmail.com</h5>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col">
                            <a href="#" class="fb btn" style="max-width:292px;"><i class="fa fa-facebook fa-fw"></i>
                                Connect with Facebook</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <h1  style=" margin: 5%; padding-right: 15px; text-align: center;">Delete Account</h1>
        </div>
        <div class="row" style="padding-left: 15px;">
            <input style="width: 70%" type="password" class="form-control input-h4 mt-2 passwordInput" placeholder="Confirm your password"
                required>

        </div>
        <div class="row">
            <a href="../pages/feed.html" class="btn btn-dark " style="width: 10em; margin-top: 20px; margin-bottom: 20px;">Delete
                Account</a>
        </div>

    </div>
    @endsection