let img_logo=document.getElementById("logo-image");
window.onload = function()
{
    testIcon();
    window.onresize =testIcon;
    
}
function testIcon(){
    if (window.innerWidth <= 600) {
        img_logo.setAttribute("src","../images/logo_lbaw.png");
    } else {
        img_logo.setAttribute("src","../images/logo.png");
    }
}