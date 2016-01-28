


/** Fonction invitePlayer :
*
* Ajoute une fiche d'un joueur passe en parametre aux participants de la partie 
* @param nomPerso, nomJoueur
*/

function invitePlayer(nomPerso, nomJoueur) {
	
	$('#selectedPlayers').append( 
		"<li id='" + nomJoueur + "' class='nomJoueur'> " + nomJoueur + "<div id='" + nomPerso + "' class='nomPersonnage'> ( " + nomPerso + " ) </div></li>"	
	);
	
	var nbjoueurs = Number($('#nbJoueurs').val()) +1;
	$('#nbJoueurs').val(nbjoueurs);
	
	if (nbjoueurs==1) {
		validateSubmit();
	}
	
	$('#joueursForm').append(
		"<div id='joueur" + nbjoueurs + "'>" +
				"<input type='hidden' name='nomPerso" + nbjoueurs +"' value='" + nomPerso + "'/>" +
				"<input type='hidden' name='nomJoueur" + nbjoueurs +"' value='" + nomJoueur + "'/>" +		
		"</div>"		
	);
		
	$("#searchResult").html("");
}

/**
 * Recherche un joueur et renvoie la liste des noms de personnages de ses fiches en cas de succes
 * @param nickName
 */

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


function validateSubmit() {
	
	if ($("#nomPartie").val().length!=0 & $("#nbJoueurs").val()!=0) {
		$("#createGameBtn").removeAttr("disabled");
	} else {
		$("#createGameBtn").attr("disabled","disabled");
	}
}