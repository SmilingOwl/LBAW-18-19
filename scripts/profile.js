window.addEventListener("load",onLoadprofile);
window.addEventListener("resize",profileIcon);
function onLoadprofile() {
    profileIcon();

}


function profileIcon()
{
    let select=document.querySelectorAll(".profile-tabs li a");
    if (window.innerWidth <= 770) {
        select[0].innerHTML='<i class="fas fa-question"></i>';
        select[1].innerHTML='<i class="fas fa-pencil-alt"></i>';
        select[2].innerHTML='<i class="fas fa-user-plus"></i>';
        select[3].innerHTML='<i class="fas fa-plus"></i>';
    }
    else
    {
        select[0].innerHTML='<i class="fas fa-question"></i> Questions';
        select[1].innerHTML='<i class="fas fa-pencil-alt"></i> Answers';
        select[2].innerHTML='<i class="fas fa-user-plus"></i> Followers';
        select[3].innerHTML='<i class="fas fa-plus"></i> Following';
    }

}