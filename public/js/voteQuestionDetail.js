
window.addEventListener("load",onLoadVote);
function onLoadVote() {
    questionVotes();
    firstAnswersVotes();
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
        },
        error: function (data) {
            console.log("server error");
        }
    });
}
function firstAnswersVotes() {
    let voteDivs = document.querySelectorAll(".answer-up-votes");
    for(let i=0;i<voteDivs.length;i++)
    {
        let divVote = voteDivs[i];
        let voteType = divVote.getAttribute("data-type");
        let auth = divVote.getAttribute("data-auth");
        let id= divVote.getAttribute("data-id");
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
}




function voteQuestion(id,type) {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'get',
        url: '/questions/' + id + "/" + type,
        success: function (data) {
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function questionVotes() {
    let divVote = document.querySelector(".answer-up-votes-mainquestion");
    let voteType = divVote.getAttribute("data-type");
    let auth = divVote.getAttribute("data-auth");
    let id= divVote.getAttribute("data-id");
    let voteTextNumber = divVote.querySelector(".number-votes").getAttribute("data-number");
    let upvote = divVote.querySelector(".question-upvote");
    let downvote = divVote.querySelector(".question-downvote");
    upvote.addEventListener("click",function() {
        if(auth=="0")
        {
            window.location.href = "/login";
            return ;
        }
        if(voteType == "null" || voteType.length == 0 || voteType=="nothing")
        {
            voteQuestion(id,"upVote");
            upvote.setAttribute("src","/images/icon-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","upvote");
            voteTextNumber=(parseInt(voteTextNumber)+1);
        }
        else if(voteType == "downvote")
        {
            voteQuestion(id,"upVote");
            upvote.setAttribute("src","/images/icon-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","upvote");
            voteTextNumber=(parseInt(voteTextNumber)+2);
        }
        else if(voteType == "upvote")
        {
            voteQuestion(id,"nothingVote");
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
            voteQuestion(id,"downVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/downvote-19.svg");
            divVote.setAttribute("data-type","downvote");
            voteTextNumber=(parseInt(voteTextNumber)-1);
        }
        else if(voteType == "downvote")
        {
            voteQuestion(id,"nothingVote");
            upvote.setAttribute("src","/images/upvote-14.svg");
            downvote.setAttribute("src","/images/broken-19.svg");
            divVote.setAttribute("data-type","nothing");
            voteTextNumber=(parseInt(voteTextNumber)+1);
        }
        else if(voteType == "upvote")
        {
            voteQuestion(id,"downVote");
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