<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LearnIt</title>
    <link rel="icon" href="../images/icon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap include -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- End of Bootstrap include -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Prompt:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" media="screen" href="../css/login.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/general.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/style.css">
    <script src="../scripts/bar_nav.js"></script>
    <script src="../scripts/profile.js"></script>
</head>


<body>
    <input type="hidden" value="logged" id="type">
    <nav class="navbar navbar-expand-lg  navbar-ligh sticky-top form-bar">
        <div class="grid-bar">
            <div class="logo">
                <a href="./home.html"><img src="../images/logo.png" alt="logo" class="logo-image"></a>
            </div>
            <div class="ask-search-bar">
                <form class="form-inline" action="/action_page.php">
                    <div class="form-control form-control-lg search-container">
                        <div class="search-container2">
                            <div class="search-bar-cat">
                                <img src="../images/logo.png" class="mx-auto d-block img-fluid rounded-circle cat-icon"
                                    width="33" alt="logo">
                            </div>
                            <div class="search-bar-div">
                                <input type="text" class="fluid search-bar" placeholder="Let us know your doubts">
                            </div>
                            <div class="search-icon-div">
                                <a href="../pages/search.html" class="a-search-icon">
                                    <i class="fas fa-search search-icon"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="btn-group info-user">
                <button type="button" class="btn btn btn-dark">Ask a Question</button>
                <button type="button" class="btn btn-outline-primary">
                    <i class="fa fa-fw fa-user"></i> Sign in
                </button>
                <button type="button" class="btn btn-primary">
                    <i class="fa fa-fw fa-user"></i> Register
                </button>
            </div>
        </div>
        <div class="mobile-search-field" style="display:none">
            <div class="ask-search-bar">
                <form class="form-inline" action="/action_page.php">
                    <div class="form-control form-control-lg search-container">
                        <div class="search-container2">
                            <div class="search-bar-cat">
                                <img src="../images/logo.png" class="mx-auto d-block img-fluid rounded-circle cat-icon"
                                    width="33" alt="logo">
                            </div>
                            <div class="search-bar-div">
                                <input type="text" class="fluid search-bar" placeholder="Let us know your doubts">
                            </div>
                            <div class="search-icon-div">
                                <a href="../pages/search.html" class="a-search-icon">
                                    <i class="fas fa-search search-icon"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <button type="button" class="btn btn-dark back-button"><i class="fas fa-angle-left"></i></button>
        </div>
    </nav>

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
                            <h2 class="h2-adapt">Sofia_12

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

                <div id="Questions" class="container tab-pane active"><br>
                    <div class="container pb-3">
                        <div class="row-lg-4 row-md-4 row-sm-4 row-xs-4">
                            <div class="media profile_result">
                                <div class="media-left d-flex">
                                </div>
                                <div class="media-body">
                                    <div class="container">
                                        <a class="question" href="#">The presence of three sex chromosomes in a persons
                                            cells is
                                            best
                                            explained by what cell process going wrong?​</a>
                                    </div>
                                    <div class="row footerResult">
                                        <img src="../images/answered-13.svg" alt="answered"
                                            class="media-object align-self-center column" style="width:2rem"
                                            id="catQuestion">
                                        <p class="resultFooter align-self-center">3 answers</p>
                                        <p class="resultFooter align-self-center">10 upvotes 2 downvotes</p>
                                        <p class="resultFooter align-self-center">10 Jan 2019</p>
                                        <img src="../images/biology-01.svg"  alt="category" class="media-object"
                                            style="width:2rem; height: 2rem;">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-lg-4 row-md-4 row-sm-4 row-xs-4">
                            <div class="media profile_result">
                                <div class="media-left d-flex">
                                </div>
                                <div class="media-body">
                                    <div class="container">
                                        <a class="question" href="#">What programming language do hackers use?</a>
                                    </div>
                                    <div class="row footerResult">
                                        <p class="resultFooter align-self-center">0 answers</p>
                                        <p class="resultFooter align-self-center">1 upvote</p>
                                        <p class="resultFooter align-self-center">8 Jan 2019</p>
                                        <img src="../images/tech-05.svg" alt="category" class="media-object" style="width:2rem; height: 2rem;">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row-lg-4 row-md-4 row-sm-4 row-xs-4">
                            <div class="media profile_result">
                                <div class="media-left d-flex">
                                </div>
                                <div class="media-body">
                                    <div class="container">
                                        <a class="question" href="#">How do black holes impact time?</a>
                                    </div>
                                    <div class="row footerResult">
                                        <p class="resultFooter align-self-center">5 answers</p>
                                        <p class="resultFooter align-self-center">5 upvotes</p>
                                        <p class="resultFooter align-self-center">7 Jan 2019</p>
                                        <img src="../images/physics-02.svg" alt="category" class="media-object" style="width:2rem; height: 2rem;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <div id="Followers" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
                            <div class="row" style="margin-top: 10px; margin-bottom: 10px;">

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px; margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>

                <div id="Following" class="container tab-pane fade"><br>
                    <div class="box">
                        <div class="container">
                            <div class="row" style="margin-top: 10px; margin-bottom: 10px;">

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

                                        </div>

                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                                    <div class="box-part text-center">

                                        <img class="rounded-circle followering" alt="profile_pic" src="../images/yves.jpg">

                                        <div class="title">

                                            <a href="#">
                                                <h3>LuisRocha</h3>
                                            </a>

                                            <i class="far fa-lightbulb" style="font-size: 18px;margin-right: 5px;"
                                                data-fa-transform="up-2 grow-2"></i> Rookie

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

    <footer class="platform-info" id="platform-link-info">
        <div class="card-footer">
            <div class="row">
                <div class="col-3">
                    <a href="../pages/aboutUs.html">
                        About us
                    </a>
                </div>
                <div class="col-3">
                    <a href="../pages/faq.html">
                        FAQ
                    </a>
                </div>
                <div class="col-3">
                    <a href="../pages/contacts.html">
                        Contacts
                    </a>
                </div>
                <div class="col-3">
                    <a href="../pages/terms.html">
                        Terms of Service
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="text-center font-weight-bold" id="copyright">Copyright © LearnIt 2019</p>
                </div>

            </div>
        </div>
    </footer>

</body>

</html>