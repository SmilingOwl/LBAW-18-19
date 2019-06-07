@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/feed.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection
@section('content')

<div class="container d-flex justify-content-end" id="sortBar">

    @if (!(count($result)==0))
    <div class="dropdown show" id="sortBy">
        

        <div class="dropdown-menu" >
            <a class="dropdown-item" href="#">Newest</a>
            <a class="dropdown-item" href="#">Most Upvoted up</a>
            <a class="dropdown-item" href="#">Most Upvoted down</a>
            <a class="dropdown-item" href="#">More Answers</a>
            <a class="dropdown-item" href="#">Less Answers</a>
        </div>
    </div>
    @endif

</div>

<div class="container" id="feed">

    <div class="row">
        <div class="col-lg ">
            @if (count($result)==0)
                We didn't find what you were looking for. Try asking the question instead.
            @else
            <div class="results">
                @foreach ($result as $item)
                    <div class="media result">
                        <div class="media-left d-flex">
                        </div>
                        <div class="media-body">
                            <a href={{URL::to('profile/'.$item->username)}}>
                                <h4 class="media-heading resultHeader"><img src={{asset('images/'.$item->profilephoto)}} alt="profile"
                                        class="media-object rounded-circle profilePic" style="width:3rem">{{$item->username}}</h4>
                            </a>
                            <div class="container">
                                <a class="question" href={{URL::to('questions/'.$item->id)}}>{{ $item->title }}​</a>
                            </div>
                            <div class="row footerResult">
                                @if (!is_null($item->hasbest) && $item->hasbest != 0)
                                <img src="/images/answered-13.svg" alt="corret" class="media-object align-self-center column"
                                    style="width:2rem">
                                @endif
                                
                                <p class="resultFooter align-self-center">
                                    @if (is_null($item->contagem))
                                        0
                                    @else
                                        {{$item->contagem}}
                                    @endif
                                    @if ($item->contagem == 1)
                                        answer
                                    @else
                                        answers
                                    @endif
                                </p>
                                <p class="resultFooter align-self-center">
                                    @if (is_null($item->votes))
                                        0
                                    @else
                                        {{$item->votes}}
                                    @endif
                                    @if ($item->votes == 1)
                                        vote
                                    @else
                                        votes
                                    @endif
                                </p>
                                <p class="resultFooter align-self-center">{{ $item->date }}</p>
                                <img src={{asset('images/'.$item->caticon)}} alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                            </div>
                        </div>
                    </div>
                @endforeach
                

            </div>

            @endif

        </div>
    </div>
</div>
@endsection