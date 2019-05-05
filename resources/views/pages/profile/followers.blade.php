@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
@endsection
@section('content')

<body class="grey-background">
    <main role="main" class="my-5">

        @include('pages.profile.profile_card')

        <!-- content -->
        <section class="container">
            <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">
                    @foreach($member->followers as $follower)
                        
                            <div class="box-part text-center">
                                <img class="rounded-circle followering" alt="profile_pic" src="{{$follower->profilephoto}}">
                               
                                <div class="title">

                                    <h3>{{ $follower->name }}</h3>                                    

                                    <i class="far fa-lightbulb" style="font-size: 18px; margin-right: 5px;"
                                        data-fa-transform="up-2 grow-2"></i> {{$follower->rank}}
                                        
                                </div>

                            </div>
                        
                    @endforeach
                </div>
            </div>
        </section>

@endsection