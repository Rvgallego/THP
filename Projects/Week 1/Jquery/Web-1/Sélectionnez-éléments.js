Sélectionnez des éléments---------------------------

Sélection par relation
Les descendants $("ancêtre descendant") ex:
https://codepen.io/eclairereese/pen/EKbORj
jQuery:
$("ol li")

html:
<ol>
    <li>Premier élément</li> <!-- sélectionné -->
    <li>Second élément</li> <!-- sélectionné -->
    <ul>
        <li>Élément sans ordre</li> <!-- sélectionné -->
    </ul>
</ol>

---------------------------

Parents et enfants $("parent > enfant") ex:
https://codepen.io/eclairereese/pen/QNOJxJ
jQuery:
$("ol > li")

html:
<ol>
    <li>Premier élément</li> <!-- sélectionné -->
    <li>Second élément</li> <!-- sélectionné -->
    <ul>
        <li>Élément sans ordre</li>
    </ul>
</ol>

---------------------------

Les jumeaux $(élément ~ frères) ex:
https://codepen.io/eclairereese/pen/zqPMLx
https://codepen.io/eclairereese/pen/WwXYKa

jQuery:
$("li#premier ~ li")

html:
<ul>
    <li id="premier">Un</li>
    <li id="deuxième">Deux</li> <!-- sélectionné -->
    <li id="troisième">Trois</li> <!-- sélectionné -->
</ul>

---------------------------

Les jumeaux $(élément ~ frères) ex:
https://codepen.io/eclairereese/pen/zqPMLx
https://codepen.io/eclairereese/pen/WwXYKa

jQuery:
$("li#premier + li")

html:
<ul>
    <li id="premier">Un</li>
    <li id="deuxième">Deux</li> <!-- sélectionné -->
    <li id="troisième">Trois</li>
</ul>
