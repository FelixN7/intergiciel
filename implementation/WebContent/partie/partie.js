function getDetails(divPerso) {

	$.ajax({
		url: "/JDR/ServPartie",
		method: "GET",
		dataType: "html",
		data: {
			op: "detailsJoueur",
			pseudo: divPerso.attr("data-joueur"),
			personnage: divPerso.attr("data-perso")
		},
		success: function(htmlCode) {
			$("#detailsFiche").html(htmlCode);
		}
	});
}

function createCombat(pseudo,nomPartie) {
	
	$.ajax({
		url: "/JDR/ServPartie",
		mathod: "GET",
		dataType: "html",
		data: {
			op:"creationCombat",
			pseudomj: pseudo,
			nomPartie : nomPartie
		},
		success: function(htmlCode) {
			$("#actionContent").html(htmlCode);
		}
	});
}