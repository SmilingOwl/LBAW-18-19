let original_search_bar;
let search_bar;
window.addEventListener("load", onLoad);

function onLoad() {

    search_bar = document.querySelector(".ask-search-bar");
    original_search_bar = document.createElement("div");
    original_search_bar.setAttribute("class", "ask-search-bar");
    let form_search = document.createElement("form");
    form_search.setAttribute("class", "form-inline");
    form_search.setAttribute("action", "/action_page.php");
    let div_form = document.createElement("div");
    div_form.setAttribute("class", "form-control form-control-lg search-container");
    let div_container2 = document.createElement("div");
    div_container2.setAttribute("class", "search-container2");
    let div_search_bar_cat = document.createElement("div");
    div_search_bar_cat.setAttribute("class", "search-bar-cat dropdown");
    div_search_bar_cat.innerHTML = '<button type="button" class="btn dropdown-toggle dropdown-bar-cat" data-toggle="dropdown"><img src="../images/icon-14.svg" alt="logo" class="drop-menu-cat" value="all"></button>';
    let div_group_drop_down = document.createElement("div");
    div_group_drop_down.setAttribute("class", "dropdown-menu");
    div_group_drop_down.innerHTML = '<a class="dropdown-item" href="#"><img src="../images/icon-14.svg" class="rounded dropdown-image-cat" alt="All"> All</a>';
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
    div_search_bar_div.setAttribute("class", "search-bar-div");
    div_search_bar_div.innerHTML = '<input type="text" class="fluid search-bar" placeholder="Let us know your doubts" >';
    let div_search_icon_div = document.createElement("div");
    div_search_icon_div.setAttribute("class", "search-icon-div");
    div_search_icon_div.innerHTML = '<a href="../pages/topic.html" class="a-search-icon"><i class="fas fa-search search-icon"></i></a>';
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
    let image = document.querySelector(".drop-menu-cat");
    image.setAttribute("src", src);
    image.setAttribute("value", e.srcElement.querySelector("img").getAttribute("alt"));
}