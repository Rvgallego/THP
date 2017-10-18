Les variables ---------------------------

var pays = "France";
var ville = "Paris";
var typeAnimal = "chien";

asi se escriben: ceciEstUneVariable

Les fonctions ---------------------------

function saluerEtudiants() {
    alert('Bonjour les étudiants !');
}
saluerEtudiants();

Combiner des fonctions et des variables ---------------------------

var monPrenom = "Emily";
function saluerUtilisateur() {
    alert("Bonjour " + monPrenom);
}
saluerUtilisateur();

---------------------------

Voici un autre exemple, qui met à jour la biographie hypothétique
d'un utilisateur tout aussi hypothétique. C'est le genre de JavaScript
compliqué que nous apprendrons à remplacer par du jQuery bien plus simple
dans la suite de ce cours. ex:

function actualiserBiographie() {
    var bio = document.getElementByID('biographie');
    bio.textContent = 'Nouvelle biographie';
}
actualiserBiographie();

function JavaScript---------------------------

function disBonjour() {
    alert('Dis bonjour !');
}
