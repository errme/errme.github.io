var canvas = document.getElementById("canvasElem");
var context = canvas.getContext('2d');
canvas.width = 300;
canvas.height = 200;
canvas.style.border = '2px solid blue';
context.strokeRect(100, 50, 70, 100);
context.fillRect(100, 50, 70, 100);