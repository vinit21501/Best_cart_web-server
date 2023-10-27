const letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let interval = null;
let sidebar_visiblity = "visible";

function bestcart() {
  let iteration = 0;
  let original = document.getElementsByClassName("bestcart")[0].innerHTML
  let length = original.length;
  clearInterval(iteration);
  interval = setInterval(() => {
    document.getElementsByClassName("bestcart")[0].innerHTML = document.getElementsByClassName("bestcart")[0].innerHTML
    .split("").map((letter, index) => {
      if (index < iteration) {
        return original[index];
      }
      return letters[Math.floor(Math.random() * 26)]
    }).join("");
    if (iteration >= length) {
      clearInterval(interval);
    }
    iteration += 1/3;
  }, 60);
}

window.onload = test;
function test() {
  document.querySelector(".bestcart").onmouseover = bestcart;
}

function menu() {
  console.log("clicked");
  if (sidebar_visiblity == "hidden") {
    document.querySelector(".sidebar").style.visibility = sidebar_visiblity = 'visible';
    document.querySelector("body").style.margin = "80px 20px 100px 80px";
  }
  else {
    document.querySelector("body").style.margin = "80px 20px 100px 0px";
    document.querySelector(".sidebar").style.visibility = sidebar_visiblity = "hidden";
  }
}