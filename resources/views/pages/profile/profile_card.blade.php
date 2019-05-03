<section>
    <div class="jumbotron profile-jumbotron">
        <div class="container">
            <div class="row align-items-center">
              
                <div class="col-md-4 text-center">
                    <img class="rounded-circle img-fluid img-profile" alt="profile_pic" src="{{$member->profile_picture}}"
                        style=" width:90%; max-width: 230px; max-height: 230px;">
                </div>

                <div class="col-md-4 text-left">
                    <h2 class="h2-adapt"> 

                        <a href="../pages/edit_profile.html" role="button" class="btn" id="editBtn" style="max-width: 40px;">
                            <i class="fas fa-pen"></i>
                        </a>

                        <span class="fa-layers fa-fw">
                            <i style="font-family: 'Prompt', sans-serif; font-size: 18px;">{{$member->rank}}</i>

                        </span>
                    </h2>

                    <!-- bio -->

                    <div class="mt-2">
                        <p style="font-family: 'Prompt', sans-serif;">
                            {{$member->bioDescription}}
                        </p>

                        <div class="d-flex justify-content-sm-start">

                            <div>
                                <h5>{{count($member->followers)}}
                                    <small style="margin-right: 30px;">followers</small>
                                </h5>
                            </div>


                            <div>
                                <h5 style="margin-left: 30px;">{{count($member->following)}}
                                    <small> following</small>
                                </h5>
                            </div>


                        </div>
                    </div>

                    <div class="col-md-3" style="align-content: flex-end;">
                        <div class="card card-body p-1" id="stats">
                            <div class="container m-3 align-self-center" id="newBorder">
                                <h5 class="text-dark" id="statsTitle" style=" text-align: center">Stats</h5>
                                <div class="d-flex flex-column justify-content-around flex-wrap">
                                    <div class="d-flex p-1 stat">
                                        <div class="mx-2">
                                            <img src="../images/points-16.svg" alt="category" style="width: 1.7em"></img>
                                        </div>
                                        <h6>{{$member->points}}
                                            <small>points</small>
                                        </h6>
                                    </div>

                                    <div class="d-flex p-1 stat">
                                        <div class="mx-2">
                                            <img src="../images/question-17.svg" alt="category" style="width: 1.7em"></img>
                                        </div>
                                        <h6>{{$member->nr_questions}}
                                            <small>questions</small>
                                        </h6>
                                    </div>

                                    <div class="d-flex p-1 stat">
                                        <div class="mx-2">
                                            <img src="../images/edit-18.svg" alt="category" style="width: 1.7em"></img>
                                        </div>
                                        <h6>{{$member->nr_answers}}
                                            <small>answers</small>
                                        </h6>
                                    </div>

                                    <div class="d-flex p-1 stat">
                                        <div class="mx-2">
                                            <img src="../images/answered-13.svg" alt="category" style="width: 1.7em"></img>
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
    </div>
</section>