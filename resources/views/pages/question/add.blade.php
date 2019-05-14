@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection

@section('content')
    
<h1 class="h1-responsive font-weight-bold text-center mt-5 mb-3 py-3">Want to ask something?</h1>

<div class="container my-5">

    <h5 class="h5-responsive font-weight-bold text-left mb-3 py-3"> Select a category for your question!</h5>

    <div class="row cat-row" style="font-size:100px;">
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Art">
                <img src="../images/art-06.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>
        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Biology">
                <img src="../images/biology-01.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Business">
                <img src="../images/business-07.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Chemistry">
                <img src="../images/chemistry-03.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Geology">
                <img src="../images/geology-10.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>
        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="History">
                <img src="../images/history-08.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Math">
                <img src="../images/maths-12.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Medicine">
                <img src="../images/health-04.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Linguistics">
                <img src="../images/linguistics-09.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>
        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Physics">
                <img src="../images/physics-02.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Psychology">
                <img src="../images/psychology-11.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
        <div class="col-sm-1 col-2 div-cat">
            <a href="#" data-toggle="tooltip" title="Technology">
                <img src="../images/tech-05.svg" alt="categories" class="mx-auto d-block img-fluid rounded image">
            </a>

        </div>
    </div>

</div>

<div class="container align-items-center">


    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-10">
            <form method="POST" action="{{route('question.create')}}">
                {{ method_field('PUT') }}
                {{ csrf_field() }}
                <div class="form-group col-md-12 mb-5">
                    <input class="form-control form-control-lg question_line" type="text" name="question"
                        placeholder="Ask away!" required>
                        <div class="invalid-feedback">
                            There needs to be a title
                        </div>

                </div>

                <div class="form-group col-md-12 mb-5">
                    <textarea class="form-control form-control-lg" id="exampleFormControlTextarea1" placeholder="Describe your doubts here!"
                        rows="5" required></textarea>
                        <div class="invalid-feedback">
                            There needs to be a description
                        </div>
                </div>

                <div class="form-group col-md-12">
                    <h6>Upload images for your question</h6>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <span class="btn btn-default btn-file btn-dark">
                                Browse… <input type="file" id="imgInp">
                            </span>
                        </span>
                        <input type="text" class="form-control" readonly>
                    </div>
                </div>

                <div class="col-md-12 text-center">
                    <button type="submit" value="Submit" class="btn btn-dark submit" style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Post</button>
                </div>

            </form>

        </div>
    </div>


</div>

@endsection