<div id="Followers" class="container tab-pane fade">
    <div class="box">
        <div class="container">
            <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
                @foreach($followers as $follower)
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-bottom: 40px;">

                    <div class="box-part text-center">

                        <img class="rounded-circle followering" alt="profile_pic"
                            src={{asset('images/' . $follower->profilephoto)}}>

                        <div class="title">

                            <a href="#">
                                <h3>{{ $follower->username }}</h3>
                            </a>

                            <i class="far fa-lightbulb" style="font-size: 18px; margin-right: 5px;"
                                data-fa-transform="up-2 grow-2"></i> {{$follower->rank}}

                        </div>

                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>

</div>