
window.addEventListener("load",onLoadAdimn);
window.addEventListener("resize",adminIcon);
function onLoadAdimn() {
    adminIcon();

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