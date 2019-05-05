@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/profile.js')}}></script>
@endsection

@section('content')

    <div class="container">
        <h1 class="h1-responsive font-weight-bold text-center my-4">Edit your profile</h1>
        <div class="container" >
            <form method="POST" action="{{route('updateprofile', $member)}}">
                {{ csrf_field() }}
            <div class="row" >
                <div class="col-md-3 text-center ">
                    <div class="container" >
                        <div class="avatar-upload" style="justify-content: center">
                            <div class="avatar-edit edit" >
                                <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
                                <label for="imageUpload" style="margin:0; margin-bottom: 1em;"> <i class="fas fa-pen" style="margin-top: 5px;"></i></label>
                            </div>
                            <div class="avatar-preview edit" style="width: 150px; height: 150px;" >
                                <div id="imagePreview" style="background-image: src='{{$member->profilephoto}}'; width: 100%;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
                
                <div class="col-md-7 mobile-center text-shadow edit-content" style="margin-top: 20px;">

                    <input id="nameInput" type="text" class="form-control input-h2" value="{{$member->username}}">
                    <input id="emailInput" type="text" class="form-control input-h4 mt-2"value="{{$member->email}}">
                        <input id="bioInput" type="text" class="form-control input-h6 lead-adapt mt-2" value="{{$member->biodescription}}">
                    <input id="passWord" type="password" class="form-control input-h4 mt-2" placeholder="Enter your Password"
                        required>
                    <input id="rePassWord" type="password" class="form-control input-h4 mt-2" placeholder="Re-enter your Password"
                        required>
                    

                </div>
            </div>
            
            <div class="row" style="justify-content: center">
                <button type="submit" class="btn btn-dark" style="width: 9em; margin-top: 20px; margin-bottom: 20px;">Submit</button>
            </div>
        </form>
        </div>
    </div>
@endsection