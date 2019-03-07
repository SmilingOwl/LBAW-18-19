let img_logo=document.getElementById("logo-image");
let profile_bar=document.querySelector("#info-user");
let search_bar=document.getElementById("search-bar");
let grid_bar=document.getElementById("grid-bar");
let original_search_bar;
window.onload = function()
{
    window.onresize =testIcon;
    original_search_bar=document.createElement("div");
    original_search_bar.setAttribute("id","search-bar");
    let form_search=document.createElement("form");
    form_search.setAttribute("class","form-inline");
    form_search.setAttribute("action","/action_page.php");
    let div_form=document.createElement("div");
    div_form.setAttribute("class","form-control form-control-lg");
    div_form.setAttribute("id","search-container");
    let div_container2=document.createElement("div");
    div_container2.setAttribute("id","search-container2");
    let div_search_bar_cat=document.createElement("div");
    div_search_bar_cat.setAttribute("id","search-bar-cat");
    div_search_bar_cat.innerHTML='<img src="../images/dead.png" class="mx-auto d-block img-fluid rounded-circle" width="33" id="cat-icon">';
    let div_search_bar_div=document.createElement("div");
    div_search_bar_div.setAttribute("id","search-bar-div");
    div_search_bar_div.innerHTML='<input type="text" class="fluid" placeholder="Let us know your doubts" id="search-bar">';
    let div_search_icon_div=document.createElement("div");
    div_search_icon_div.setAttribute("id","search-icon-div");
    div_search_icon_div.innerHTML='<a href="../pages/search.html" id="a-search-icon"><i class="fas fa-search" id="search-icon"></i></a>';
    div_container2.appendChild(div_search_bar_cat);
    div_container2.appendChild(div_search_bar_div);
    div_container2.appendChild(div_search_icon_div);
    div_form.appendChild(div_container2);
    form_search.appendChild(div_form);
    original_search_bar.appendChild(form_search);
    testIcon();


}
function hyperSmallScreen()
{
    img_logo.setAttribute("src","../images/logo_lbaw.png");
    profile_bar.innerHTML='<button type="button" class="btn btn btn-dark"><i class="fas fa-search" id="search-icon"></i></button>';
    profile_bar.innerHTML+='<button type="button" class="btn btn btn-dark"><i class="fas fa-question"></i></button>';
    let div=document.createElement("div");
    div.setAttribute("class","btn-group");
    div.innerHTML+='<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> </button>';
    let div_menu=document.createElement("div");
    div_menu.setAttribute("class","dropdown-menu dropdown-menu-right");
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}
function superSmallScreen()
{
    img_logo.setAttribute("src","../images/logo_lbaw.png");
    profile_bar.innerHTML='<button type="button" class="btn btn btn-dark"><i class="fas fa-search" id="search-icon"></i></button>';
    profile_bar.innerHTML+='<button type="button" class="btn btn btn-dark">Ask a Question</button>';
    let div=document.createElement("div");
    div.setAttribute("class","btn-group");
    div.innerHTML+='<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> </button>';
    let div_menu=document.createElement("div");
    div_menu.setAttribute("class","dropdown-menu dropdown-menu-right");
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}
function smallScreen()
{
    img_logo.setAttribute("src","../images/logo_lbaw.png");
    profile_bar.innerHTML='<button type="button" class="btn btn btn-dark">Ask a Question</button>';
    let div=document.createElement("div");
    div.setAttribute("class","btn-group");
    div.innerHTML+='<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu=document.createElement("div");
    div_menu.setAttribute("class","dropdown-menu dropdown-menu-right");
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML+='<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}
function testIcon(){
    if (window.innerWidth <= 320)
    {
        search_bar.innerHTML=" ";
        hyperSmallScreen()
    }
    else if (window.innerWidth <= 550)
    {
        search_bar.innerHTML=" ";
        superSmallScreen();
    }
    else if (window.innerWidth <= 765) {
        smallScreen();
        search_bar.innerHTML=original_search_bar.innerHTML;
    } else {
        img_logo.setAttribute("src","../images/logo.png");
        profile_bar.innerHTML='<button type="button" class="btn btn btn-dark">Ask a Question</button>';
        profile_bar.innerHTML+='<button type="button" class="btn btn-outline-primary"><i class="fa fa-fw fa-user"></i> Sign in</button>';
        profile_bar.innerHTML+='<button type="button" class="btn btn-primary"><i class="fa fa-fw fa-user"></i> Register</button>';
        search_bar.innerHTML=original_search_bar.innerHTML;
    }
}
/*

<div class="btn-group">
<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
   Sony
</button>
<div class="dropdown-menu">
  <a class="dropdown-item" href="#">Tablet</a>
  <a class="dropdown-item" href="#">Smartphone</a>
</div>
</div>*/