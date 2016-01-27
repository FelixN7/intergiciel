


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