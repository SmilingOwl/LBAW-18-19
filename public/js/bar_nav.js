let img_logo;
let profile_bar;
let search_bar;
let grid_bar;
let original_search_bar;
let user = null;
let username;



window.addEventListener("load", onLoad);
window.addEventListener("resize", testIcon);
https: //getbootstrap.com/docs/4.0/components/forms/#validation

    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);

function onLoad() {
    getCategories();
    getMessage();


}

function searchButton() {
    let search_button = document.querySelector(".search-button");
    let main_div = document.querySelector(".grid-bar");
    let secondary_div = document.querySelector(".mobile-search-field");
    search_button.addEventListener("click", function () {
        main_div.style.display = "none";
        secondary_div.style.display = "grid";
        secondary_div.innerHTML = original_search_bar.innerHTML;
        secondary_div.innerHTML += '<button type="button" class="btn btn-dark back-button" ><i class="fas fa-angle-left"></i></button>';
        let button_back = document.querySelector(".back-button");
        button_back.addEventListener("click", function () {
            main_div.style.display = "grid";
            secondary_div.style.display = "none";
        });
        addDropEvent();
    });
}

function addDropEvent() {
    let images_dropdown = document.querySelectorAll(".drop-cat");
    for (let i = 0; i < images_dropdown.length; i++) {
        images_dropdown[i].addEventListener("click", changeImageDropdown);
    }
}

function changeImageDropdown(e) {
    console.log(e);
    let src = e.srcElement.querySelector("img").getAttribute("src");
    let image = document.querySelector(".drop-menu-cat");
    image.setAttribute("src", src);
    image.setAttribute("alt", e.srcElement.querySelector("img").getAttribute("alt"));
}
//  -------------------------------- LOGGED ----------------------------------------------------
function hyperSmallScreen() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button"><i class="fas fa-search search-icon"></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><i class="fas fa-question"></i></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;   "></img> <p class="item 2"style="margin:0px;font-size:13px;" > Luis started follow you </p><p> </p> <span class="item 3"> <i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis voted up your question  </p><p> </p> <span class="item 3"><i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user" style="margin-right:5px;"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function superSmallScreen() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button" ><i class="fas fa-search search-icon" ></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function smallMScreen() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question  </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);

}

function smallScreen() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask a Question</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2"font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle " src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2" font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

//------------------------------- Un logged ---------------------------------------

function hyperSmallScreenUnLogged() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button" ><i class="fas fa-search search-icon"></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><i class="fas fa-question"></i></a>';
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user" style="margin-right:5px;"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="login">Sign In</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="register">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}

function superSmallScreenUnLogged() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button" ><i class="fas fa-search search-icon" ></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="login">Sign In</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="register">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}

function smallMScreenUnLogged() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="login">Sign In</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="register">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);

}

function smallScreenUnLogged() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask a Question</strong></a>';
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="login">Sign In</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="register">Register</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div);
}
//  -------------------------------- Admin ----------------------------------------------------
function hyperSmallScreenAdmin() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button"><i class="fas fa-search search-icon"></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><i class="fas fa-question"></i></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;   "></img> <p class="item 2"style="margin:0px;font-size:13px;" > Luis started follow you </p><p> </p> <span class="item 3"> <i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis voted up your question  </p><p> </p> <span class="item 3"><i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user" style="margin-right:5px;"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./admin.html">Admin page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function superSmallScreenAdmin() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button" ><i class="fas fa-search search-icon" ></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./admin.html">Admin page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function smallMScreenAdmin() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question  </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./admin.html">Admin page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);

}

function smallScreenAdmin() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask a Question</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2"font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle " src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2" font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./admin.html">Admin page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}
//  -------------------------------- Moderator ----------------------------------------------------
function hyperSmallScreenModerator() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button"><i class="fas fa-search search-icon"></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><i class="fas fa-question"></i></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;   "></img> <p class="item 2"style="margin:0px;font-size:13px;" > Luis started follow you </p><p> </p> <span class="item 3"> <i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell_menu.innerHTML += '<a class="dropdown-item" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis voted up your question  </p><p> </p> <span class="item 3"><i class="fa fa-clock-o" aria-hidden="true"></i>09/03/19</a></span>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user" style="margin-right:5px;"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./moderator.html">Moderator page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function superSmallScreenModerator() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<button type="button" class="btn search-button" ><i class="fas fa-search search-icon" ></i></button>';
    profile_bar.innerHTML += '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i></button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./moderator.html">Moderator page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}

