@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
@endsection

@section('content')

<div class="container" id="question-big">
    <div class="card detail mt-5">
        <div class="card-header" id="question-header">
            <div class="name-aproved">
                <h6 class="media-heading resultHeader text-nowrap text-truncate" style="max-width:235px ;"><a href="./profile.html"><img
                            src="../images/yves.jpg" alt="profile_pic" class="media-object rounded-circle profilePic "
                            style="width:3rem; ">
                        shebookworm4</a></h6>
                    <a href="./topic.html" id="categoryQuestion"><img src="../images/physics-02.svg" alt="category" class="media-object"
                            style="width:3rem; height: 3rem;">Physics</a>
               
            </div>
            <div class="cat-date">
                <p class="resultFooter align-self-center">7 Jan 2019</p>
                <div>
                    <img src="../images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">
                </div>
            </div>
        </div>



        <div class="card-body" id="question-body">
            <div id="accordion">
                <div class="card" style="border-style:none;">
                    <div class="card-header title-upvotes">
                        <div class="answer-up-votes-mainquestion">
                            <img src="../images/icon-14.svg" alt="up-vote" class="media-object" style="width:1.5rem; height: 1.5rem;">
                            14.3K
                            <img src="../images/broken-19.svg" alt="down-vote" class="media-object" style="width:1.5rem; height: 1.5rem;">
                        </div>
                        <a class="card-link" data-toggle="collapse" href="#description">
                            <h2>{{$question->title}}</h2>
                        </a>
                    </div>
                    <div id="description" class="collapse show" data-parent="#accordion">
                        <div class="card-body" style="border-style:none;">
                            {{$question->description}}
                        </div>
                    </div>
                </div>
            </div>
            <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
        </div>
    </div>
    <div id="accordion2">
        <div class="card no-thin-line">
            <div class="card-header answer-header">
                <a class="card-link" data-toggle="collapse" href="#answers-to-question">
                    <span class="info-answers expand-icon"><i class="fas fa-minus-circle"></i>
                        1 answer </span>
                </a>
            </div>
            <div id="answers-to-question" class="collapse show" data-parent="#accordion2">
                <div class="card-body answer-body-all">
                    <div class="card" style="border-style:none;">
                        <div class="card-header comment-title">
                            <div class="card-link answer-header-icon" >
                            <div class="row">
                                <div class="answer-user">
                                    <a href="../pages/profile.html">
                                        <img src="../images/user2.png" alt="User2" class="rounded-circle" style="width:2em; margin:0;">
                                    </a>
                                    <a href="../pages/profile.html">
                                        Pedro Carvalho
                                    </a>
                                </div>
                                <div>
                                        <img src="../images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">
                                </div>
                            </div>
                                <small>
                                    9 March 2019
                                </small>
                            </div>
                        </div>
                            <div class="card-body comment-body">
                                <div class="media border p-3 answer-question">

                                    <div class="media-body">

                                        <div>
                                            <p style="margin: 1em 1em 1em 1em;">
                                                A black hole is a place in space where gravity pulls so
                                                much that even
                                                light can not get
                                                out. The gravity is so strong because
                                                matter has been squeezed into a tiny space.
                                            </p>
                                            <p style="margin: 1em 1em 1em 1em;">
                                                Gravity doesn’t just attract the objects having mass but it
                                                attracts
                                                everything such as
                                                electromagnetic waves( such as light ),
                                                gravitons and spacetime curve which in turn expands the
                                                spacetime curve due
                                                to which the
                                                rate of change of time gets slower near it..
                                                Sheet shown in picture below is equivalent to the space
                                                time web which is
                                                getting expanded
                                                near the singularity(center of black hole).
                                            </p>
                                            <p style="margin: 1em 1em 1em 1em;">
                                                The curvature of spacetime by matter therefore not only
                                                stretches or
                                                shrinks distances,
                                                depending on their direction with respect to
                                                the gravitational field, but also appears to slow down the
                                                flow of time.
                                                This effect is
                                                called gravitational time dilation. In most
                                                circumstances, such gravitational time dilation is
                                                minuscule and hardly
                                                observable, but it
                                                can become very significant when spacetime
                                                is curved by a massive object, such as a black hole.
                                            </p>
                                        </div>

                                        <div class="bottom-answer">
                                            <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
                                            <div class="answer-up-votes">

                                                <img src="../images/icon-14.svg" alt="up-vote" class="media-object"
                                                    style="width:1.2rem; height: 1.2rem;">
                                                100
                                                <img src="../images/broken-19.svg" alt="down-vote" class="media-object"
                                                    style="width:1.2rem; height: 1.2rem;">
                                            </div>
                                            <a href="#" ><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i></a>
                                        </div>


                                        <div class="media p-3">

                                            <div id="accordion4">
                                                <div class="card no-thin-line">
                                                    <div class="card-header answer-header">
                                                        <a class="card-link" data-toggle="collapse" href="#answers-to-question2">
                                                            <span class="info-answers expand-icon"><i class="fas fa-plus-circle"></i>
                                                                1 answer </span>
                                                        </a>
                                                    </div>
                                                    <div id="answers-to-question2" class="collapse" data-parent="#accordion4">
                                                        <div class="card-body answer-body-all">
                                                                <div class="card" style="border-style:none;">
                                                                    <div class="card-header comment-title">
                                                                        <div class="card-link answer-header-icon">
                                                                            <span class="answer-user">

                                                                                <a href="../pages/profile.html"><img
                                                                                        src="../images/user.png"
                                                                                        alt="Jane Doe" class="rounded-circle"
                                                                                        style="width:3em;height:3em; "></a>
                                                                                <a href="../pages/profile.html">
                                                                                    Elisabete Silva </a>
                                                                            </span>
                                                                            <small>
                                                                                <i>10 March 2019</i>
                                                                            </small>
                                                                        </div>
                                                                    </div>
                                                                        <div class="card-body comment-body">
                                                                            <div class="media border p-3 answer-question">

                                                                                <div class="media-body">

                                                                                    <span>Ajudou
                                                                                        bastante. A
                                                                                        documentação
                                                                                        era tudo o
                                                                                        que precisava.
                                                                                    </span>

                                                                                    <div class="bottom-answer">
                                                                                        <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
                                                                                        <div class="answer-up-votes">
                                                                                            <img src="../images/icon-14.svg"
                                                                                                alt="up-vote" class="media-object"
                                                                                                style="width:1.2rem; height: 1.2rem;">
                                                                                            3
                                                                                            <img src="../images/broken-19.svg"
                                                                                                alt="down-vote"
                                                                                                class="media-object"
                                                                                                style="width:1.2rem; height: 1.2rem;">
                                                                                        </div>
                                                                                        <a href="#" ><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i></a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card" style="margin-bottom:1em;" id="no-thin-line2">
        <div class="card-body add-comment-body" id="commentAdd">
            <form action="/action_page.php" class="add-comment-body">
                <div class="form-group">
                    <label for="comment">Comment:</label>
                    <textarea class="form-control" rows="3" id="comment" name="text"></textarea>
                </div>
                <div class="btn-group" style="align-self:flex-end;">
                    <button type="button" class="btn btn-dark">Submit</button>
                    <button type="button" class="btn btn-secondary">Cancel</button>
                </div>
            </form>
        </div>

    </div>

</div>

@endsection