const box = document.getElementById('box');
const boxesBe = document.getElementById('boxes');

box.addEventListener('mouseover', function handleMouseOver() {
  box.style.color = 'red';
});


box.addEventListener('mouseout', function handleMouseOut() {
  box.style.color = 'black';
});

function changePic() {
  document.getElementById("myImage").src = "img/brockeneggdog.png";
}

function changeImg(){
  document.getElementById('myImage').src = "img/funnydog.png";
}

const boxs = document.getElementById('boxs');


boxs.addEventListener('mouseover', function handleMouseOver() {
  boxs.style.color = 'red';
});


boxs.addEventListener('mouseout', function handleMouseOut() {
  boxs.style.color = 'black';
});

function fontChange() {
  document.getElementById('boxes').style.fontFamily = 'comic-sans-ms';
}

boxesBe.addEventListener('mouseover', function handleMouseOver() {
  boxesBe.style.color = 'red';
});


boxesBe.addEventListener('mouseout', function handleMouseOut() {
  boxesBe.style.color = 'black';
});

function PlaySound(CWGMH) {
  var path = "img/"
  var snd = new Audio(path + CWGMH + ".mp3");
  snd.play();
}

function fadeout() {
  document.getElementById('fadeout').fadeout
}