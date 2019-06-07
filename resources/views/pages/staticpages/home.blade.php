@extends('layouts.homelayout')

@section('title')
    Home | LearnIt
@endsection

@section('content')


<input type="hidden" value="unlogged" id="type">
<div class="container-fluid" id="main">
    <img src={{ asset('images/logo.png') }} alt="logo" class="mx-auto d-block img-fluid rounded" id="logo">
    <h2 style="text-align:center;"> Question everything, Learn something! </h2>

    <div class="ask-search-bar">
        <form class="search-bar-form form-inline" method="GET" action={{route('search')}}>
            {{ csrf_field() }}
            <div class="form-control form-control-lg search-container">
                <div class="search-container2">
                    <input class="category-choice" type="hidden" name="category" value="all">
                    <div class="search-bar-cat dropdown">
                        <button type="button" class="btn dropdown-toggle dropdown-bar-cat" data-toggle="dropdown"><img src="../images/icon-14.svg" alt="logo" class="drop-menu-cat" value="all"></button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item drop-cat"><img src="../images/icon-14.svg" class="rounded dropdown-image-cat" alt="All"> All</a>
                            <a class="dropdown-item drop-cat"><img src="../images/art-06.svg" class="rounded dropdown-image-cat" alt="Art"> Art</a>
                            <a class="dropdown-item drop-cat"><img src="../images/biology-01.svg" class="rounded dropdown-image-cat" alt="Biology"> Biology</a>
                            <a class="dropdown-item drop-cat"><img src="../images/business-07.svg" class="rounded dropdown-image-cat" alt="Business"> Business</a>
                            <a class="dropdown-item drop-cat"><img src="../images/chemistry-03.svg" class="rounded dropdown-image-cat" alt="Chemistry"> Chemistry</a>
                            <a class="dropdown-item drop-cat"><img src="../images/geology-10.svg" class="rounded dropdown-image-cat" alt="Geology"> Geology</a>
                            <a class="dropdown-item drop-cat"><img src="../images/history-08.svg" class="rounded dropdown-image-cat" alt="History"> History</a>
                            <a class="dropdown-item drop-cat"><img src="../images/maths-12.svg" class="rounded dropdown-image-cat" alt="Math"> Math</a>
                            <a class="dropdown-item drop-cat"><img src="../images/health-04.svg" class="rounded dropdown-image-cat" alt="Medicine"> Medicine</a>
                            <a class="dropdown-item drop-cat"><img src="../images/linguistics-09.svg" class="rounded dropdown-image-cat" alt="Linguistics"> Linguistics</a>
                            <a class="dropdown-item drop-cat"><img src="../images/physics-02.svg" class="rounded dropdown-image-cat" alt="Physics"> Physics</a>
                            <a class="dropdown-item drop-cat"><img src="../images/psychology-11.svg" class="rounded dropdown-image-cat" alt="Psychology"> Psychology</a>
                            <a class="dropdown-item drop-cat"><img src="../images/tech-05.svg" class="rounded dropdown-image-cat" alt="Technology"> Technology</a>
                        </div>
                    </div>
                    <div class="search-bar-div">
                        <input type="text" class="fluid search-bar" placeholder="Want to learn something?" name="search">
                    </div>
                    <div class="search-icon-div">
                        <button type="submit" class="btn btn-outline-light a-search-icon"><i class="fas fa-search search-icon"></i></button>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <a href="/login" class="btn btn btn-dark btn-lg" id="ask-question-main" role="button">
        Login
    </a>
    <a href="/register" class="btn btn btn-dark btn-lg" id="ask-question-main" role="button">
        Register
    </a>
</div>

<div id="expand-down">
    <button type="button" class="btn btn-md" id="expand-down-button">
        Categories
        <i class="fas fa-arrow-down fa-md"></i></button>
</div>
<div class="container" id="categories-page">
    <?php
    $size = count($catinfo, COUNT_NORMAL);
    $quant = $size / 4;
    for ($i = 0; $i < $quant; $i++) {
            $aux = $i * 4;
            ?>
        <div class="row cat-row" style="font-size:100px;">
            <?php
            for ($j = 0; $j < 4; $j++) {
                    ?>
                <div class="col-md-3 div-cat">
                    <a href={{URL::to('/topic/' . $catinfo[$j+$aux]->name )}}>
                        <img src={{ asset('images/' . $catinfo[$j+$aux]->icon) }} alt="categorie" class="mx-auto d-block img-fluid rounded image">
                        <p class="under_icon">{{ucfirst($catinfo[$j+$aux]->name)}}</p>
                    </a>
                </div>
                <?php
                if ($j + $aux > $size)
                    break;
            }
        ?>
        </div>
    <?php
}
?>
</div>
@endsection