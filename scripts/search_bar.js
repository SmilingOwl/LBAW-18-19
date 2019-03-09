let original_search_bar;
let search_bar;
window.addEventListener("load", onLoad);

function onLoad() {

    search_bar = document.getElementById("ask-search-bar");
    original_search_bar = document.createElement("div");
    original_search_bar.setAttribute("id", "ask-search-bar");
    let form_search = document.createElement("form");
    form_search.setAttribute("class", "form-inline");
    form_search.setAttribute("action", "/action_page.php");
    let div_form = document.createElement("div");
    div_form.setAttribute("class", "form-control form-control-lg");
    div_form.setAttribute("id", "search-container");
    let div_container2 = document.createElement("div");
    div_container2.setAttribute("id", "search-container2");
    let div_search_bar_cat = document.createElement("div");
    div_search_bar_cat.setAttribute("id", "search-bar-cat");
    div_search_bar_cat.setAttribute("class", "dropdown");
    div_search_bar_cat.innerHTML = '<button type="button" id="dropdown-bar-cat" class="btn dropdown-toggle" data-toggle="dropdown"><img src="../images/logo_lbaw.png" alt="logo" id="drop-menu-cat" value="all"></button>';
    //div_search_bar_cat.innerHTML+='<img src="../images/logo.png" class="mx-auto d-block img-fluid rounded-circle" width="33" id="cat-icon">';
    let div_group_drop_down = document.createElement("div");
    div_group_drop_down.setAttribute("class", "dropdown-menu");
    div_group_drop_down.innerHTML = '<a class="dropdown-item" href="#"><img src="../images/logo_lbaw.png" class="rounded dropdown-image-cat" alt="All"> All</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/biology-01.svg" class="rounded dropdown-image-cat" alt="Biology"> Biology</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/chemistry-03.svg" class="rounded dropdown-image-cat" alt="Chemistry"> Chemistry</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/maths-12.svg" class="rounded dropdown-image-cat" alt="Maths"> Maths</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/physics-02.svg" class="rounded dropdown-image-cat" alt="Physics"> Physics</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/geology-10.svg" class="rounded dropdown-image-cat" alt="Geology"> Geology</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/art-06.svg" class="rounded dropdown-image-cat" alt="Art"> Art</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/history-08.svg" class="rounded dropdown-image-cat" alt="History"> History</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/linguistics-09.svg" class="rounded dropdown-image-cat" alt="Linguistics"> Linguistics</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/health-04.svg" class="rounded dropdown-image-cat" alt="Health"> Health</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/business-07.svg" class="rounded dropdown-image-cat" alt="Business"> Business</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/tech-05.svg" class="rounded dropdown-image-cat" alt="Technology"> Technology</a>';
    div_group_drop_down.innerHTML += '<a class="dropdown-item" href="#"><img src="../images/psychology-11.svg" class="rounded dropdown-image-cat" alt="Psychology"> Psychology</a>';
    div_search_bar_cat.appendChild(div_group_drop_down);
    let div_search_bar_div = document.createElement("div");
    div_search_bar_div.setAttribute("id", "search-bar-div");
    div_search_bar_div.innerHTML = '<input type="text" class="fluid" placeholder="Let us know your doubts" id="search-bar">';
    let div_search_icon_div = document.createElement("div");
    div_search_icon_div.setAttribute("id", "search-icon-div");
    div_search_icon_div.innerHTML = '<a href="../pages/search.html" id="a-search-icon"><i class="fas fa-search" id="search-icon"></i></a>';
    div_container2.appendChild(div_search_bar_cat);
    div_container2.appendChild(div_search_bar_div);
    div_container2.appendChild(div_search_icon_div);
    div_form.appendChild(div_container2);
    form_search.appendChild(div_form);
    original_search_bar.appendChild(form_search);
    search_bar.innerHTML = original_search_bar.innerHTML;
    addDropEvent();
}


function addDropEvent() {
    let images_dropdown = document.querySelectorAll(".dropdown-item");
    for (let i = 0; i < images_dropdown.length; i++) {
        images_dropdown[i].addEventListener("click", changeImageDropdown);
    }
}

function changeImageDropdown(e) {
    let src = e.srcElement.querySelector("img").getAttribute("src");
    let image = document.querySelector("#drop-menu-cat");
    image.setAttribute("src", src);
    image.setAttribute("value", e.srcElement.querySelector("img").getAttribute("alt"));
}