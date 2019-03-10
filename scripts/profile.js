window.addEventListener("load",onLoadprofile);
window.addEventListener("resize",profileIcon);
function onLoadprofile() {
    profileIcon();
    let filhos=document.querySelectorAll("body > div");
    let nav=document.querySelector("body > nav");
    let footer=document.querySelector("body > footer");
    let soma=0;
    for(let i=0;i<filhos.length;i++)
    {
        soma+=filhos[i].clientHeight;
    }
    if(soma<window.innerHeight)
    {
        let adicionar=window.innerHeight - nav.offsetHeight - footer.offsetHeight;
        filhos[filhos.length-1].addEventListener("click",function(){
            filhos[filhos.length-1].style.height="auto";
        });
        filhos[filhos.length-1].style.height=adicionar + "px";
    }

}


function profileIcon()
{
    let select=document.querySelectorAll(".profile-tabs li a");
    if (window.innerWidth <= 770) {
        select[0].innerHTML='<i class="fas fa-question"></i>';
        select[1].innerHTML='<i class="fas fa-user-plus"></i>';
        select[2].innerHTML='<i class="fas fa-plus"></i>';
    }
    else
    {
        select[0].innerHTML='<i class="fas fa-question"></i> Questions';
        select[1].innerHTML='<i class="fas fa-user-plus"></i> Followers';
        select[2].innerHTML='<i class="fas fa-plus"></i> Following';
    }


}