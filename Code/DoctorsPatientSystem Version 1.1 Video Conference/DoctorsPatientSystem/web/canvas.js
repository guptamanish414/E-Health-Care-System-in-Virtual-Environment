/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*function print_text(){
var canvas = document.getElementById("imageView");
var ctx = canvas.getContext("2d");

baseimage        = new Image();
baseimage.onload = function() {
    ctx.drawImage(baseimage,1,1);
    var dataURL = canvas.toDataURL("image/png");
    document.getElementById('canvasImg').src = dataURL;
}
baseimage.src    = 'c:\what.jpg';



var data = canvas.toDataURL('image/jpg'); //window.open(data);
document.getElementById('im1').src=data;
alert("done sucessfully!!!!");

}*/
function clear_text(){
//var data = canvas.toDataURL('image/png'); window.open(data);

  var s = document.getElementById ("imageView"); var w = s.width; s.width = 10; s.width = w;
alert("Executed sucessfully!!!!");

}

 

