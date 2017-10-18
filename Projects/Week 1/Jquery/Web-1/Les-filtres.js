Les filtres--------------------------------
https://codepen.io/eclairereese/pen/MyOzBM

$("p:first")

html:
<p>Premier texte</p> <!-- sélectionné -->
<p>Deuxième texte</p>
<p>Troisième texte</p>

--------------------------------
$("p:last") https://codepen.io/eclairereese/pen/VarVGb
--------------------------------
:eq(indice) sélectionne l'élément à un indice donné (c'est là que les tableaux deviennent bien pratiques !)

$("li:eq(1)") https://codepen.io/eclairereese/pen/bpYQxx

--------------------------------
:gt(indice) sélectionne le ou les élément(s) situé(s) à un indice supérieur au nombre spécifié.
jQuery

$("li:lt(2)") https://codepen.io/eclairereese/pen/XdzyxJ

:lt(indice) même concept mais pour les éléments à un indice plus petit que le nombre spécifié.

$("li:lt(2)") https://codepen.io/eclairereese/pen/pydQOB

--------------------------------
:not(sélecteur) : sélectionne les éléments qui ne sont pas... eh bien, le sélecteur !
 $("li:not('.legume')") https://codepen.io/eclairereese/pen/xVPQyV
