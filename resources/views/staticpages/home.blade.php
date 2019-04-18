@extends('layouts.homelayout')

@section('content')


<input type="hidden" value="unlogged" id="type">
<div class="container-fluid" id="main">
    <img src={{ asset('images/logo.png') }} alt="logo" class="mx-auto d-block img-fluid rounded" id="logo">
    <h2 style="text-align:center;"> Question everything, Learn something! </h2>

    <div class="ask-search-bar">
        <form class="form-inline" action="/action_page.php" method="GET">
            <div class="form-control form-control-lg">
                <div class="search-container2">
                    <div class="search-bar-cat">
                        <img src={{ asset('images/logo.png') }} alt="logo" class="mx-auto d-block img-fluid rounded-circle cat-icon" width="33">
                    </div>
                    <div class="search-bar-div">
                        <input type="text" class="fluid search-bar" placeholder="Want to learn something?">
                    </div>
                    <div class="search-icon-div" >
                        <a href="../pages/search.html" class="a-search-icon" type="submit">
                            <i class="fas fa-search search-icon"></i>
                        </a>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <a href="../pages/login.html" class="btn btn btn-dark btn-lg" id="ask-question-main" role="button">
        Ask a Question
    </a>
</div>

<div id="expand-down">
    <button type="button" class="btn btn-md" id="expand-down-button">
        Categories
        <i class="fas fa-arrow-down fa-md"></i></button>
</div>
<div class="container" id="categories-page">
    <?php 
        $size=count($catinfo,COUNT_NORMAL);
        $quant = $size/4;
        for($i=0; $i < $quant;$i++)
        {
            $aux=$i*4;
            ?>
        <div class="row cat-row" style="font-size:100px;">
        <?php
            for($j=0;$j<4;$j++)
            { 
                ?>
                <div class="col-md-3 div-cat">
                    <a href={{URL::to('/topic/' . $catinfo[$j+$aux]->name )}}>
                        <img src={{ asset('images/' . $catinfo[$j+$aux]->icon) }} alt="categorie" class="mx-auto d-block img-fluid rounded image">
                        <p class="under_icon">{{ucfirst($catinfo[$j+$aux]->name)}}</p>
                    </a>
                </div>
                <?php
                if($j+$aux>$size)
                    break;
            }
        ?>
        </div>
        <?php
        }
    ?>
</div>
@endsection