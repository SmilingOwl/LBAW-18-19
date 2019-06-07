@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/addImage.js')}}></script>
@endsection

@section('title')
    Edit-profile | LearnIt
@endsection

@section('content')

    <div class="container">
        <h1 class="h1-responsive font-weight-bold text-center my-4">Edit your profile</h1>
        <div class="container" >
            <form method="POST" action="{{Route('profile.update', $member)}}" enctype="multipart/form-data">
                {{ method_field('PUT') }}
                {{ csrf_field() }}
            <div class="row" >
              <div class="col-md-3 text-center ">
                </div>
           
                
                <div class="col-md-7 mobile-center text-shadow edit-content" style="margin-top: 20px;">

                    <input id="nameInput" type="text" class="form-control input-h2" value="{{$member->username}}" name="username">
                    <input id="emailInput" type="text" class="form-control input-h4 mt-2"value="{{$member->email}}" name="email">
                    <input id="bioInput" type="text" class="form-control input-h6 lead-adapt mt-2" value="{{$member->biodescription}}" name="biodescription">
                    <input id="passWord" type="password" class="form-control input-h4 mt-2" placeholder="Enter your Password"
                        name="password">
                    <input id="rePassWord" type="password" class="form-control input-h4 mt-2" placeholder="Re-enter your Password"
                        name="password_confirmation">
                    

                </div>
                <div class="col-md-3 text-center ">
                </div>
                <div class="form-group col-md-7" style="padding-top: 10px;">
                    <h6> Upload image for your profile</h6>
                    <div class="input-group">
                        <span class="input-group-btn">
                            <span class="btn btn-default btn-file btn-dark">
                                Browse… <input type="file" id="imgInp" name="image" class="form-control">
                            </span>
                        </span>
                        <img id="image-preview" class="rounded-circle img-fluid" src={{asset('images/'.$member->profilephoto)}} alt="profile-image" style="padding-left:10px; max-width:300px; max-height:300px;" />
                    </div>
                </div>
            </div>
            
            <div class="row" style="justify-content: center">
                <button type="submit" class="btn btn-dark" style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Submit</button>
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
@endsection