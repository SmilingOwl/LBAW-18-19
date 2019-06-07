@extends('layouts.layout')
@section('include')

<link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
<link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
<link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

<script src={{asset('js/bar_nav.js')}}></script>
<script src={{asset('js/footer_position.js')}}></script>
<script src={{asset('js/profile.js')}}></script>
@endsection

@section('content')


<div class="mt-5 grey-background container">


    @include('pages.profile.profile_card')

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
                <?php $number_of_question=count($questions) ?>
                @if ($number_of_question==0)
                    This user doesn't have any question made
                @else
                    @foreach($questions as $question)
                        <div class="row-lg-4 row-md-4 row-sm-4 row-xs-4">
                            <div class="media profile_result">
                                <div class="media-left d-flex">
                                </div>
                                <div class="media-body">
                                    <div class="container">
                                        <a class="question" href={{URL::to('questions/'.$question->id)}}>{{ $question->title }}</a>
                                    </div>
                                    <div class="row footerResult">
                                        @if ($question->hasbest>=1)
                                        <img src="../images/answered-13.svg" alt="answered"
                                            class="media-object align-self-center column" style="width:2rem"
                                            id="catQuestion">
                                        @endif
                                        <p class="resultFooter align-self-center">
                                            {{ $question->contagem }}
                                            @if ($question->contagem==1)
                                            answer
                                            @else
                                            answers
                                            @endif
                                        </p>
                                        <p class="resultFooter align-self-center">
                                            {{$question->votes}}
                                            @if ($question->votes==1)
                                                 vote
                                            @else
                                                 votes
                                            @endif
                                        </p>
                                        <p class="resultFooter align-self-center">{{ $question->date }}</p>
                                    <img src={{asset('images/'.$question->caticon)}} alt="category" class="media-object"
                                            style="width:2rem; height: 2rem;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
                
                    
                </div>


            </div>
            @include('pages.profile.followers')
            @include('pages.profile.following')
        </div>
    </div>
</div>
@endsection