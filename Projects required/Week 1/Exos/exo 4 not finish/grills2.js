var botonjs = document.getElementById('buttonjs');
var generator = function () {
var x = 1;
var a=parseInt(prompt("enter the no. of rows"));
var b=parseInt(prompt("enter the no. of colums"));
document.write("<table border = 1>");
for(i = 1; i <= a; i++)
{
  document.write("<tr>");
  for(j = 1; j <= b; j++)
  {
    document.write("<td>" + x + "</td>");
    x++;
  }
  document.write("</tr>");
}
document.write("</table>");
}
botonjs.style.display="block";

window.onload = generator ();

botonjs.onclick = function() {
generator();
}
