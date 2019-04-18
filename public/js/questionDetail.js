
window.addEventListener("load",onLoadDetail);
function onLoadDetail() {
    addAnswer();

}
function addAnswer()
{
    let answer = document.querySelectorAll(".expand-icon");
    for(let i=0;i<answer.length;i++)
    {
        let info_i=answer[i].querySelector("i");
        answer[i].addEventListener("click",function(){
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