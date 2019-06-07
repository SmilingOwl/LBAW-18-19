@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
@endsection

@section('title')
    Contacts | LearnIt
@endsection

@section('content')

<div class="container">

        <section class="mb-4">

            <!--Section heading-->
            <h1 class="h1-responsive font-weight-bold text-center mt-5 mb-3 py-3">Contact us</h1>
            <!--Section description-->
            <h6 class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
                contact us!</h6>

            <div class="row">

                <div class="col-lg-1">
                </div>

                <!--Grid column-->
                <div class="col-lg-6">
                    <form id="contact-form" name="contact-form" action="contacts" method="POST">
                        {{ csrf_field() }}

                        <div class="row form-group">
                            <div class="col-lg-12">
                                <input class="form-control form-control-lg" type="text" id="name" name="name"
                                    placeholder="Your name">
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-lg-12">
                                <input class="form-control form-control-lg" type="text" id="email" name="email"
                                    placeholder="Your email">
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-lg-12">
                                <input class="form-control form-control-lg" type="text" id="subject" name="subject"
                                    placeholder="Subject">
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-lg-12">

                                <div class="md-form">
                                    <textarea class="form-control form-control-lg  md-textarea" id="message" name="message"
                                        rows="4" placeholder="Your message"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-lg-12 col text-center">
                                <button type="submit" class="btn btn-dark " style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Send</a>
                            </div>
                        </div>
                        <!--Grid row-->

                    </form>

                </div>

                <!-- icons column-->
                <div class="col-lg text-center">
                    <ul class="list-unstyled mb-0">
                        <li><i class="fas fa-map-marker-alt fa-2x"></i>
                            <p style="font-family: 'Prompt', sans-serif;">Porto, 56789, Portugal</p>
                        </li>

                        <li><i class="fas fa-phone mt-4 fa-2x"></i>
                            <p style="font-family: 'Prompt', sans-serif;">+ 351 252 567 289</p>
                        </li>

                        <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                            <p style="font-family: 'Prompt', sans-serif;">contact@learnit.com</p>
                        </li>
                    </ul>
                </div>

            </div>
        </section>
    </div>


@endsection