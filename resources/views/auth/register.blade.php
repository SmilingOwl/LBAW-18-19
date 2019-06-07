@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet"  media="screen" href={{asset('css/login.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet"  media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection

@section('content')

<div style="text-align:center">
  <h1 class="h1-responsive font-weight-bold text-center my-5 py-3">Let's start sharing knowlegde!</h1>
</div>

<div class="form container">
  <form method="POST" action="{{ route('register') }}">
    {{ csrf_field() }}
       <div class="row" id="formBorder">
           <div class="col-md">

               <div class="input-container">
                   <i class="fa fa-user icon"></i>
                   <input class="form" id="insideInput1" type="text" placeholder="Username" name="username">
               </div>


               <div class="input-container">
                   <i class="fa fa-envelope icon"></i>
                   <input class="form" id="insideInput2" type="text" placeholder="Email" name="email">
               </div>

               <div class="input-container">
                   <i class="fa fa-key icon"></i>
                   <input class="form" id="insideInput3" type="password" placeholder="Password" name="password">
               </div>
               <div class="input-container">
                   <i class="fa fa-key icon"></i>
                   <input class="form" id="insideInput3" type="password" placeholder="Confirm password" name="password_confirmation">
               </div>

               <div class="input-container">
                   <i class="fa fa-gift icon"></i>
                   <input class="form" id="insideInput4" type="date" name="birthdate">
               </div>

               <button type="submit" class="btn btn-dark" >Register</button>
               @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
           </div>

           <div class="col-md" id="socialBtn">

               <a href="login/facebook" class="fb btn">
                   <i class="fa fa-facebook fa-fw"></i> Register with Facebook
               </a>
               <a href="login/google" class="google btn"><i class="fa fa-google fa-fw">
                   </i> Register with Google
               </a>
           </div>

       </div>

   </form>
</div>
@endsection
