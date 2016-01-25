


/** Fonction invitePlayer :
*
* Ajoute une fiche d'un joueur passe en parametre aux participants de la partie 
* @param nomPerso, nomJoueur
*/

function invitePlayer(nomPerso, nomJoueur) {
	
	$('#selectedPlayers').append( 
		"<div id='participant" + nomJoueur + "'> <div class='nomPersonnage'>" + nomPerso + "</div>(<div class='nomParticipant'>" + nomJoueur + "</div>)<br></div>"	
	);
	
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
