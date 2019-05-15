@extends('layouts.layout')
@section('include')
    
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/general.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/style.css')}}>
    <link rel="stylesheet" type="text/css" media="screen" href={{asset('css/login.css')}}>

    <script src={{asset('js/bar_nav.js')}}></script>
    <script src={{asset('js/footer_position.js')}}></script>
    <script src={{asset('js/admin.js')}}></script>
@endsection

@section('content')
    
  <div class="container" style="margin-bottom:1em;">
        <!-- Search form -->
    
        <div class="row search-bar-moderator">
          <input class="form-control" type="text" placeholder="Search an user..." aria-label="Search" style="margin-bottom: 60px; margin-top: 30px;">
        </div>
    
    
        <ul class="nav nav-tabs admin-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home"><i class="fas fa-folder-open" style="margin-right: 10px;"></i>Categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1"><i class="fas fa-users" style="margin-right: 10px;"></i>Users</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu2"><i class="fas fa-user-shield" style="margin-right: 10px;"></i>
              Moderators</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu3"><i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i>
              Reported content</a>
          </li>
        </ul>
    
        <!-- Tab panes -->
        <div class="tab-content">
          <div id="home" class="container tab-pane active"><br>
            <div class="card-body tabela-mod">
              <div class="table-responsive">
                <table class="table" style="width:100%;">
                  <thead class="thead-dark">
                    <tr>
                      <th>Category name</th>
                      <th>Questions done (%)</th>
                      <th>Icon
                      </th>
                    </tr>
                  </thead>
    
                  <tbody>
                    @foreach ($catInfo as $cat)
                    <tr>
                      <td>{{ucfirst($cat->name)}}</td>
                      <td>{{number_format($cat->number/$cat->total*100, 2, '.',',')}} %</td>
                      <td> <img src={{asset('images/'.$cat->icon)}} alt="categorie" style="width: 40px;"> </td>
                    </tr>
                        
                    @endforeach
    
                    <tr>
                      <td>
                        <input style=" text-align:center;" name="categoryName" placeholder="Add name..." required>
                      </td>
                      <td>
                        ...%
                      </td>
                      <td>
                        <div class="container">
                          <div class="avatar-upload">
                            <div class="avatar-edit">
                              <input type='file' id="imageUpload" accept=".png, .jpg, .jpeg" />
                              <label for="imageUpload"> <i class="fas fa-pencil-alt" style="margin-top: 5px;"></i></label>
                            </div>
                            <div class="avatar-preview">
                              <div id="imagePreview" style="background-image: url(/images/icon-14.svg); width: 38px; margin-left: 9px;">
                              </div>
                            </div>
    
                          </div>
    
                        </div>
    
                      </td>
    
                    </tr>
    
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
                      <th>Username</th>
                      <th>Email</th>
                      <th>Rank</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
    
                  <tbody>

                    @foreach ($moderators as $mod)
                    <tr>
                      ola
                      <td><a href={{URL::to('profile/'.$mod->username)}}>{{$mod->username}}</a></td>
                      <td>{{$mod->email}}</td>
                      <td>{{$mod->rankname}}</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban</button>
                        </div>
    
                      </td>
    
                    </tr>
                    @endforeach
    
                  </tbody>
                </table>
              </div>
            </div>
    
          </div>
    
          <div id="menu2" class="container tab-pane fade"><br>
            <div class="card-body tabela-mod">
              <div class="table-responsive">
                <table class="table" style="width:100%">
                  <thead class="thead-dark">
                    <tr>
                      <th>Username</th>
                      <th>Email</th>
                      <th>Rank</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
    
                  <tbody>
                    <tr>
                      <td>Tiger Nixon</td>
                      <td>tiger@gmail.com</td>
                      <td>Rookie</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Garrett Winters</td>
                      <td>ggarrett@gmail.com</td>
                      <td>Beginner</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
    
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>foxcoxxx@gmail.com</td>
                      <td>Intermediate</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
    
                    </tr>
                    <tr>
                      <td>Cedric Kelly</td>
                      <td>cedricBoxed@gmail.com</td>
                      <td>Enthusiast</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>Airi Satou</td>
                      <td>accountAir@hotmail.com</td>
                      <td>Advanced</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>Brielle Williamson</td>
                      <td>brielle@hotmail.com</td>
                      <td>Veteran</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>Herrod Chandler</td>
                      <td>herold@gmail.cokm</td>
                      <td>Rookie</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>Rhona Davidson</td>
                      <td>davidson1998@gmail.com</td>
                      <td>Advanced</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>Colleen Hurst</td>
                      <td>develperCollen@hotmail.com</td>
                      <td>Beginner</td>
                      <td>
    
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Promote</button>
                          <button type="button" class="btn btn-danger .btn-sm">Demote</button>
                        </div>
                      </td>
                    </tr>
    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
    
          <div id="menu3" class="container tab-pane fade"><br>
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
                    <tr>
                      <td>Tiger Nixon</td>
                      <td>Commercial or spam</td>
                      <td>Anna</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Garrett Winters</td>
                      <td>Inappropriate or offencive</td>
                      <td>Marcos</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>Commercial or spam</td>
                      <td>Anabela</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Cedric Kelly</td>
                      <td>Inappropriate or offencive </td>
                      <td>Pedro</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Airi Satou</td>
                      <td>Inappropriate or offencive</td>
                      <td>Anna</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Brielle Williamson</td>
                      <td>Safety issue or illegal</td>
                      <td>Jack</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Herrod Chandler</td>
                      <td>Commercial or spam</td>
                      <td>Anna</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
    
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Rhona Davidson</td>
                      <td>Inappropriate or offencive</td>
                      <td>Margarida</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
                    <tr>
                      <td>Colleen Hurst</td>
                      <td>Safety issue or illegal</td>
                      <td>Justin</td>
                      <td><a href="/pages/questionDetail.html">In a question</a> </td>
                      <td>13/02/19</td>
                      <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button type="button" class="btn btn-success .btn-sm">Dismiss</button>
                          <button type="button" class="btn btn-warning .btn-sm">Delete content</button>
                          <button type="button" class="btn btn-danger .btn-sm">Ban user</button>
                        </div>
    
                      </td>
    
                    </tr>
    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
@endsection