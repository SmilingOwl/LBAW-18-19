
window.addEventListener("load",onLoadDetail);

function onLoadDetail() {
    addAnswer();
    expandClick();

}
function addAnswer()
{
    let answer = document.querySelectorAll(".expand-icon");
    for(let i=0;i<answer.length;i++)
    {
        let info_i=answer[i].querySelector("i");
        answer[i].addEventListener("click",function(){
            if(info_i.getAttribute("class") == "fas fa-plus-circle")
            {
                info_i.setAttribute("class","fas fa-minus-circle");
            }
            else  if(info_i.getAttribute("class") == "fas fa-minus-circle")
            {
                info_i.setAttribute("class","fas fa-plus-circle");
            }
        });
    }
}
function getAnswers(answer,element) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'get',
        url: '/answersToAnswer/' + answer,
        success: function (data) {
            console.log(data);
            element.innerHTML='<div class="card-header comment-title">'+
            +'<div class="card-link answer-header-icon" >'+
            +'<div class="row">'+
            +'<div class="answer-user">'+
            +'<a href="/profile/'+data.username+'">'+
            +'<img src="/images/'+data.profilephoto+'" alt="User2" class="rounded-circle" style="width:2em; margin:0;">'+
            +'</a>'+
            +'<a href="/profile/'+data.username+'">'+data.username+
            +'</a></div><div>'+
            +'<img src="../images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">'+
            +'</div></div><small>'+data.date+
            +'</small></div></div>'+
            +'<div class="card-body comment-body">'+
            +'<div class="media border p-3 answer-question">'+
            +'<div class="media-body"><div>'+
            +data.text+
            +'</div><div class="bottom-answer">'+
            +'<a href="#" style="font-family: \'Prompt\', sans-serif; color: #BE4627;">Report</a>+'
            +'<div class="answer-up-votes">'+

                                <img src="../images/icon-14.svg" alt="up-vote" class="media-object"
                                    style="width:1.2rem; height: 1.2rem;">
                                100
                                <img src="../images/broken-19.svg" alt="down-vote" class="media-object"
                                    style="width:1.2rem; height: 1.2rem;">
                            </div>
                            <a href="#" ><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i></a>
                        </div>

                        @if (!is_null($answer->nr_answers))
                        <div class="media p-3 container-accordion">
                            <div id="accordion{{$answer->id_answer+4}}" value={{$answer->id_answer+4}}>
                                <div class="card no-thin-line">
                                    <div class="card-header answer-header">
                                        <a class="card-link" data-toggle="collapse" href="#answers-to-answers{{$answer->id_answer+4}}">
                                            <span class="info-answers expand-icon"><i class="fas fa-plus-circle"></i>
                                                {{$answer->nr_answers}}
                                                @if ($answer->nr_answers== 1)
                                                    answer
                                                @else
                                                    answers
                                                @endif
                                            </span>
                                        </a>
                                    </div>
                                    <div id="answers-to-answers{{$answer->id_answer+4}}" class="collapse" data-parent="#accordion{{$answer->id_answer+4}}">
                                        <div class="card-body answer-body-all">
                                            <div class="card" style="border-style:none;">
                                                <!--<div class="card-header comment-title">
                                                        <div class="card-link answer-header-icon">
                                                            <span class="answer-user">

                                                                <a href="../pages/profile.html"><img
                                                                        src="../images/user.png"
                                                                        alt="Jane Doe" class="rounded-circle"
                                                                        style="width:3em;height:3em; "></a>
                                                                <a href="../pages/profile.html">
                                                                    Elisabete Silva </a>
                                                            </span>
                                                            <small>
                                                                <i>10 March 2019</i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                        <div class="card-body comment-body">
                                                            <div class="media border p-3 answer-question">

                                                                <div class="media-body">

                                                                    <span>Ajudou
                                                                        bastante. A
                                                                        documentação
                                                                        era tudo o
                                                                        que precisava.
                                                                    </span>

                                                                    <div class="bottom-answer">
                                                                        <a href="#" style="font-family: 'Prompt', sans-serif; color: #BE4627;">Report</a>
                                                                        <div class="answer-up-votes">
                                                                            <img src="../images/icon-14.svg"
                                                                                alt="up-vote" class="media-object"
                                                                                style="width:1.2rem; height: 1.2rem;">
                                                                            3
                                                                            <img src="../images/broken-19.svg"
                                                                                alt="down-vote"
                                                                                class="media-object"
                                                                                style="width:1.2rem; height: 1.2rem;">
                                                                        </div>
                                                                        <a href="#" ><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>-->
                                                </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </div>'
            
        },
        error: function (data) {
            element.innerHTML="Server Error";
            console.log("server error");
        }
    });
}
function expandClick() {
    
    let media = document.querySelectorAll(".container-accordion");
    for(let i=0;i<media.length;i++)
    {
        let id = media[i].querySelector(".container-accordion > div");
        let value = id.getAttribute("value") - 4;
        let answer=media[i].querySelector(".expand-icon");
        let aq = media[i].querySelector(".answer-body-all > .card");
        answer.addEventListener("click",function() {
            aq.innerHTML="Loading...";
            getAnswers(value,aq);
        });
    }
    
}