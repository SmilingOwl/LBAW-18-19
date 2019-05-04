@extends('layouts.layout')

@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
@endsection
@section('content')

    <div class="mt-5 grey-background container">

        @include('pages.profile.profile_card');
        <!--separadores-->
        <div class="container mb-3">
            <ul class="nav nav-tabs profile-tabs" role="tablist">
                <li class="nav-item">

                    <a class="nav-link active" data-toggle="tab" href="#Questions">
                        <i class="fas fa-question"></i>
                        Questions</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#Followers">
                        <i class="fas fa-user-plus"></i> Followers</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#Following">
                        <i class="fas fa-plus"></i> Following</a>
                </li>

            </ul>
            <div class="tab-content">

               
                <div id="Questions" class="container tab-pane active"><br>
                    <div class="container pb-3">
                    
                    </div>
                </div>

                <!--
                <div id="Followers" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
    
                        </div>
                    </div>
                </div>

             
                <div id="Followers" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
                        
                        </div>
                    </div>
                </div>
            -->
            </div>

        </div>
    </div>
@endsection