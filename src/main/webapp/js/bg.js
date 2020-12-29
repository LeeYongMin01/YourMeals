const body = document.querySelector("body");

const IMG_NUMBER = 2;


function paintIamge(imgNumber) {
    const image = new Image();
    image.src = `img/bg/${imgNumber + 1}.jpg`;
    image.classList.add("bgimage");
    body.prepend(image);
}
function genRandom() {
    const number = Math.floor(Math.random() * IMG_NUMBER);
    return number;
}
function init() {
    const randomNumber = genRandom();
    paintIamge(randomNumber);
}

init();