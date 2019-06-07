@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet"  media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/feed.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
    <script src={{asset('js/toolTip.js')}}></script>
    <script src={{asset('js/questions_load.js')}}></script>

@endsection
@section('content')

@if (Request::path() == 'topic/all')
<h1 class="h1-responsive font-weight-bold text-center my-5 py-3">Here are all the questions...</h1>
@else
<h1 class="h1-responsive font-weight-bold text-center my-5 py-3">Here's what we found...</h1>
@endif

<div class="container" id="topBar">
    <div class="container" id="categories">

        <div class="row cat-row" style="font-size:100px;">                
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/art')}}" data-toggle="tooltip" title="Art">                                        
                <img  @if(Request::path() == 'topic/art') id="active" @endif src="../images/art-06.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/biology')}}" data-toggle="tooltip" title="Biology">
                    <img @if(Request::path() === 'topic/biology') id="active" @endif src="../images/biology-01.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/business')}}" data-toggle="tooltip" title="Business">
                    <img @if(Request::path() === 'topic/art') id="business" @endif src="../images/business-07.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/chemistry')}}" data-toggle="tooltip" title="Chemistry">
                    <img @if(Request::path() === 'topic/chemistry') id="active" @endif src="../images/chemistry-03.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/geology')}}" data-toggle="tooltip" title="Geology">
                    <img @if(Request::path() === 'topic/geology') id="active" @endif src="../images/geology-10.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/history')}}" data-toggle="tooltip" title="History">
                    <img @if(Request::path() === 'topic/history') id="active" @endif src="../images/history-08.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/math')}}" data-toggle="tooltip" title="Math">
                    <img @if(Request::path() === 'topic/math') id="active" @endif src="../images/maths-12.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/medicine')}}" data-toggle="tooltip" title="Medicine">
                    <img @if(Request::path() === 'topic/medicine') id="active" @endif src="../images/health-04.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/linguistics')}}" data-toggle="tooltip" title="Linguistics">
                    <img @if(Request::path() === 'topic/linguistics') id="active" @endif src="../images/linguistics-09.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/physics')}}" data-toggle="tooltip" title="Physics">
                    <img @if(Request::path() === 'topic/physics') id="active" @endif src="../images/physics-02.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/psychology')}}" data-toggle="tooltip" title="Psychology">
                    <img @if(Request::path() === 'topic/psychology') id="active" @endif src="../images/psychology-11.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="{{URL::to('topic/technology')}}" data-toggle="tooltip" title="Technology">
                    <img @if(Request::path() === 'topic/technology') id="active" @endif src="../images/tech-05.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
        </div>

    </div>
</div>

<div class="container d-flex justify-content-end" id="sortBar">

    <div class="dropdown show" id="sortBy">
        

        <div class="dropdown-menu" >
            <a class="dropdown-item" href="#">Newest</a>
            <a class="dropdown-item" href="#">Most Upvoted</a>
            <a class="dropdown-item" href="#">Most Answered</a>
        </div>
    </div>

</div>

<div class="container" id="feed">

    <div class="row">
        <div class="col-lg ">
            <div class="results">
             @if(Request::path() === 'topic/all')
                <?php $number_of_question=count($all_questions) ?>
                @if ($number_of_question==0)
                    There are no questions
                @else
                    @foreach($all_questions as $question)
                    <div class="media result">
                        <div class="media-left d-flex">
                        </div>
                        <div class="media-body">
                            <a href={{URL::to('profile/'.$question->username)}}>
                                @if (!is_null($question->photo))
                                <h4 class="media-heading resultHeader"><img src={{asset('images/'.$question->photo)}} alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">{{ $question->username }}</h4>
                                @else
                                <h4 class="media-heading resultHeader"><img src={{asset('images/defaultPhoto.png')}} alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">{{ $question->username }}</h4>
                                @endif
                            </a>
                            <div class="container">
                                <a class="question" href={{URL::to('questions/'.$question->id_question)}}>{{ $question->title }}</a>
                            </div>                     
                            <div class="row footerResult">
                                    @if ($question->hasbest>=1)
                                <img src="../images/answered-13.svg" alt="corret" class="media-object align-self-center column"
                                    style="width:2rem" id="catQuestion">
                                    @endif
                                <p class="resultFooter align-self-center">
                                    @if (is_null($question->contagem))
                                        0
                                    @else
                                        {{ $question->contagem }}
                                    @endif
                                    @if ($question->contagem==1)
                                    answer
                                    @else
                                    answers
                                    @endif</p>
                                <p class="resultFooter align-self-center">
                                    @if (is_null($question->votes))
                                        0
                                    @else
                                        {{$question->votes}}
                                    @endif
                                    @if ($question->votes==1)
                                            vote
                                    @else
                                            votes
                                    @endif</p>
                                <p class="resultFooter align-self-center">{{ $question->date }}</p>
                                <img src={{asset('images/'.$question->caticon)}} alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                            </div>
                        </div>
                    </div>
                @endforeach
                @endif

             @else
                <?php $number_of_question=count($questions) ?>
                @if ($number_of_question==0)
                    This category doesn't have any questions
                @else
                    @foreach($questions as $question)
                    <div class="media result">
                        <div class="media-left d-flex">
                        </div>
                        <div class="media-body">
                            <a href={{URL::to('profile/'.$question->username)}}>
                                @if (!is_null($question->photo))
                                <h4 class="media-heading resultHeader"><img src={{asset('images/'.$question->photo)}} alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">{{ $question->username }}</h4>
                                @else
                                <h4 class="media-heading resultHeader"><img src={{asset('images/defaultPhoto.png')}} alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">{{ $question->username }}</h4>
                                @endif
                            </a>
                            <div class="container">
                                <a class="question" href={{URL::to('questions/'.$question->id_question)}}>{{ $question->title }}</a>
                            </div>                     
                            <div class="row footerResult">
                                    @if ($question->hasbest>=1)
                                <img src="../images/answered-13.svg" alt="corret" class="media-object align-self-center column"
                                    style="width:2rem" id="catQuestion">
                                    @endif
                                <p class="resultFooter align-self-center">
                                    {{ $question->contagem }}
                                    @if ($question->contagem==1)
                                    answer
                                    @else
                                    answers
                                    @endif</p>
                                <p class="resultFooter align-self-center">
                                    {{$question->votes}}
                                    @if ($question->votes==1)
                                            vote
                                    @else
                                            votes
                                    @endif</p>
                                <p class="resultFooter align-self-center">{{ $question->date }}</p>
                                <img src={{asset('images/'.$question->caticon)}} alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                            </div>
                        </div>
                    </div>
                @endforeach
                @endif
            @endif
            </div>

        </div>
        <div class="col-lg-4 pl-5">
            <div class="card">
                <div class="card-body leaders" id="leaderBoard">
                    <h4 class="card-title">Leaderboard</h4>
                    @foreach($top_users as $user)
                    <div class="media leader">
                        <div class="media-left">
                        </div>
                        <div class="media-body">
                            <div class="row leaderResult justify-content-center">
                                <h4 class="media-heading align-self-center leaderInfo"><img src={{asset('images/'.$user->photo)}}
                                    alt="profile" class="media-object rounded-circle profilePic" style="width:1.75rem">{{ $user->username }}</h4>
                                <p class="points"><img src="../images/points-16.svg" alt="categorie" class="media-object"
                                        style="width:1rem">{{ $user->points }}
                                    points</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>

        </div>
    </div>
</div>
@endsection

