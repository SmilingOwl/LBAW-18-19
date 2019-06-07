@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
    <script src={{asset('js/toolTip.js')}}></script>
    <script src={{asset('js/addQuestion.js')}}></script>
@endsection

@section('content')
    
<h1 class="h1-responsive font-weight-bold text-center mt-5 mb-3 py-3">Want to ask something?</h1>

<div class="container my-5">

    <h5 class="h5-responsive font-weight-bold text-left mb-3 py-3"> Select a category for your question!</h5>

    <div class="row cat-row" style="font-size:100px;">
        @foreach ($catinfo as $cat)
        <div class="col-sm-1 col-2 div-cat">
            <span data-type="{{$cat->name}}" data-toggle="tooltip" title="{{ucfirst($cat->name)}}">
                <img src = {{asset('/images/'.$cat->icon)}} alt="categories" class="mx-auto d-block img-fluid rounded image">
            </span>
        </div>
            
        @endforeach

    </div>

</div>

<div class="container align-items-center">


    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-10">
            <form method="POST" action="{{route('question.create')}}" enctype="multipart/form-data">
                {{ method_field('PUT') }}
                {{ csrf_field() }}
                <input class="hidden-catType" type="hidden" name="catType" value="art">
                <div class="form-group col-md-12 mb-5">
                    <input class="form-control form-control-lg question_line" type="text" name="title"
                        placeholder="Ask away!" required>
                        <div class="invalid-feedback">
                            There needs to be a title
                        </div>

                </div>

                <div class="form-group col-md-12 mb-5">
                    <textarea rows="5" name="description" class="form-control form-control-lg" placeholder="Describe your doubts here!" required></textarea>
                        <div class="invalid-feedback">
                            There needs to be a description
                        </div>
                </div>

                <div class="form-group col-md-12">
                    <h6> Upload image for your question</h6>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <span class="btn btn-default btn-file btn-dark">
                                Browse… <input type="file" id="imgInp" name="image" class="form-control">
                            </span>
                        </span>
                        <img id="image-preview" src="/images/icon-14.svg" alt="question-image" style="padding-left:10px; max-width:300px; max-height:300px;" />
                    </div>
                </div>

                <div class="col-md-12 text-center">
                    <button type="submit" value="Submit" class="btn btn-dark submit" style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Post</button>
                </div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

            </form>

        </div>
    </div>


</div>

@endsection