function smallMScreenModerator() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"<strong>Ask</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px;font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em;display: inline-block;  "></img><p class="item 2" style="margin:0px; font-size:13px;"> Luis voted up your question  </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./edit_profile.html">Edit profile</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./moderator.html">Moderator page</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);

}

function smallScreenModerator() {
    img_logo.setAttribute("src", "../images/icon-14.svg");
    profile_bar.innerHTML = '<a href="../pages/ask.html" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask a Question</strong></a>';
    let div_bell = document.createElement("div");
    div_bell.setAttribute("class", "btn-group");
    div_bell.innerHTML = '<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-bell"></i> <span class="badge badge-warning">2</span></button>';
    let div_bell_menu = document.createElement("div");
    div_bell_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./profile/' + username + '"><img class="item-1 rounded-circle" src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2"font-size:13px;"> Luis started follow you </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell_menu.innerHTML += '<a class="dropdown-item notification" href="./questionDetail.html"><img class="item-1 rounded-circle " src="../images/yves.jpg" style="width: 1.8em; height: 1.8em; display: inline-block;  "></img><p style="margin:0px; class="item 2" font-size:13px;"> Luis voted up your question </p><p> </p><span class="item 3"><i class="fa fa-clock-o" aria-hidden="true" style="margin-right:5px;"></i>09/03/19</span></a>';
    div_bell.appendChild(div_bell_menu);
    let div = document.createElement("div");
    div.setAttribute("class", "btn-group");
    div.innerHTML += '<button type="button" class="btn   dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Profile </button>';
    let div_menu = document.createElement("div");
    div_menu.setAttribute("class", "dropdown-menu dropdown-menu-right");
    div_menu.innerHTML += '<a class="dropdown-item" href="./profile/' + username + '">Profile page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./settings.html">Settings</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="./moderator.html">Moderator page</a>';
    div_menu.innerHTML += '<a class="dropdown-item" href="logout">Sign Out</a>';
    div.appendChild(div_menu);
    profile_bar.appendChild(div_bell);
    profile_bar.appendChild(div);
}






function testIconLogged() {
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
        smallScreen();
        img_logo.setAttribute("src", "../images/logo.png");
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    }
}

