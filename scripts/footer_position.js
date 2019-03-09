window.addEventListener("load",onLoad);
window.addEventListener("resize",onLoad);
function onLoad()
{
    
    let filhos=document.querySelectorAll("body > div");
    let nav=document.querySelector("body > nav");
    let footer=document.querySelector("body > footer");
    let soma=0;
    for(let i=0;i<filhos.length;i++)
    {
        soma+=filhos[i].clientHeight;
    }
    console.log(soma + " " + window.innerHeight);
    if(soma<window.innerHeight)
    {
        let adicionar=window.innerHeight/filhos.length - nav.offsetHeight - footer.offsetHeight;
        for(let i=0;i<filhos.length;i++)
        {
            filhos[i].style.height=adicionar + "px";
        }
    }
}