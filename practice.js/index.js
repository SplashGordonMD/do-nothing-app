var moment = require('moment');
var tinycolor = require('tinycolor2');

console.log("Hello from JavaScript!");

var datetime = moment().startOf('day').fromNow();
console.log(datetime);

var color = tinycolor("red");
console.log(color);

console.log("Awesome!!!");


