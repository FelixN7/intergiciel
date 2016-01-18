/**
 * 
 */

function setModFor() {
	var x, text ;
	
	x = document.getElementById("for").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modFor") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setModDex() {
	var x, text ;
	
	x = document.getElementById("dex").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modDex") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setModCon() {
	var x, text ;
	
	x = document.getElementById("con").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modCon") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setModInt() {
	var x, text ;
	
	x = document.getElementById("int").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modInt") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setModSag() {
	var x, text ;
	
	x = document.getElementById("sag").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modSag") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setModCha() {
	var x, text ;
	
	x = document.getElementById("cha").value;
	if (isNaN(x) || x < 3 || x > 18) {
        text = "Input not valid";
    } else {
        text = Math.floor((x-10)/2) ;
    }
    l = document.getElementsByName("modCha") ;
    for (i=0; i<l.length; i++) {
        l.item(i).innerHTML = text;
    }
}

function setInit() {
	var x1, x2, text ;
	
	x1 = document.getElementById("dex") ;
	x2 = document.getElementById("miscInit");
	text = Math.floor((x1-10)/2) + x2 ;
	document.getElementById("init").innerHTML = text ;
}

function settotaux() {
	var xfor, xdex, xcon, xint, xsag, xcha, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14,
	x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, 
	text1, text2, text3, text4, text5, text6, text7, text8, text9, text10, text11, text12, text13, text14,
	text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, 
	text27, text28, text29, text30, text31, text32, text33, text34, text35, text36, text37 ;
	
	//On recupere d'abord les valeurs des caracteristiques
	xfor = Number(document.getElementById("for").value) ;
	xdex = Number(document.getElementById("dex").value) ;
	xcon = Number(document.getElementById("con").value) ;
	xint = Number(document.getElementById("int").value) ;
	xsag = Number(document.getElementById("sag").value) ;
	xcha = Number(document.getElementById("cha").value) ;
	
	x1 = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((xdex-10)/2) + x1).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
	
	x2 = Number(document.getElementById("artdelamagieRank").value) ;
	text2 = (Math.floor((xint-10)/2) + x2).valueOf() ;
	document.getElementById("totalArtDeLaMagie").innerHTML = text2 ;
	
	x3 = Number(document.getElementById("artisanatRank").value) ;
	text3 = (Math.floor((xint-10)/2) + x3).valueOf() ;
	document.getElementById("totalArtisanat").innerHTML = text3 ;
	
	x4 = Number(document.getElementById("bluffRank").value) ;
	text4 = (Math.floor((xcha-10)/2) + x4).valueOf() ;
	document.getElementById("totalBluff").innerHTML = text4 ;
	
	x5 = Number(document.getElementById("concentrationRank").value) ;
	text5 = (Math.floor((xcon-10)/2) + x5).valueOf() ;
	document.getElementById("totalConcentration").innerHTML = text5 ;
	
	x6 = Number(document.getElementById("connaissanceMystereRank").value) ;
	text6 = (Math.floor((xint-10)/2) + x6).valueOf() ;
	document.getElementById("totalConnaissance(Mysteres)").innerHTML = text6 ;
	
	x7 = Number(document.getElementById("connaissanceNatureRank").value) ;
	text7 = (Math.floor((xint-10)/2) + x7).valueOf() ;
	document.getElementById("totalConnaissance(Nature)").innerHTML = text7 ;
	
	x8 = Number(document.getElementById("connaissanceReligionRank").value) ;
	text8 = (Math.floor((xint-10)/2) + x8).valueOf() ;
	document.getElementById("totalConnaissance(Religion)").innerHTML = text8 ;
	
	x9 = Number(document.getElementById("contrefaconRank").value) ;
	text9 = (Math.floor((xint-10)/2) + x9).valueOf() ;
	document.getElementById("totalContrefacon").innerHTML = text9 ;
	
	x10 = Number(document.getElementById("crochetageRank").value) ;
	text10 = (Math.floor((xdex-10)/2) + x10).valueOf() ;
	document.getElementById("totalCrochetage").innerHTML = text10 ;
	
	x11 = Number(document.getElementById("decryptageRank").value) ;
	text11 = (Math.floor((xint-10)/2) + x11).valueOf() ;
	document.getElementById("totalDecryptage").innerHTML = text11 ;
	
	x12 = Number(document.getElementById("deguisementRank").value) ;
	text12 = (Math.floor((xcha-10)/2) + x12).valueOf() ;
	document.getElementById("totalDeguisement").innerHTML = text12 ;
	
	x13 = Number(document.getElementById("deplacementsilencieuxRank").value) ;
	text13 = (Math.floor((xdex-10)/2) + x13).valueOf() ;
	document.getElementById("totalDeplacementSilencieux").innerHTML = text13 ;
	
	x14 = Number(document.getElementById("desamorcageRank").value) ;
	text14 = (Math.floor((xint-10)/2) + x14).valueOf() ;
	document.getElementById("totalDesamorcage").innerHTML = text14 ;
	
	x15 = Number(document.getElementById("detectionRank").value) ;
	text15 = (Math.floor((xsag-10)/2) + x15).valueOf() ;
	document.getElementById("totalDetection").innerHTML = text15 ;
	
	x16 = Number(document.getElementById("diplomatieRank").value) ;
	text16 = (Math.floor((xcha-10)/2) + x16).valueOf() ;
	document.getElementById("totalDiplomatie").innerHTML = text16 ;
	
	x17 = Number(document.getElementById("discretionRank").value) ;
	text17 = (Math.floor((xdex-10)/2) + x17).valueOf() ;
	document.getElementById("totalDiscretion").innerHTML = text17 ;
	
	x18 = Number(document.getElementById("dressageRank").value) ;
	text18 = (Math.floor((xcha-10)/2) + x18).valueOf() ;
	document.getElementById("totalDressage").innerHTML = text18 ;
	
	x19 = Number(document.getElementById("equilibreRank").value) ;
	text19 = (Math.floor((xdex-10)/2) + x19).valueOf() ;
	document.getElementById("totalEquilibre").innerHTML = text19 ;
	
	x20 = Number(document.getElementById("equitationRank").value) ;
	text20 = (Math.floor((xdex-10)/2) + x20).valueOf() ;
	document.getElementById("totalEquitation").innerHTML = text20 ;
	
	x21 = Number(document.getElementById("escaladeRank").value) ;
	text21 = (Math.floor((xfor-10)/2) + x21).valueOf() ;
	document.getElementById("totalEscalade").innerHTML = text21 ;
	
	x22 = Number(document.getElementById("escamotageRank").value) ;
	text22 = (Math.floor((xdex-10)/2) + x22).valueOf() ;
	document.getElementById("totalEscamotage").innerHTML = text22 ;
	
	x23 = Number(document.getElementById("estimationRank").value) ;
	text23 = (Math.floor((xint-10)/2) + x20).valueOf() ;
	document.getElementById("totalEstimation").innerHTML = text23 ;
	
	x24 = Number(document.getElementById("evasionRank").value) ;
	text24 = (Math.floor((xdex-10)/2) + x24).valueOf() ;
	document.getElementById("totalEvasion").innerHTML = text24 ;
	
	x25 = Number(document.getElementById("fouilleRank").value) ;
	text25 = (Math.floor((xint-10)/2) + x25).valueOf() ;
	document.getElementById("totalFouille").innerHTML = text25 ;
	
	x26 = Number(document.getElementById("intimidationRank").value) ;
	text26 = (Math.floor((xcha-10)/2) + x26).valueOf() ;
	document.getElementById("totalIntimidation").innerHTML = text26 ;
	
	x27 = Number(document.getElementById("maitrisedescordesRank").value) ;
	text27 = (Math.floor((xdex-10)/2) + x27).valueOf() ;
	document.getElementById("totalMaitriseDesCordes").innerHTML = text27 ;
	
	x28 = Number(document.getElementById("natationRank").value) ;
	text28 = (Math.floor((xfor-10)/2) + x28).valueOf() ;
	document.getElementById("totalNatation").innerHTML = text28 ;
	
	x29 = Number(document.getElementById("perceptionauditiveRank").value) ;
	text29 = (Math.floor((xsag-10)/2) + x29).valueOf() ;
	document.getElementById("totalPerceptionAuditive").innerHTML = text29 ;
	
	x30 = Number(document.getElementById("premiersecoursRank").value) ;
	text30 = (Math.floor((xint-10)/2) + x30).valueOf() ;
	document.getElementById("totalPremierSecours").innerHTML = text30 ;
	
	x31 = Number(document.getElementById("professionRank").value) ;
	text31 = (Math.floor((xint-10)/2) + x31).valueOf() ;
	document.getElementById("totalProfession").innerHTML = text31 ;
	
	x32 = Number(document.getElementById("psychologieRank").value) ;
	text32 = (Math.floor((xint-10)/2) + x32).valueOf() ;
	document.getElementById("totalPsychologie").innerHTML = text32 ;
	
	x33 = Number(document.getElementById("renseigementsRank").value) ;
	text33 = (Math.floor((xcha-10)/2) + x33).valueOf() ;
	document.getElementById("totalRenseignements").innerHTML = text33 ;
	
	x34 = Number(document.getElementById("representationRank").value) ;
	text34 = (Math.floor((xcha-10)/2) + x34).valueOf() ;
	document.getElementById("totalRepresentation").innerHTML = text34 ;
	
	x35 = Number(document.getElementById("sautRank").value) ;
	text35 = (Math.floor((xfor-10)/2) + x35).valueOf() ;
	document.getElementById("totalSaut").innerHTML = text35 ;
	
	x36 = Number(document.getElementById("survieRank").value) ;
	text36 = (Math.floor((xsag-10)/2) + x36).valueOf() ;
	document.getElementById("totalSurvie").innerHTML = text36 ;
	
	x37 = Number(document.getElementById("utilisationobjetsmagiquesRank").value) ;
	text37 = (Math.floor((xcha-10)/2) + x37).valueOf() ;
	document.getElementById("totalUtilisationObjetsMagiques").innerHTML = text37 ;
}

function setSave() {
	var text, vol, ref, vig ;
	
	text = String(document.getElementById("nomClasse").value) ;
	if (text == "guerrier") {
		vol = 0 ;
		vig = 2 ;
		ref = 0 ;
		document.getElementById("vig").inngerHTML = vig ;
		document.getElementById("vol").innerHTML = vol ;
		document.getElementById("ref").innerHTML = ref ;
	}
	else {
		document.getElementById("vig").inngerHTML = 0 ;
	}
}

/**
function setHP() {
	var x, cl, lvl, text ;
	
	lvl = document.getElementById("level").value;
	x = document.getElementById("modCon").value;
	cl = document.getElementById("nomClasse").value;
	Classe = new Classe(cl) ;
	text = (x + cl.getDvie().lancer()) * lvl ;
	document.getElementById("vie")innerHTML = text ;
	
}*/