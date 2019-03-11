window.addEventListener("load",onLoad);
window.addEventListener("resize",onLoad);
function onLoad()
{
    
    let filhos=document.querySelectorAll("body > div");
    let nav=document.querySelector("body > nav");
    let footer=document.querySelector("body > footer");
    let soma=0;
    /*for(let i=0;i<filhos.length;i++)
    {
        soma+=filhos[i].clientHeight;
    }
    if(soma<window.innerHeight && filhos.length>0)
    {
        let adicionar=window.innerHeight - nav.offsetHeight - footer.offsetHeight;
        filhos[filhos.length-1].style.height=adicionar + "px";
    }*/
}