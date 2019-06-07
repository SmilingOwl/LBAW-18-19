window.addEventListener("load",onLoadAddQuestion);

function onLoadAddQuestion() {
    let cats = document.querySelectorAll(".div-cat");
    let inputType = document.querySelector(".hidden-catType");
    cats[0].setAttribute("style","border:3px; border-style: solid; border-radius:10px;");
    for(let i=0;i<cats.length;i++)
    {
        cats[i].addEventListener("click",function() {
            let type = cats[i].querySelector("span").getAttribute("data-type");
            for(let j=0;j<cats.length;j++)
            {
                cats[j].setAttribute("style","");
            }
            cats[i].setAttribute("style","border:3px; border-style: solid; border-radius:10px;");
            inputType.setAttribute("value",type);
        });
    }
    $("#imgInp").change(function() {
        readURL(this);
    });
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#image-preview').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
  