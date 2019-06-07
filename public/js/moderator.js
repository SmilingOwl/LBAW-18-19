let org;

window.addEventListener("load",onLoadModerator);
window.addEventListener("resize",moderatorIcon);
function onLoadModerator() {
    moderatorIcon();

    
    let search = document.querySelector(".search-moderator-user");
    $('.search-moderator-user').on('input',requestUsers);
    org=document.querySelector(".table-users thead");

}



function requestUsers(e)
{
    if($(this).val()=="")return ;
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'post',
        url: '/api/search/user',
        data:{name:$(this).val()},
        success: function (data) {
            displayUsers(data);
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function displayUsers(data)
{
    let table = document.querySelector(".table-users");
    table.innerHTML="";
    table.appendChild(org);
    for(let i=0;i<data.length;i++)
    {
        table.innerHTML+='<tr><td><a href="/profile/'+data[i].username+'">'+data[i].username+'</a></td><td>'+data[i].email+'</td><td>'+data[i].rankname+'</td><td><div class="btn-group" role="group" aria-label="Basic example"><button type="button" class="btn btn-success .btn-sm onclick="promoteUser(\''+data[i].username+'\')">Promote</button><button type="button" class="btn btn-danger .btn-sm" onclick="banUser(\''+data[i].username+'\')">Ban</button></div></td></tr>';
    }
}

function banUser(username){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        type:'post',
        url:'/api/members/'+ username +'/ban',
        success:function(data){
            window.location.reload();
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function promoteUser(username){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method:'post',
        url:'/api/members/'+ username +'/promote',
        success:function(data){
            window.location.reload();
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function moderatorIcon()
{
    let select=document.querySelectorAll(".moderator-tabs li a");
    if (window.innerWidth <= 330) {
        select[0].innerHTML='<i class="fas fa-users" style="margin-right: 10px;"></i>';
        select[1].innerHTML='<i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i>';
    }
    else
    {
        select[0].innerHTML='<i class="fas fa-users" style="margin-right: 10px;"></i>Users';
        select[1].innerHTML='<i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i> Reported content';
    }

}