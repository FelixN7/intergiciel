/**
 * 
 */

function rollTheDice() {
	var x ;
	
	x = Math.floor(Math.random() * 20) + 1 ;
	document.getElementById("init").innerHTML = x ;
}

function addJoueur() {
	
	var joueur = document.getElementById("joueur").value;
	var text = '<div class="combattant joueur">' + joueur + '</div>' ;
	var test = document.getElementById("test").value ;
	document.getElementById("test").innerHTML = text ;
	
}