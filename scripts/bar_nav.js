let img_logo;
let profile_bar;
let search_bar;
let grid_bar;
let original_search_bar;
window.addEventListener("load",onLoad);
function onLoad() {
    img_logo = document.getElementById("logo-image");
    profile_bar = document.querySelector("#info-user");
    search_bar = document.getElementById("ask-search-bar");
    grid_bar = document.getElementById("grid-bar");
    window.onresize = testIcon;
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
    testIcon();


}

function searchButton() {
    let search_button = document.getElementById("search-button");
    let main_div = document.getElementById("grid-bar");
    let secondary_div = document.getElementById("mobile-search-field");
    search_button.addEventListener("click", function () {
        main_div.style.display = "none";
        secondary_div.style.display = "grid";
        secondary_div.innerHTML = original_search_bar.innerHTML;
        secondary_div.innerHTML += '<button type="button" class="btn btn-dark" id="back-button"><i class="fas fa-angle-left"></i></button>';
        let button_back = document.getElementById("back-button");
        button_back.addEventListener("click", function () {
            main_div.style.display = "grid";
            secondary_div.style.display = "none";
        });
        addDropEvent();
    });
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

function hyperSmallScreen() {
    img_logo.setAttribute("src", "../images/logo_lbaw.png");
    profile_bar.innerHTML = '<button type="button" class="btn btn  " id="search-button"><i class="fas fa-search" id="search-icon"></i></button>';
    profile_bar.innerHTML += '<button type="button" class="btn btn  "><i class="fas fa-question"></i></button>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">4</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em;  border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img> <p style="margin:0px;font-size:12px;" > Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true"></i><p>08/03/19</p></span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px;font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true"></i><p>09/03/19</p></span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user" style="margin-right:5px;"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function superSmallScreen() {
    img_logo.setAttribute("src", "../images/logo_lbaw.png");
    profile_bar.innerHTML = '<button type="button" class="btn  " id="search-button"><i class="fas fa-search" id="search-icon"></i></button>';
    profile_bar.innerHTML += '<button type="button" class="btn  "><strong>Ask</strong></button>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">4</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em; display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px; font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em; display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px; font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function smallMScreen() {
    img_logo.setAttribute("src", "../images/logo_lbaw.png");
    profile_bar.innerHTML = '<button type="button" class="btn btn  "><strong>Ask</strong></button>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">4</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em;display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px;font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded" src="../images/user1.png" style="width: 1.2em;display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px; font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);

}

function smallScreen() {
    img_logo.setAttribute("src", "../images/logo_lbaw.png");
    profile_bar.innerHTML = '<button type="button" class="btn btn  "><strong>Ask a Question</strong></button>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">4</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded " src="../images/user1.png" style="width: 1.2em; display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px; font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="#"><img class="rounded " src="../images/user1.png" style="width: 1.2em; display: inline-block; border: 0.8px solid black; box-shadow: 0px 2px 4px 0px rgba(0, 0, 0, 0.1);"></img><p style="margin:0px; font-size:12px;"> Luis started follow you </p><span><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i><p>08/03/19</p></span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Sign in</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="#">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function testIcon() {
    if (window.innerWidth <= 320) {
        search_bar.innerHTML = " ";
        hyperSmallScreen();
        searchButton();
    } else if (window.innerWidth <= 550) {
        search_bar.innerHTML = " ";
        superSmallScreen();
        searchButton();
    } else if (window.innerWidth <= 700) {
        smallMScreen();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else if (window.innerWidth <= 765) {
        smallScreen();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else {
        img_logo.setAttribute("src", "../images/logo.png");
        profile_bar.innerHTML = '<button type="button" class="btn btn  "><strong>Ask a Question</strong></button>';
        profile_bar.innerHTML += '<button type="button" class="btn  "><i class="fa fa-fw fa-user"></i> Sign in</button>';
        profile_bar.innerHTML += '<button type="button" class="btn  "><i class="fa fa-fw fa-user"></i> Register</button>';
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
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