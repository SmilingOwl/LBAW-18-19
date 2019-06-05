@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/questionDetail.js')}}></script>
    <script src={{asset('js/voteQuestionDetail.js')}}></script>
@endsection

@section('content')

<div class="container" id="question-big">
    <div class="card detail mt-5">
        <div class="card-header" id="question-header">
            <div class="name-aproved">
                <h6 class="media-heading resultHeader text-nowrap text-truncate" style="max-width:235px ;"><a href={{URL::to('profile/'.$question->username)}}><img
                            src={{asset('images/'.$question->profilephoto)}} alt="profile_pic" class="media-object rounded-circle profilePic "
                            style="width:3rem; ">
                        {{$question->username}}</a></h6>
                    <a href="./topic.html" id="categoryQuestion"><img src={{asset('images/'.$question->caticon)}} alt="category" class="media-object"
                            style="width:3rem; height: 3rem;">{{ucfirst($question->catname)}}</a>
               
            </div>
            <div class="cat-date">
                <p class="resultFooter align-self-center">{{$question->date}}</p>
                <div>
                    @if (!is_null($question->best))
                        <img src="/images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">
                    @endif
                </div>
            </div>
        </div>



        <div class="card-body" id="question-body">
            <div id="accordion">
                <div class="card" style="border-style:none;">
                    <div class="card-header title-upvotes">
                        <div class="answer-up-votes-mainquestion" data-auth="{{$user}}" data-type="{{$question->votetype}}" data-id={{$question->id_question}}>
                            @if ($question->votetype=='upvote')
                                <img src="/images/icon-14.svg" alt="up-vote" class="media-object question-upvote" style="width:1.5rem; height: 1.5rem;">
                            @else
                                <img src="/images/upvote-14.svg" alt="up-vote" class="media-object question-upvote" style="width:1.5rem; height: 1.5rem;">
                            @endif
                            <span class="number-votes" data-number={{$question->votes}}>
                            @if ($question->votes>=1000)
                                {{number_format($question->votes/1000,1,',','')}}K
                            @else
                                {{$question->votes}}
                            @endif
                            </span>
                            @if ($question->votetype=='downvote')
                                <img src="/images/downvote-19.svg" alt="down-vote" class="media-object question-downvote" style="width:1.5rem; height: 1.5rem;">
                            @else
                                <img src="/images/broken-19.svg" alt="down-vote" class="media-object question-downvote" style="width:1.5rem; height: 1.5rem;">
                            @endif
                            
                        </div>
                        <a class="card-link" data-toggle="collapse" href="#description">
                            <h2>{{$question->title}}</h2>
                        </a>
                    </div>
                    <div id="description"   class="collapse show" data-parent="#accordion">
                        <div class="card-body" style="border-style:none; white-space: pre-line;">
                            {{$question->description}}
                        </div>
                    </div>
                </div>
            </div>
            <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
        </div>
    </div>
    <div class="card make-comment" style="margin-bottom:1em;" id="no-thin-line2">
        <div class="card-body add-comment-body" id="commentAdd">
            <div class="form-group">
                <label for="comment">Comment:</label>
                <textarea class="form-control" rows="3" id="comment" name="text"></textarea>
            </div>
            <div class="btn-group" style="align-self:flex-end;">
                <button type="button" class="btn btn-dark">Submit</button>
                <button type="button" class="btn btn-secondary">Cancel</button>
            </div>
        </div>
    </div>  
    <div id="accordion2">
        <div class="card no-thin-line">
            <div class="card-header answer-header">
                <a class="card-link" data-toggle="collapse" href="#answers-to-question">
                    <span class="info-answers expand-icon"><i class="fas fa-minus-circle"></i>
                        @if (is_null($question->nr_answers))
                            0
                        @endif
                        {{$question->nr_answers}}
                        @if ($question->nr_answers == 1)
                            answer
                        @else
                            answers
                        @endif
                    </span>
                </a>
            </div>
            @foreach ($answers as $answer)
            <div id="answers-to-question" class="collapse show" data-parent="#accordion2">
                <div class="card-body answer-body-all">
                    <div class="card" style="border-style:none;">
                        <div class="card-header comment-title">
                            <div class="card-link answer-header-icon" >
                            <div class="row">
                                <div class="answer-user">
                                    <a href={{URL::to('profile/'.$answer->username)}}>
                                        <img src={{asset('images/'.$answer->profilephoto)}} alt="User2" class="rounded-circle" style="width:2em; margin:0;">
                                    </a>
                                    <a href={{URL::to('profile/'.$answer->username)}}>
                                        {{$answer->username}}
                                    </a>
                                </div>
                                <div>
                                    @if (!is_null($answer->best))
                                        <img src="../images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">
                                    @endif
                                </div>
                            </div>
                                <small>
                                    {{$answer->date}}
                                </small>
                            </div>
                        </div>
                            <div class="card-body comment-body">
                                <div class="media border p-3 answer-question">
                                    <div class="media-body">
                                        <div>
                                            {{$answer->text}}
                                        </div>

                                        <div class="bottom-answer">
                                            <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
                                            <div class="answer-up-votes" data-auth="{{$user}}" data-type="{{$answer->votetype}}" data-id={{$answer->id_answer}}>
                                                @if ($answer->votetype=='upvote')
                                                    <img src="/images/icon-14.svg" alt="up-vote" class="media-object answer-upvote" style="width:1.2rem; height: 1.2rem;">
                                                @else
                                                    <img src="/images/upvote-14.svg" alt="up-vote" class="media-object answer-upvote" style="width:1.2rem; height: 1.2rem;">
                                                @endif
                                                <span class="number-votes" data-number={{$answer->votes}}>
                                                @if ($answer->votes>=1000)
                                                    {{number_format($answer->votes/1000,1,',','')}}K
                                                @else
                                                    {{$answer->votes}}
                                                @endif
                                                </span>
                                                @if ($answer->votetype=='downvote')
                                                    <img src="/images/downvote-19.svg" alt="down-vote" class="media-object answer-downvote" style="width:1.2rem; height: 1.2rem;">
                                                @else
                                                    <img src="/images/broken-19.svg" alt="down-vote" class="media-object answer-downvote" style="width:1.2rem; height: 1.2rem;">
                                                @endif


                                            </div>
                                            <span class="make-comment"><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i>Reply</span>
                                        </div>

                                        @if (!is_null($answer->nr_answers))
                                        <div class="media p-3 container-accordion">
                                            <div id="accordion{{$answer->id_answer+4}}" value={{$answer->id_answer+4}}>
                                                <div class="card no-thin-line">
                                                    <div class="card-header answer-header">
                                                        <a class="card-link" data-toggle="collapse" href="#answers-to-answers{{$answer->id_answer+4}}">
                                                            <span class="info-answers expand-icon"><i class="fas fa-plus-circle"></i>
                                                                {{$answer->nr_answers}}
                                                                @if ($answer->nr_answers== 1)
                                                                    answer
                                                                @else
                                                                    answers
                                                                @endif
                                                            </span>
                                                        </a>
                                                    </div>
                                                    <div id="answers-to-answers{{$answer->id_answer+4}}" class="collapse" data-parent="#accordion{{$answer->id_answer+4}}">
                                                        <div class="card-body answer-body-all">
                                                            <div class="card" style="border-style:none;"></div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>



    

</div>

@endsection