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