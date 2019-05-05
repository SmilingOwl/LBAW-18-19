@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/profile.js')}}></script>
@endsection
<section>

    <div class="jumbotron profile-jumbotron">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-md-4 text-center">
                    <img class="rounded-circle img-fluid img-profile" alt="profile_pic" src="{{$member->profilephoto}}"
                        style=" width:90%; max-width: 230px; max-height: 230px;">
                </div>

                <div class="col-md-4 text-left">
                    <h2 class="h2-adapt">{{$member->username}}

                        <a href={{URL::to('profile/{username}/edit')}} role="button" class="btn" id="editBtn" style="max-width: 40px;">
                            <i class="fas fa-pen"></i>
                        </a>

                        <span class="fa-layers fa-fw">
                            <i style="font-family: 'Prompt', sans-serif; font-size: 18px;">{{$member->rank}}</i>

                        </span>
                    </h2>

                    <div class="mt-2">
                        <p style="font-family: 'Prompt', sans-serif;">
                            {{$member->biodescription}}
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
                                        <img src="../images/points-16.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>{{$member->points}}
                                        <small>points</small>
                                    </h6>
                                </div>

                                <div class="d-flex p-1 stat">
                                    <div class="mx-2">
                                        <img src="../images/question-17.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>{{$member->nr_questions}}
                                        <small>questions</small>
                                    </h6>
                                </div>

                                <div class="d-flex p-1 stat">
                                    <div class="mx-2">
                                        <img src="../images/edit-18.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>{{$member->nr_answers}}
                                        <small>answers</small>
                                    </h6>
                                </div>

                                <div class="d-flex p-1 stat">
                                    <div class="mx-2">
                                        <img src="../images/answered-13.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>{{$member->nr_best_answers}}
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