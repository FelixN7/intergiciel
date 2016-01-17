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
	var x1, x1bis, x2, x2bis, x3, x3bis, x4, x4bis, x5, x5bis, x6, x6bis, text1, text2, text3, text4, text5, text6 ;
	
	x1 = Number(document.getElementById("dex").value) ;
	x1bis = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((x1-10)/2) + x1bis).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
	
	x1 = Number(document.getElementById("dex").value) ;
	x1bis = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((x1-10)/2) + x1bis).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
	
	x1 = Number(document.getElementById("dex").value) ;
	x1bis = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((x1-10)/2) + x1bis).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
	
	x1 = Number(document.getElementById("dex").value) ;
	x1bis = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((x1-10)/2) + x1bis).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
	
	x1 = Number(document.getElementById("dex").value) ;
	x1bis = Number(document.getElementById("acrobatiesRank").value) ;
	text1 = (Math.floor((x1-10)/2) + x1bis).valueOf() ;
	document.getElementById("totalAcrobaties").innerHTML = text1 ;
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