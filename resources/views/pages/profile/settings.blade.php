@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
@endsection


@section('content')

    <div class="container settings-items">
        <form method="POST" action={{URL::to('/profile/'.$username. '/delete')}}>
            {{ method_field('DELETE') }}
            {{ csrf_field() }}
            <div class="row">
                <h1  style=" margin: 5%; padding-right: 15px; text-align: center;">Delete Account</h1>
            </div>
            <div class="row" style="padding-left: 15px;">
                <input style="width: 70%" type="password" class="form-control input-h4 mt-2 passwordInput" placeholder="Confirm your password"
                    required name="password">

            </div>
            <div class="row">
                <button type="submit"class="btn btn-dark " style="width: 10em; margin-top: 20px; margin-bottom: 20px;">Delete
                        Account</button>
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
    @endsection