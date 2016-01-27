function getDetails(divPerso) {

	$.ajax({
		url: "/JDR/ServFiche",
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