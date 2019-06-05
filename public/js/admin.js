
let org;

window.addEventListener("load",onLoadAdimn);
window.addEventListener("resize",adminIcon);
function onLoadAdimn() {
    adminIcon();

    let search = document.querySelector(".search-admin-user");
    $('.search-admin-user').on('input',requestUsers);
    //search.addEventListener("change",requestUsers);
    //search.addEventListener("input",requestUsers);
    org=document.querySelector(".table-users thead");
}

//-----------------------Admin buttons---------------------------

function banUser(e){
    console.log(e);
    $.ajax({
        type:'post',
        url:'api/members/'+ '".username."' +'/ban',
        data:'_token = <?php echo csrf_token() ?>',
        success:function(data){
       
        },
        error: function (data) {
            console.log("server error");
        }
    });
}


function dismissModerator(username){
    $.ajax({
        method:'post',
        url:'api/members/'+ username +'/dismiss',
        data:'_token = <?php echo csrf_token() ?>',
        success:function(data){
       
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function promoteUser(username){
    $.ajax({
        method:'post',
        url:'api/members/'+username+'/promote',
        data:'_token = <?php echo csrf_token() ?>',
        success:function(data){
       
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function deleteContent(){
  
}

function ignoreReport(){
    
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
        table.innerHTML+='<tr><td><a href="/profile/'+data[i].username+'">'+data[i].username+'</a></td><td>'+data[i].email+'</td><td>'+data[i].rankname+'</td><td><div class="btn-group" role="group" aria-label="Basic example"><button type="button" onclick="promoteUser('+data[i].username+')"class="btn btn-success .btn-sm">Promote</button><button type="button" class="btn btn-danger .btn-sm" onclick="banUser('+data[i].username+')">Ban</button></div></td></tr>';
    }
}

function adminIcon()
{
    let select=document.querySelectorAll(".admin-tabs li a");
    if (window.innerWidth <= 770) {
        select[0].innerHTML='<i class="fas fa-folder-open" style="margin-right: 10px;"></i>';
        select[1].innerHTML='<i class="fas fa-users" style="margin-right: 10px;"></i>';
        select[2].innerHTML='<i class="fas fa-user-shield" style="margin-right: 10px;"></i>';
        select[3].innerHTML='<i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i>';
    }
    else
    {
        select[0].innerHTML='<i class="fas fa-folder-open" style="margin-right: 10px;"></i>Categories';
        select[1].innerHTML='<i class="fas fa-users" style="margin-right: 10px;"></i>Users';
        select[2].innerHTML='<i class="fas fa-user-shield" style="margin-right: 10px;"></i> Moderators';
        select[3].innerHTML='<i class="fas fa-exclamation-triangle" style="margin-right: 10px;"></i> Reported content';
    }

}