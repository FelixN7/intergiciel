/**
 * 
 */

function rollTheDice() {
	var x = Math.floor(Math.random() * 20) + 1 ;
	$("#initJoueur").val(x) ;
	$("#initOpposant").val(x) ;
	$("#dice").val(x) ;
}

function addJoueur(nomPerso, nomJoueur) {
	
	$('#selectedPlayers').append( 
		"<li id='" + nomJoueur + "' class='nomJoueur'> " + nomJoueur + "<div id='" + nomPerso + "' class='nomPersonnage'> ( " + nomPerso + " ) </div></li>"	
	);
	
	var nbjoueurs = Number($('#nbJoueurs').val()) +1;
	$('#nbJoueurs').val(nbjoueurs);
	
	$('#joueursForm').append(
		"<div id='joueur" + nbjoueurs + "'>" +
				"<input type='hidden' name='nomPerso" + nbjoueurs +"' value='" + nomPerso + "'/>" +
				"<input type='hidden' name='nomJoueur" + nbjoueurs +"' value='" + nomJoueur + "'/>" +		
		"</div>"		
	);
}

$(document).ready(function(){
    $("#btn1").click(function(){
    	var joueur = document.getElementById("joueur").value ;
    	var text = '<div class="combattant joueur">' + joueur + '</div>' + '     ' ;
        $("participant").append(text);
    });
    $("#btn2").click(function(){
    	var joueur = document.getElementById("joueur").value ;
    	var text = '<div class="combattant opposant">' + joueur + '</div>' + '     ' ;
        $("participant").append(text);
    });
});

function searchPlayer(nickName) {
	
	$.ajax({
		url: '/JDR/ServPartie',
		method: 'GET',
		data: {
			pseudo: nickName.val(),
			op: 'invite'
		},
		dataType: 'html',
		success: function(htmlret) {
			$("#searchResult").html(htmlret);
		}
	});	
}

function selectOpponent() {
	$("#hidden").css("display","inline") ;
}

function validate() {
	$("#hidden").css("display","inline") ;
}