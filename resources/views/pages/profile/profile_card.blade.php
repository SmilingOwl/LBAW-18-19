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
                    <img class="rounded-circle img-fluid img-profile" alt="profile_pic" src={{asset('/images/' . $member->profilephoto)}}
                        style=" width:90%; max-width: 230px; max-height: 230px;">
                </div>

                <div class="col-md-4 text-left">
                    <h2 class="h2-adapt">{{$member->username}}
                        @if (Auth::user()->username === $member->username)
                        <a href={{URL::to('profile/' .$member->username .'/edit')}} role="button" class="btn" id="editBtn" style="max-width: 40px;">
                            <i class="fas fa-pen"></i>
                        </a> 
                        @endif

                        @if(Auth::user()->username != $member->username && !($followings->flatten()->where('username', $member->username)->isEmpty()))
                            <h5>
                                <button type="button" class="btn btn-light">Unfollow</button> 
                            </h5>   
                        @elseif(Auth::user()->username != $member->username && ($followings->flatten()->where('username', $member->username)->isEmpty()))  
                            <h5>
                                <button type="button" class="btn btn-light">Follow</button> 
                            </h5>            
                        @endif

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
                                <h5>
                                    <?php $follower_number=count($followers) ?>
                                    @if ($follower_number===1)
                                        {{$follower_number}}
                                        <small style="margin-right: 30px;">follower</small>
                                    @else
                                        {{$follower_number}}
                                        <small style="margin-right: 30px;">followers</small>
                                    @endif
                                </h5>
                            </div>


                            <div>
                                <h5 style="margin-left: 30px;">
                                    
                                    <?php $following_number=count($followings) ?>
                                    @if ($following_number===1)
                                        {{$following_number}}
                                        <small> following</small>
                                    @else
                                        {{$following_number}}
                                        <small> followings</small>
                                    @endif
                                </h5>
                            </div>





                        </div>

                    </div>
                </div>
                <!--Bio-->
                <div class="col-md-4" style="align-content: flex-end;">
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
                                    <h6>
                                        @if (is_null($member->nr_questions))
                                            0
                                            <small>questions</small>
                                        @elseif ($member->nr_questions == 1)
                                            {{$member->nr_questions}}
                                            <small>question</small>
                                        @else
                                            {{$member->nr_questions}}
                                            <small>questions</small>
                                        @endif
                                    </h6>
                                </div>

                                <div class="d-flex p-1 stat">
                                    <div class="mx-2">
                                        <img src="../images/edit-18.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>
                                        @if (is_null($member->nr_answers))
                                            0
                                            <small>answers</small>
                                        @elseif ($member->nr_answers == 1)
                                            {{$member->nr_answers}}
                                            <small>answer</small>
                                        @else
                                            {{$member->nr_answers}}
                                            <small>answers</small>
                                        @endif
                                    </h6>
                                </div>

                                <div class="d-flex p-1 stat">
                                    <div class="mx-2">
                                        <img src="../images/answered-13.svg" alt="category" style="width: 1.7em">
                                    </div>
                                    <h6>
                                        @if (is_null($member->nr_best_answers))
                                            0
                                            <small>best answers</small>
                                        @elseif ($member->nr_best_answers == 1)
                                            {{$member->nr_best_answers}}
                                            <small>best answer</small>
                                        @else
                                            {{$member->nr_best_answers}}
                                            <small>best answers</small>
                                        @endif
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