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

        <section>
            <div class="jumbotron profile-jumbotron">
                <div class="container">
                    <div class="row align-items-center">

                        <div class="col-md-4 text-center">
                            <img class="rounded-circle img-fluid img-profile" alt="profile_pic" src="../images/sophie.jpg"
                                style=" width:90%; max-width: 230px; max-height: 230px;">
                        </div>

                        <div class="col-md-4 text-left">
                            <h2 class="h2-adapt"> 

                                <a href="../pages/edit_profile.html" role="button" class="btn" id="editBtn" style="max-width: 40px;">
                                    <i class="fas fa-pen"></i>
                                </a>

                                <span class="fa-layers fa-fw">
                                    <i style="font-family: 'Prompt', sans-serif; font-size: 18px;">Enthusiast</i>

                                </span>
                            </h2>

                            <div class="mt-2">
                                <p style="font-family: 'Prompt', sans-serif;">
                                    I love this forum!
                                </p>

                                <div class="d-flex justify-content-sm-start">

                                    <div>
                                        <h5>100
                                            <small style="margin-right: 30px;">followers</small>
                                        </h5>
                                    </div>


                                    <div>
                                        <h5 style="margin-left: 30px;">70
                                            <small> following</small>
                                        </h5>
                                    </div>


                                </div>

                            </div>
                        </div>
                        <!--Bio-->
                        <div class="col-md-3" style="align-content: flex-end;">
                            <div class="card card-body p-1" id="stats">
                                <div class="container m-3 align-self-center" id="newBorder">
                                    <h5 class="text-dark" id="statsTitle" style=" text-align: center">Stats</h5>
                                    <div class="d-flex flex-column justify-content-around flex-wrap">
                                        <div class="d-flex p-1 stat">
                                            <div class="mx-2">
                                                <img src="../images/points-16.svg" alt="category" style="width: 1.7em"></img>
                                            </div>
                                            <h6>300
                                                <small>points</small>
                                            </h6>
                                        </div>

                                        <div class="d-flex p-1 stat">
                                            <div class="mx-2">
                                                <img src="../images/question-17.svg" alt="category" style="width: 1.7em"></img>
                                            </div>
                                            <h6>33
                                                <small>questions</small>
                                            </h6>
                                        </div>

                                        <div class="d-flex p-1 stat">
                                            <div class="mx-2">
                                                <img src="../images/edit-18.svg" alt="category" style="width: 1.7em"></img>
                                            </div>
                                            <h6>50
                                                <small>answers</small>
                                            </h6>
                                        </div>

                                        <div class="d-flex p-1 stat">
                                            <div class="mx-2">
                                                <img src="../images/answered-13.svg" alt="category" style="width: 1.7em"></img>
                                            </div>
                                            <h6>3
                                                <small>best answers</small>
                                            </h6>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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

                /* QUESTIONS */
                <div id="Questions" class="container tab-pane active"><br>
                    <div class="container pb-3">
                        @foreach($member->questions->sortByDesc('date') as $question)
                        @endforeach
                    </div>
                </div>

                /*FOLLOWERS*/
                <div id="Followers" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
                            @include('pages.profile.followers')
                        </div>
                    </div>
                </div>

                /*FOLLOWING*/
                <div id="Followers" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
                            @include('pages.profile.following')
                        </div>
                    </div>
                </div>
                
            </div>

        </div>
    </div>
@endsection