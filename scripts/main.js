let container = document.querySelector("#main");
console.log(container);
criar(100);

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}


async function criar(tempo) {
    for (let i = 0; i < 1000; i++) {
        let novo = document.createElement("div");
        novo.setAttribute("class", "spinner-border");
        container.appendChild(novo);
        await sleep(tempo);
    }
}