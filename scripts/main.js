
window.addEventListener("load",onLoad);
function onLoad(){

    let on_view_point = document.querySelector("#logo");
    let bouding = on_view_point.getBoundingClientRect();
    let main = document.querySelector("#main");
    let more_cat_button = document.querySelector("#expand-down");
    let expands_exists = true;
    testExpandButton();
    let categories_page = document.querySelector("#categories-page");
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip(); 
      });

    more_cat_button.addEventListener("click", function () {
        categories_page.scrollIntoView({
            block: "start",
            behavior: "smooth"
        });

    });
    window.onresize = testExpandButton;
    function testExpandButton(){
        if (window.innerHeight >= 600) {
            more_cat_button.style.display = "flex";
            expands_exists = true;
        } else {
            more_cat_button.style.display = "none";
            expands_exists = false;
        }

    }
    window.onscroll = function () {
        if (!expands_exists) return;
        let x_offset = window.pageXOffset;
        let y_offset = window.pageYOffset;
        let per = y_offset * 100.0 / bouding.bottom;
        per = 1 - (per / 100.0);
        more_cat_button.style.opacity = per;
        //https://gomakethings.com/how-to-test-if-an-element-is-in-the-viewport-with-vanilla-javascript/
        if (bouding.bottom >= y_offset && bouding.right >= x_offset && bouding.left <= (window.innerWidth || document.documentElement.clientWidth) + x_offset && bouding.top <= (window.innerHeight || document.documentElement.clientHeight) + y_offset) {
            more_cat_button.style.display = "flex";
        } else {
            more_cat_button.style.display = "none";
        }

    }

    window.onbeforeunload = function () {
        main.scrollIntoView();
    }
}


















let container = document.querySelector("#main");
//criar(500);

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function criar(tempo) {
    for (let i = 0; i < 1000; i++) {
        let novo = document.createElement("div");
        novo.setAttribute("class", "spinner-border");
        container.appendChild(novo);
        await sleep(tempo);
        let novo3 = document.createElement("div");
        novo3.setAttribute("class", "spinner-border text-primary");
        container.appendChild(novo3);
        await sleep(tempo);
        let novo4 = document.createElement("div");
        novo4.setAttribute("class", "spinner-border text-success");
        container.appendChild(novo4);
        await sleep(tempo);
        let novo5 = document.createElement("div");
        novo5.setAttribute("class", "spinner-border text-info");
        container.appendChild(novo5);
        await sleep(tempo);
        let novo6 = document.createElement("div");
        novo6.setAttribute("class", "spinner-border text-warning");
        container.appendChild(novo6);
        await sleep(tempo);
        let novo7 = document.createElement("div");
        novo7.setAttribute("class", "spinner-border text-danger");
        container.appendChild(novo7);
        await sleep(tempo);
        let novo8 = document.createElement("div");
        novo8.setAttribute("class", "spinner-border text-secondary");
        container.appendChild(novo8);
        await sleep(tempo);
    }
}