function testIconUnLogged() {
    if (window.innerWidth <= 320) {
        search_bar.innerHTML = " ";
        hyperSmallScreenUnLogged();
        searchButton();
    } else if (window.innerWidth <= 550) {
        search_bar.innerHTML = " ";
        superSmallScreenUnLogged();
        searchButton();
    } else if (window.innerWidth <= 700) {
        smallMScreenUnLogged();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else if (window.innerWidth <= 880) {
        smallScreenUnLogged();
        search_bar.innerHTML = original_search_bar.innerHTML;
        img_logo.setAttribute("style", "max-width: 50px;");
        addDropEvent();
    } else {
        profile_bar.innerHTML = '<a href="login" class="ask-button btn btn-dark" role="button" style="border-radius:0.3em;"><strong>Ask a Question</strong></a>';
        profile_bar.innerHTML += '<a href="login" class="ask-button btn" role="button" style="border-radius:0.3em;"><i class="fa fa-fw fa-user"></i> Sign in</a>';
        profile_bar.innerHTML += '<a href="register" class="ask-button btn" role="button" style="border-radius:0.3em;"><i class="fa fa-fw fa-user"></i> Register</a>';
        img_logo.setAttribute("src", "../images/logo.png");
        img_logo.setAttribute("style", "max-width: 160px;");
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    }
}

function testIconAdmin() {
    if (window.innerWidth <= 320) {
        search_bar.innerHTML = " ";
        hyperSmallScreenAdmin();
        searchButton();
    } else if (window.innerWidth <= 550) {
        search_bar.innerHTML = " ";
        superSmallScreenAdmin();
        searchButton();
    } else if (window.innerWidth <= 700) {
        smallMScreenAdmin();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else if (window.innerWidth <= 765) {
        smallScreenAdmin();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else {
        smallScreenAdmin();
        img_logo.setAttribute("src", "../images/logo.png");
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    }
}

function testIconModerator() {
    if (window.innerWidth <= 320) {
        search_bar.innerHTML = " ";
        hyperSmallScreenModerator();
        searchButton();
    } else if (window.innerWidth <= 550) {
        search_bar.innerHTML = " ";
        superSmallScreenModerator();
        searchButton();
    } else if (window.innerWidth <= 700) {
        smallMScreenModerator();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else if (window.innerWidth <= 765) {
        smallScreenModerator();
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    } else {
        smallScreenModerator();
        img_logo.setAttribute("src", "../images/logo.png");
        search_bar.innerHTML = original_search_bar.innerHTML;
        addDropEvent();
    }
}
let user_type;

function getMessage() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'get',
        url: '/auth/info',
        success: function (data) {
            if(data=="null") 
                user_type=null;
            else
                user_type = data[0].type;
                username = data[0].username;
            testIcon();
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function getCategories() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        method: 'get',
        url: '/category/all',
        success: function (data) {
            showCategories(data);
        },
        error: function (data) {
            console.log("server error");
        }
    });
}

function showCategories(info) {
    img_logo = document.querySelector(".logo-image");
    profile_bar = document.querySelector(".info-user");
    search_bar = document.querySelector(".ask-search-bar");
    grid_bar = document.querySelector(".grid-bar");
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
    div_search_bar_cat.innerHTML = '<button type="button" class="btn dropdown-toggle dropdown-bar-cat" data-toggle="dropdown"><img src="../images/icon-14.svg" class="drop-menu-cat" alt="all"></button>';
    let div_group_drop_down = document.createElement("div");
    div_group_drop_down.setAttribute("class", "dropdown-menu");
    div_group_drop_down.innerHTML = '<a class="dropdown-item drop-cat" ><img src="../images/icon-14.svg" class="rounded dropdown-image-cat" alt="All"> All</a>';
    for (let i = 0; i < info.length; i++) {
        let name = info[i].name.charAt(0).toUpperCase() + info[i].name.slice(1)
        div_group_drop_down.innerHTML += '<a class="dropdown-item drop-cat" ><img src="../images/' + info[i].icon + '" class="rounded dropdown-image-cat" alt="' + name + '"> ' + name + '</a>';
    }
    div_search_bar_cat.appendChild(div_group_drop_down);
    let div_search_bar_div = document.createElement("div");
    div_search_bar_div.setAttribute("class", "search-bar-div");
    div_search_bar_div.innerHTML = '<input type="text" class="fluid search-bar" placeholder="Want to learn something?" >';
    let div_search_icon_div = document.createElement("div");
    div_search_icon_div.setAttribute("class", "search-icon-div");
    div_search_icon_div.innerHTML = '<button type="submit" class="btn btn-outline-light a-search-icon"><i class="fas fa-search search-icon"></i></a>';
    div_container2.appendChild(div_search_bar_cat);
    div_container2.appendChild(div_search_bar_div);
    div_container2.appendChild(div_search_icon_div);
    div_form.appendChild(div_container2);
    form_search.appendChild(div_form);
    original_search_bar.appendChild(form_search);
}


function testIcon() {
    let logo_redirect = document.querySelector(".logo a");
    if (user_type == null) {
        testIconUnLogged();
    } else if (user_type == "member") {
        testIconLogged();
        logo_redirect.setAttribute("href", "./feed.html");
    } else if (user_type == "administrator") {
        testIconAdmin();
        logo_redirect.setAttribute("href", "./feed.html");
    } else if (user_type == "moderator") {
        testIconModerator();
        logo_redirect.setAttribute("href", "./feed.html");
    }
}