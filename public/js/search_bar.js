let original_search_bar;
let search_bar;
window.addEventListener("load", onLoad);

function onLoad() {
    search_bar = document.querySelector(".ask-search-bar");
    original_search_bar = document.createElement("div");
    original_search_bar.setAttribute("class", "ask-search-bar");
    let form_search = document.querySelector(".search-bar-form");
    form_search.innerHTML="";
    let div_form = document.createElement("div");
    div_form.setAttribute("class", "form-control form-control-lg search-container");
    let div_container2 = document.createElement("div");
    div_container2.setAttribute("class", "search-container2");
    let div_search_bar_cat = document.createElement("div");
    div_search_bar_cat.setAttribute("class", "search-bar-cat dropdown");
    div_search_bar_cat.innerHTML = '<button type="button" class="btn dropdown-toggle dropdown-bar-cat" data-toggle="dropdown"><img src="../images/icon-14.svg" alt="logo" class="drop-menu-cat" value="all"></button>';
    let div_group_drop_down = document.createElement("div");
    div_group_drop_down.setAttribute("class", "dropdown-menu");
    div_group_drop_down.innerHTML = '<a class="dropdown-item drop-cat" ><img src="../images/icon-14.svg" class="rounded dropdown-image-cat" alt="All"> All</a>';
    for(let i=0;i<info.length;i++)
    {
        let name= info[i].name.charAt(0).toUpperCase() + info[i].name.slice(1)
        div_group_drop_down.innerHTML += '<a class="dropdown-item drop-cat" ><img src="../images/'+ info[i].icon +'" class="rounded dropdown-image-cat" alt="'+ name +'"> '+ name +'</a>';
    }
    div_search_bar_cat.appendChild(div_group_drop_down);
    let div_search_bar_div = document.createElement("div");
    div_search_bar_div.setAttribute("class", "search-bar-div");
    div_search_bar_div.innerHTML = '<input type="text" class="fluid search-bar" placeholder="Want to learn something?" name="search">';
    let div_search_icon_div = document.createElement("div");
    div_search_icon_div.setAttribute("class", "search-icon-div");
    div_search_icon_div.innerHTML = '<button type="submit" class="btn btn-outline-light a-search-icon"><i class="fas fa-search search-icon"></i></a>';
    div_container2.appendChild(div_search_bar_cat);
    div_container2.appendChild(div_search_bar_div);
    div_container2.appendChild(div_search_icon_div);
    div_form.appendChild(div_container2);
    let hidden_input = document.createElement("input");
    hidden_input.setAttribute("type","hidden");
    hidden_input.setAttribute("class","category-choice");
    hidden_input.setAttribute("name","category");
    hidden_input.setAttribute("value","all");
    form_search.appendChild(div_form);
    form_search.appendChild(hidden_input);
    original_search_bar.appendChild(form_search);
    search_bar.innerHTML = original_search_bar.innerHTML;
    addDropEvent();
}


function addDropEvent() {
    let images_dropdown = document.querySelectorAll(".drop-cat");
    for (let i = 0; i < images_dropdown.length; i++) {
        images_dropdown[i].addEventListener("click", changeImageDropdown);
    }
}

function changeImageDropdown(e) {
    let src = e.srcElement.querySelector("img").getAttribute("src");
    let image = document.querySelector(".drop-menu-cat");
    let hidden_cat= document.querySelector(".category-choice");
    hidden_cat.setAttribute("value",e.srcElement.querySelector("img").getAttribute("alt"));
    image.setAttribute("src", src);
    image.setAttribute("value", e.srcElement.querySelector("img").getAttribute("alt"));
}