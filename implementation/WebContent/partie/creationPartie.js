


/** Fonction invitePlayer :
*
* Invite le joueur passe en parametre a participer a la partie **/


function invitePlayer(nickName) {

	
	$("#requestedPlayers").append(
			
	"<div id='requested" + nickName.val() + "'>" + 
	
	nickName.val() + "<br></div>"		
	
	);
	
	
	//	$.ajax({
//		
//	
//	
//	
//	
//	
//	});	
}
