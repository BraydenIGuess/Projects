//Array of 8 different images
const images = [  "1.jpg",  "2.jpg",  "3.jpg",  "4.jpg",  "5.jpg",  "6.jpg",  "7.jpg",  "8.jpg"];

//Array to keep track of used images
usedImages = [];

//Function to check if image is already on grid
function checkImage(img) {
  return usedImages.includes(img);
}

//Function to add image to grid
function addImage(img) {
  //Check if image is already on grid
  while (checkImage(img)) {
    //If yes, reroll image
    img = images[Math.floor(Math.random() * images.length)];
  }
  //Add image to used images
  usedImages.push(img);
  //Add image to grid
  document.getElementById("grid").innerHTML += `<img src="${img}" />`;
}

//Adding two of each image to the grid
for (let i = 0; i < images.length; i++) {
  addImage(images[i]);
  addImage(images[i]);
}

