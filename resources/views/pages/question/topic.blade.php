@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/feed.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
    <script src={{asset('js/toolTip.js')}}></script>
@endsection
@section('content')
    
<h1 class="h1-responsive font-weight-bold text-center my-5 py-3">Here's what we found...</h1>

<div class="container" id="topBar">
    <div class="container" id="categories">

        <div class="row cat-row" style="font-size:100px;">
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Art">
                    <img src="../images/art-06.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Biology">
                    <img id="active" src="../images/biology-01.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Business">
                    <img src="../images/business-07.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Chemistry">
                    <img src="../images/chemistry-03.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Geology">
                    <img src="../images/geology-10.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="History">
                    <img src="../images/history-08.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Math">
                    <img src="../images/maths-12.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Medicine">
                    <img src="../images/health-04.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Linguistics">
                    <img src="../images/linguistics-09.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>
            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Physics">
                    <img src="../images/physics-02.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Psychology">
                    <img src="../images/psychology-11.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
            <div class="col-lg-1 col-2 div-cat">
                <a href="#" data-toggle="tooltip" title="Technology">
                    <img src="../images/tech-05.svg" alt="Categorie" class="mx-auto d-block img-fluid rounded image icon">
                </a>

            </div>
        </div>

    </div>
</div>

<div class="container d-flex justify-content-end" id="sortBar">

    <div class="dropdown show" id="sortBy">
        <a class="btn dropdown-toggle" href="#" role="button" id="sortByButton" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Sort By </a>

        <div class="dropdown-menu" >
            <a class="dropdown-item" href="#">Newest</a>
            <a class="dropdown-item" href="#">Most Upvoted up</a>
            <a class="dropdown-item" href="#">Most Upvoted down</a>
            <a class="dropdown-item" href="#">More Answers</a>
            <a class="dropdown-item" href="#">Less Answers</a>
        </div>
    </div>

</div>

<div class="container" id="feed">

    <div class="row">
        <div class="col-lg ">
            <div class="results">
                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">yves127</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">The presence of three sex
                                chromosomes in a persons cells is
                                best
                                explained by what cell process going wrong?​</a>
                        </div>
                        <div class="row footerResult">
                            <img src="../images/answered-13.svg" alt="corret" class="media-object align-self-center column"
                                style="width:2rem" id="catQuestion">
                            <p class="resultFooter align-self-center">3 answers</p>
                            <p class="resultFooter align-self-center">10 upvotes</p>
                            <p class="resultFooter align-self-center">10 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">freshman_port</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">How does the size of a cell's
                                surface area change compared to
                                its
                                volume when the cell grows?</a>
                        </div>
                        <div class="row footerResult">
                            <p class="resultFooter align-self-center">0 answers</p>
                            <p class="resultFooter align-self-center">1 upvote</p>
                            <p class="resultFooter align-self-center">8 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">shebookworm4</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">Why is it important for
                                microtubules or spindle fibers to
                                attach to
                                chromosomes?</a>
                        </div>
                        <div class="row footerResult">
                            <p class="resultFooter align-self-center">5 answers</p>
                            <p class="resultFooter align-self-center">5 upvotes 1 downvote</p>
                            <p class="resultFooter align-self-center">7 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">allisonpp8</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">According to most scientific
                                models, how many years ago did
                                the first
                                simple cells appear on Earth?</a>
                        </div>
                        <div class="row footerResult">
                            <p class="resultFooter align-self-center">8 answers</p>
                            <p class="resultFooter align-self-center">13 upvotes</p>
                            <p class="resultFooter align-self-center">5 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">rickylovesbugs</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">Where is the instruction for
                                making new cell located in a
                                cell?</a>
                        </div>
                        <div class="row footerResult">
                            <p class="resultFooter align-self-center">2 answers</p>
                            <p class="resultFooter align-self-center">7 upvotes</p>
                            <p class="resultFooter align-self-center">5 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

                <div class="media result">
                    <div class="media-left d-flex">
                    </div>
                    <div class="media-body">
                        <a href="./profile.html">
                            <h4 class="media-heading resultHeader"><img src="../images/yves.jpg" alt="profile"
                                    class="media-object rounded-circle profilePic" style="width:3rem">heyimpierre</h4>
                        </a>
                        <div class="container">
                            <a class="question" href="../pages/questionDetail.html">How does the endosymbiotic
                                theory
                                explain the double membrane
                                around
                                the chloroplast?</a>
                        </div>
                        <div class="row footerResult">
                            <p class="resultFooter align-self-center">9 answers</p>
                            <p class="resultFooter align-self-center">15 upvotes 2 downvotes</p>
                            <p class="resultFooter align-self-center">5 Jan 2019</p>
                            <img src="../images/biology-01.svg" alt="categorie" class="media-object" style="width:2rem; height: 2rem;">
                        </div>
                    </div>
                </div>

            </div>

            <div class="row" style="justify-content: center">
                <a href="#" class="btn" id="loadMore">Load
                    More</a>
            </div>

        </div>
        <div class="col-lg-4 pl-5">
            <div class="card">
                <div class="card-body leaders" id="leaderBoard">
                    <h4 class="card-title">Leaderboard</h4>
                    <div class="media leader">
                        <div class="media-left">
                        </div>
                        <div class="media-body">
                            <div class="row leaderResult justify-content-center">
                                <h4 class="media-heading align-self-center leaderInfo"><img src="../images/yves.jpg"
                                        alt="profile" class="media-object rounded-circle profilePic" style="width:1.75rem">John
                                    Doe</h4>
                                <p class="points"><img src="../images/points-16.svg" alt="categorie" class="media-object"
                                        style="width:1rem">120
                                    points</p>
                            </div>
                        </div>
                    </div>
                    <div class="media leader">
                        <div class="media-left">
                        </div>
                        <div class="media-body">
                            <div class="row leaderResult justify-content-center">
                                <h4 class="media-heading align-self-center leaderInfo"><img src="../images/yves.jpg"
                                        alt="profile" class="media-object rounded-circle profilePic" style="width:1.75rem">John
                                    Doe</h4>
                                <p class="points"><img src="../images/points-16.svg" alt="categorie" class="media-object"
                                        style="width:1rem">120
                                    points</p>
                            </div>
                        </div>
                    </div>
                    <div class="media leader">
                        <div class="media-left">
                        </div>
                        <div class="media-body">
                            <div class="row leaderResult justify-content-center">
                                <h4 class="media-heading align-self-center leaderInfo"><img src="../images/yves.jpg"
                                        alt="profile" class="media-object rounded-circle profilePic" style="width:1.75rem">John
                                    Doe</h4>
                                <p class="points"><img src="../images/points-16.svg" alt="categorie" class="media-object"
                                        style="width:1rem">120
                                    points</p>
                            </div>
                        </div>
                    </div>
                    <div class="media leader">
                        <div class="media-left">
                        </div>
                        <div class="media-body">
                            <div class="row leaderResult justify-content-center">
                                <h4 class="media-heading align-self-center leaderInfo"><img src="../images/yves.jpg"
                                        alt="profile" class="media-object rounded-circle profilePic" style="width:1.75rem">John
                                    Doe</h4>
                                <p class="points"><img src="../images/points-16.svg" alt="categorie" class="media-object"
                                        style="width:1rem">120
                                    points</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
@endsection