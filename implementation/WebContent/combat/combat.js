/**
 * 
 */

function rollTheDice() {
	var x = Math.floor(Math.random() * 20) + 1 ;
	$("#init").val(x) ;
}

/**
function addJoueur() {
	
	var joueur = document.getElementById("joueur").value;
	var text = '<div class="combattant joueur">' + joueur + '</div>' ;
	var test = document.getElementById("test").value ;
	document.getElementById("test").innerHTML = text ;
}
*/

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