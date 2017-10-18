Intégrez des événements------------------------

list .on()

.on('click', function() { … }
.on('scroll', function() { … }
.on('hover', function() { … }
.on('mouseover', function() { … }
.on('mouseenter', function() { … }
.on('mouse leave', function() { … }
.on('keydown', function() { … }
.on('keyup', function() { … }
.on('keypress', function() { … }
.on('focus', function() { … }
.on('blur', function() { … }
.on('resize', function() { … }
------------------------
paramètres

.click()
.scroll()
.hover()
.mouseover()
.mouseout()
.mouseenter()
.mouseleave()
.keydown()
.keyup()
.keypress()
.focus()
.blur()
.resize()

------------------------
ex:

$('p').on( 'click', function () {
    alert("Quelqu'un a cliqué sur un paragraphe!")
});

------------------------
En raccourci, ce serait:

$('p').click(function () {
    alert ("Quelqu'un a cliqué sur un paragraphe!")
});

L`objet "event"-----------------------
ex https://codepen.io/eclairereese/pen/GZOKer:

var $p = $('p');
$p.on('click', function(event) {
  var date = new Date(event.timeStamp);
	$p.text("You clicked on: " + date)
});

--------------------------------------
