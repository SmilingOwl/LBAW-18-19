
window.addEventListener("load",onLoadModerator);
window.addEventListener("resize",moderatorIcon);
function onLoadModerator() {
    moderatorIcon();

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