@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet"  media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection

@section('title')
    Faq | LearnIt
@endsection

@section('content')


<div class="container mb-5" id="about">

        <h1 class="h1-responsive font-weight-bold text-center mt-5 mb-3 py-3">FAQs</h1>
        <!--Section description-->
        <h6 class="text-center w-responsive mx-auto mb-5">Frequently asked questions</h6>
    
        <div class="accordion" id="accordionExample">
            <?php $i=1; ?>
            @foreach ($faqInfo as $item)
            <div class="card faq">
                <div class="card-header" >
                    <h5 class="mb-0">
                    <button class="btn btn faq_line" type="button" data-toggle="collapse" data-target="#collapse<?= $i ?>" aria-expanded="true"
                        aria-controls="collapse<?= $i ?>">
                        {{$item->question}}
                    </button>
                    </h5>
                </div>
        
                <div id="collapse<?= $i ?>" class="collapse <?php if($i==1) echo 'show';?>" data-parent="#accordionExample">
                    <div class="card-body">
                        {{$item->answer}}
                    </div>
                </div>
            </div>
            <?php $i++; ?>
            @endforeach
      </div>

@endsection