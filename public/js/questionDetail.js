
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
        function icons(){
            if(info_i.getAttribute("class") == "fas fa-plus-circle")
            {
                info_i.setAttribute("class","fas fa-minus-circle");
            }
            else  if(info_i.getAttribute("class") == "fas fa-minus-circle")
            {
                info_i.setAttribute("class","fas fa-plus-circle");
            }
        };
        let info_i=answer[i].querySelector("i");
        answer[i].addEventListener("click",icons);
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
            let info=data[0];
            element.innerHTML='<div class="card-header comment-title">'
            +'<div class="card-link answer-header-icon" >'
            +'<div class="row">'
            +'<div class="answer-user">'
            +'<a href="/profile/'+info.username+'">'
            +'<img src="/images/'+info.profilephoto+'" alt="User2" class="rounded-circle" style="width:2em; margin:0;">'
            +'</a>'
            +'<a href="/profile/'+info.username+'">'+info.username
            +'</a></div><div>'
            +'<img src="../images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">'
            +'</div></div><small>'+info.date
            +'</small></div></div>'
            +'<div class="card-body comment-body">'
            +'<div class="media border p-3 answer-question">'
            +'<div class="media-body"><div>'
            +info.text
            +'</div><div class="bottom-answer">'
            +'<a href="#" style="font-family: \'Prompt\', sans-serif; color: #BE4627;">Report</a>'
            +'<div class="answer-up-votes">'
            +'<img src="../images/icon-14.svg" alt="up-vote" class="media-object" style="width:1.2rem; height: 1.2rem;">'
            +info.votes
            +'<img src="../images/broken-19.svg" alt="down-vote" class="media-object" style="width:1.2rem; height: 1.2rem;">'
            +'</div>'
            +'<a href="#" ><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i></a>'
            +'</div>';
            if(info.nr_answers!=null)
            {
                element.innerHTML+='<div class="media p-3 container-accordion">'
                +'<div id="accordion'+(info.id_answer+4)+'" value='+(info.id_answer+4)+'>'
                +'<div class="card no-thin-line">'
                +'<div class="card-header answer-header">'
                +'<a class="card-link" data-toggle="collapse" href="#answers-to-answers'+(info.id_answer+4)+'">'
                +'<span class="info-answers expand-icon"><i class="fas fa-plus-circle"></i>'
                +' '+info.nr_answers+ ' answer'+ ((info.nr_answers == 1) ? '' : 's')
                +'</span>'
                +'</a></div>'
                +'<div id="answers-to-answers'+(info.id_answer+4)+'" class="collapse" data-parent="#accordion'+(info.id_answer+4)+'">'
                +'<div class="card-body answer-body-all">'
                +'<div class="card" style="border-style:none;">'
                +'</div></div></div></div></div></div>';
            }
            element.innerHTML+='</div></div></div>';
            let answer = element.querySelector(".expand-icon");
            if(answer!=null)
            {
                let info_i=answer.querySelector("i");
                answer.addEventListener("click",function () {
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

            expandClick();

            //$('#accordion'+(info.id_answer+4)+' #answers-to-answers'+(info.id_answer+4)).collapse('toggle');
            
        },
        error: function (data) {
            element.innerHTML="Server Error";
            console.log("server error");
        }
    });
}
function expandClick() {
    event.preventDefault();
    let media = document.querySelectorAll(".container-accordion");
    for(let i=0;i<media.length;i++)
    {
        let id = media[i].querySelector(".container-accordion > div");
        let value = id.getAttribute("value") - 4;
        let answer=media[i].querySelector(".expand-icon");
        let aq = media[i].querySelector(".answer-body-all > .card");
        function load() {
            aq.innerHTML="Loading...";
            getAnswers(value,aq);
            answer.removeEventListener("click",load);
        }
        if(aq.innerHTML.length==0)
            answer.addEventListener("click",load);
        
    }
    
}