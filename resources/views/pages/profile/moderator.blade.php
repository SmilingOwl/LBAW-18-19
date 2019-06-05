@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/moderator.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
@endsection

@section('content')
  <div class="container" style="margin-bottom:1em;">
    <!-- Search form -->

    <div class="row search-bar-moderator">
      <input class="form-control search-moderator-user" type="text" placeholder="Search an user..." aria-label="Search" style="margin-bottom: 60px; margin-top: 30px;">
    </div>


    <ul class="nav nav-tabs moderator-tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#home"><i class="fas fa-users" style="margin-right: 10px;"></i>Users</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#menu1"><i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i>
          Reported content</a>
      </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">

      <div id="home" class="container tab-pane active"><br>
        <div class="card-body tabela-mod">
          <div class="table-responsive">
            <table class="table table-users" style="width:100%">
              <thead class="thead-dark">
                <tr>
                  <th>Username</th>
                  <th>Email</th>
                  <th>Rank</th>
                  <th>Actions</th>
                </tr>
              </thead>

              <tbody>

              </tbody>
            </table>
          </div>
        </div>

      </div>

      <div id="menu1" class="container tab-pane fade"><br>
        <div class="card-body tabela-mod">
          <div class="table-responsive">
            <table class="table" style="width:100%">
              <thead class="thead-dark">
                <tr>
                  <th>Author</th>
                  <th>Type</th>
                  <th>Reported User</th>
                  <th>Content</th>
                  <th>Date</th>
                  <th>Actions</th>
                </tr>
              </thead>

              <tbody>
                @foreach ($reports as $report)
                <tr>
                  <td><a href={{URL::to('profile/'.$report->reporter)}}>{{$report->reporter}}</a></td>
                  <td>{{$report->reason}}</td>
                  <td><a href={{URL::to('profile/'.$report->target->username)}}>{{$report->target->username}}</a></td>
                  @if (is_null($report->answer))
                  <td><a href={{URL::to('questions/'.$report->question)}}>In a question</a> </td>
                  @else
                  <td><a href={{URL::to('questions/'.$report->target->question)}}>In a answer</a> </td>
                  @endif
                  <td>{{$report->date}}</td>
                  <td>
                    <div class="btn-group" role="group" aria-label="Basic example">
                      <button type="button" class="btn btn-success .btn-sm"onclick="ignoreReport()" >Ignore</button>
                      <button type="button" class="btn btn-warning .btn-sm" onclick="deleteContent()" >Delete content</button>
                      <button type="button" class="btn btn-danger .btn-sm" onclick="banUser()">Ban user</button>
                    </div>
                  </td>


                </tr>
                @endforeach

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection