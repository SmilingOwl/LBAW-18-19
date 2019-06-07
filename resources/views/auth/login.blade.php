@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection

@section('content')
<div style="text-align:center">
    <h1 class="h1-responsive font-weight-bold text-center my-5 py-3">Welcome back! </h1>
</div>

<div class="container form">
    <form method="POST" action={{route('login')}}>
        {{ csrf_field() }}
        <div class="row" id="formBorder">

            <div class="col-md">
                
                <div class="input-container">
                    <i class="fa fa-user icon"></i>
                    <input  class="form" type="text" name="username" id="insideInput1" placeholder="Username" required>
                </div>

                <div class="input-container" >
                    <i class="fa fa-key icon"></i>
                    <input  class="form" type="password" name="password" id="insideInput2" placeholder="Password" required>
                </div>

                <button type="submit" class="btn btn-dark" style="width: 100%; margin-top: 20px; margin-bottom: 20px;">Sign in</button>
                <a href="recover" class="logInText" style="color:black"> Forgot password?</a>
                <a href= {{ route('register') }} class="logInText" style="color:black"> New here? Create an
                    account!</a>
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
                <a href="login/facebook" class="fb btn"> <i class="fa fa-facebook fa-fw"></i> Continue with Facebook</a>
                <a href="login/google" class="google btn"><i class="fa fa-google fa-fw"></i> Sign in with Google</a>
            </div>
            


        </div>

    </form>
</div>
@endsection
