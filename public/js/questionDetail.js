
window.addEventListener("load",onLoadDetail);

function onLoadDetail() {
    addAnswer();
    expandClick();
    commentActivate();
}
function commentDiv(id_answer,id_question) {
    let devolver = document.createElement("div");
    devolver.setAttribute("class","card make-comment");
    devolver.setAttribute("style","margin-bottom:1em;");
    devolver.innerHTML='<form action="/answers/addToAnswer" method="post">'
    +'<input type="hidden" name="_token" id="csrf-token" value="'+$('meta[name="csrf-token"]').attr('content')+'" />'
    +'<input type="hidden" name="_method" value="PUT">'
    +'<div class="card-body add-comment-body" id="commentAdd">'
    +'<div class="form-group">'
    +'<label for="comment">Comment:</label>'
    +'<input type="hidden" name="id_answer" value="'+id_answer+'">'
    +'<input type="hidden" name="id_question" value="'+id_question+'">'
    +'<textarea class="form-control" rows="3" id="comment" name="text" required></textarea>'
    +'<div class="invalid-feedback">There needs to be a comment</div></div>'
    +'<div class="btn-group" style="align-self:flex-end;">'
    +'<button type="submit" class="btn btn-dark">Submit</button>'
    +'</div></div></form>';
    return devolver;
} 

function commentActivate() {

    let answerCards = document.querySelectorAll(".answer-question .media-body");
    for(let i=0;i<answerCards.length;i++)
    {
        let replyButton = answerCards[i].querySelector(".make-comment");
        let open=false;
        let element = commentDiv(replyButton.getAttribute("data-id"),replyButton.getAttribute("data-belongs"));

        replyButton.addEventListener("click",function() {
            if(open)
            {
                answerCards[i].removeChild(element);
                open=false;
            }
            else
            {
                answerCards[i].appendChild(element);
                open=true;
            }
            
        });
    }
}
function activateSingleComment(card) {
    let replyButton = card.querySelector(".make-comment");
    let open=false;
    let element = commentDiv(replyButton.getAttribute("data-id"),replyButton.getAttribute("data-belongs"));

    replyButton.addEventListener("click",function() {
        if(open)
        {
            card.removeChild(element);
            open=false;
        }
        else
        {
            card.appendChild(element);
            open=true;
        }
        
    });
    
}






function voteAnswer(id,type) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'get',
        url: '/answers/' + id + "/" + type,
        success: function (data) {
            if(data=="ok")
                return true;
            else
                return false;
        },
        error: function (data) {
            return false;
        }
    });
}

function voteAnswerEvent(element) {
    let divVote = element;
    let voteType = divVote.getAttribute("data-type");
    let auth = divVote.getAttribute("data-auth");
    let id= divVote.getAttribute("data-id");
    let owner = divVote.getAttribute("data-owner");
    if(owner == username) return;
    let voteTextNumber = divVote.querySelector(".number-votes").getAttribute("data-number");
    let upvote = divVote.querySelector(".answer-upvote");
    let downvote = divVote.querySelector(".answer-downvote");
    upvote.addEventListener("click",function() {
        if(auth=="0")
        {
            window.location.href = "/login";
            return ;
        }
        if(voteType == "null" || voteType.length == 0 || voteType=="nothing")
        {
            voteAnswer(id,"upVote");
            upvote.setAttribute("src","/images/icon-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","upvote");
            voteTextNumber=(parseInt(voteTextNumber)+1);
        }
        else if(voteType == "downvote")
        {
            voteAnswer(id,"upVote");
            upvote.setAttribute("src","/images/icon-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","upvote");
            voteTextNumber=(parseInt(voteTextNumber)+2);
        }
        else if(voteType == "upvote")
        {
            voteAnswer(id,"nothingVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","nothing");
            voteTextNumber=(parseInt(voteTextNumber)-1);
        }
        divVote.querySelector(".number-votes").setAttribute("data-number",voteTextNumber);
        if(voteTextNumber>1000)
        {
            divVote.querySelector(".number-votes").innerHTML=parseFloat(voteTextNumber/1000).toFixed(1) + "K";
        }
        else
            divVote.querySelector(".number-votes").innerHTML=voteTextNumber;
        voteType=divVote.getAttribute("data-type");
    });
    downvote.addEventListener("click",function() {
        if(auth=="0")
        {
            window.location.href = "/login";
            return ;
        }
        if(voteType == "null" || voteType.length == 0 || voteType=="nothing")
        {
            voteAnswer(id,"downVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/downvote-19.svg");
            divVote.setAttribute("data-type","downvote");
            voteTextNumber=(parseInt(voteTextNumber)-1);
        }
        else if(voteType == "downvote")
        {
            voteAnswer(id,"nothingVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","nothing");
            voteTextNumber=(parseInt(voteTextNumber)+1);
        }
        else if(voteType == "upvote")
        {
            voteAnswer(id,"downVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/downvote-19.svg");
            divVote.setAttribute("data-type","downvote");
            voteTextNumber=(parseInt(voteTextNumber)-2);
        }
        divVote.querySelector(".number-votes").setAttribute("data-number",voteTextNumber);
        if(voteTextNumber>1000)
        {
            divVote.querySelector(".number-votes").innerHTML=parseFloat(voteTextNumber/1000).toFixed(1) + "K";
        }
        else
            divVote.querySelector(".number-votes").innerHTML=voteTextNumber;
        voteType=divVote.getAttribute("data-type");
    });
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
            let htmlContent='';
            for(let i=0;i<data.length;i++)
            {
                let info=data[i];
                htmlContent+='<div class="card-header comment-title ">'
                +'<div class="card-link answer-header-icon" >'
                +'<div class="row">'
                +'<div class="answer-user">';
                if(info.deleted)
                    htmlContent+="[deleted]";
                else
                {
                    htmlContent+='<a href="/profile/'+info.username+'">'
                    +'<img src="/images/'+info.profilephoto+'" alt="User2" class="rounded-circle" style="width:2em; margin:0;">'
                    +'</a>'
                    +'<a href="/profile/'+info.username+'">'+info.username
                    +'</a></div><div>';
                }
                htmlContent+='</div><div>';
                if(info.best != null)
                {
                    htmlContent+='<img src="/images/answered-13.svg" alt="answered" class="media-object" style="width:2rem; height: 2rem;">';
                }
                htmlContent+='</div></div><small>'+info.date
                +'</small></div></div>'
                +'<div class="card-body comment-body answer'+info.id_answer+'">'
                +'<div class="media border p-3 answer-question">'
                +'<div class="media-body"><div>';
                if(info.deleted)
                    htmlContent+="[deleted]";
                else
                    htmlContent+=info.text
                htmlContent+='</div><div class="bottom-answer">'
                +'<div class="dropdown">'
                +'<button type="button" class="btn" data-toggle="dropdown">'
                +'<i class="fas fa-ellipsis-v"></i>'
                +'</button>'
                +'<div class="dropdown-menu">';
                if(!info.deleted)
                {
                    if(info.username != username)
                        htmlContent+='<span class="dropdown-item" onclick="reportAnswer(\''+info.id_answer+'\')" style="font-family: \'Prompt\', sans-serif; color: #BE4627;">Report</span>';
                    if(info.username == username)
                    {
                        htmlContent+='<span class="dropdown-item" onclick="" >Edit</span>'
                        +'<span class="dropdown-item" onclick="deleteAnswer('+info.id_answer+')" >Delete</span>';
                    }
                }
                htmlContent+='</div></div>'
                +'<div class="answer-up-votes" data-auth="'+info.auth+'" data-type="'+info.votetype+'" data-id="'+info.id_answer+'" data-owner="'+info.username+'">'
                if(info.votetype == "upvote")
                {
                    htmlContent+='<img src="/images/icon-14.svg" alt="up-vote" class="media-object answer-upvote" style="width:1.2rem; height: 1.2rem;">';
                }
                else
                {
                    htmlContent+='<img src="/images/upvote-14.svg" alt="up-vote" class="media-object answer-upvote" style="width:1.2rem; height: 1.2rem;">';
                }
                htmlContent+='<span class="number-votes" data-number="'+info.votes+'">';
                if(info.votes > 1000)
                    htmlContent+=parseFloat(info.votes/1000).toFixed(1) + "K";
                else
                    htmlContent+=info.votes;
                htmlContent+='</span>';
                if(info.votetype == "downvote")
                {
                    htmlContent+='<img src="/images/downvote-19.svg" alt="down-vote" class="media-object answer-downvote" style="width:1.2rem; height: 1.2rem;">';
                }
                else
                {
                    htmlContent+='<img src="/images/broken-19.svg" alt="down-vote" class="media-object answer-downvote" style="width:1.2rem; height: 1.2rem;">';
                }
                htmlContent+='</div>'
                +'<span class="make-comment" data-id="'+info.id_answer+'" data-belongs="'+info.id_question+'"><i class="far fa-comment make-comment" style="width: 2rem; height: 2rem;"></i>Reply</span>'
                +'</div>';
                if(info.nr_answers!=null)
                {
                    htmlContent+='<div class="media p-3 container-accordion">'
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
                htmlContent+='</div></div></div>';
            }


            element.innerHTML=htmlContent;
            let answer = element.querySelectorAll(".expand-icon");
            if(answer!=null)
            {
                for(let j=0;j<answer.length;j++)
                {
                    let info_i=answer[j].querySelector("i");
                    answer[j].addEventListener("click",function () {
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

            expandClick();
            activateSingleComment(element.querySelector(".media-body"));
            let answersVotes = element.querySelectorAll(".answer-up-votes");
            for(let k=0;k<answersVotes.length;k++)
                voteAnswerEvent(answersVotes[k]);
            
        },
        error: function (data) {
            console.log(data);
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
            aq.innerHTML='<span> Loading <span class="spinner-border spinner-border-sm"></span></span>';
            getAnswers(value,aq);
            answer.removeEventListener("click",load);
        }
        if(aq.innerHTML.length==0)
            answer.addEventListener("click",load);
        
    }   
}




function deleteQuestion(id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'post',
        url: '/api/questions/'+id,
        data: {
            "_method": 'DELETE',
        },
        success: function (data) {
            if(data == "ok")
            {
                window.location.href="/topic/all";
            }
        },
        error: function (data) {
            console.log("Server error");
        }
    });
}
function deleteAnswer(id) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'post',
        url: '/api/answers/'+id,
        data: {
            "_method": 'DELETE',
        },
        success: function (data) {
            if(data == "ok")
            {
                window.location.reload();
            }
        },
        error: function (data) {
            console.log(data);
            console.log("Server error");
        }
    });
}


function reportQuestion(id,text) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'post',
        url: '/api/questions/'+id + '/report',
        data: {
            "text" : text,
        },
        success: function (data) {
        },
        error: function (data) {
            console.log("Server error");
        }
    });
}

function reportAnswer(id) {
    let text = document.querySelector(".answer"+id + " .media-body > div").innerHTML;
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'post',
        url: '/api/answers/'+id + '/report',
        data: {
            "text" : text,
        },
        success: function (data) {
        },
        error: function (data) {
            console.log("Server error");
        }
    });
}