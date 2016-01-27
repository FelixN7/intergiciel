<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%if(request.getSession().getAttribute("typeUtil") == null){
	response.sendRedirect("/JDR/");
}else{
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Création de Fiche</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="/JDR/fiche/CreationFiche.css" />
<link rel="stylesheet" type="text/css" href="/JDR/others/general.css">

</head>
<body onload="setAttaque(), setSave(), setHP(), setModFor(), setModDex(), setModCon(), setModInt(), setModSag(), setModCha(), setInit(), settotaux(), setCA()">
<%@ include file="/others/bandeau.html" %>
<div class="pageContent">
<%if(request.getAttribute("erreur")!=null){%>
	<h2>Vous avez déjà créé un personnage avec ce nom</h2>
<%} %>

<form action="/JDR/ServFiche" method="post">

<table border="0" cellpadding="0" cellspacing="0" class="firstpage">
  <!--DWLayoutTable-->
  <tr> 
    <td height="18" colspan="10"><input type="text" size="10" name="nomPerso" id="nomPerso"></td>
    <td height="18" colspan="10"><input type="text" value="<%= request.getSession().getAttribute("utilisateur") %>" size="10" name="nomJoueur" id="nomJoueur" readonly></td>
    <td colspan="12" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="8" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr> 
    <td height="16" colspan="10" valign="top" class="desc1">CHARACTER NAME</td>
    <td colspan="12" valign="top" class="desc1">PLAYER</td>
    <td colspan="8" class="desc1">CAMPAIGN</td>
  </tr>
  <tr> 
    <td height="18" colspan="10"> <input type="number" value="1" size="4" id="level" name="level" readonly> <select name="nomClasse" id="nomClasse" onchange="setSave(), setAttaque(), setHP()">
    	<option value ="guerrier">guerrier
    	<option value ="roublard">roublard
    	</select>
    	</td>
    <td colspan="7" valign="top"> <select id="nomRace" name="nomRace">
    	<option value="elfe">elfe
    	<option value="humain">humain
    	</select>
    </td>
    <td colspan="5" valign="top"> <select id="alignement" name="alignement">
    	<option value="Loyal Bon">loyal bon
    	<option value="Chaotique Bon">chaotique bon
    	<option value="Neutre Bon">neutre bon
    	<option value="Loyal Neutre">loyal neutre
    	<option value="Neutre Strict">neutre strict
    	<option value="Chaotique Neutre">chaotique neutre
    	<option value="Loyal Mauvais">loyal mauvais
    	<option value="Neutre Mauvais">neutre mauvais
    	<option value="Chaotique Mauvais">chaotique mauvais
    	</select>
    	</td>
    <td colspan="8" valign="top" class="boxed"></td>
  </tr>
  <tr> 
    <td height="16" colspan="10" valign="top" class="desc1">CLASS AND LEVEL</td>
    <td colspan="7" valign="top" class="desc1">RACE</td>
    <td colspan="5" valign="top" class="desc1">ALIGNMENT</td>
    <td colspan="8" class="desc1">EXPERIENCE POINTS</td>
  </tr>
  <tr> 
    <td height="18" colspan="30" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr> 
    <td width="42" height="18" valign="middle" class="desc2"> <p>ABILITY NAME</p></td>
    <td colspan="2" class="desc2">ABILITY SCORE</td>
    <td colspan="3" class="desc2">ABILITY MODIFIER</td>
    <td colspan="2" class="desc2"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="3" class="desc2">TOTAL</td>
    <td colspan="11" class="desc2">WOUNDS/CURRENT HP</td>
    <td colspan="5" class="desc2">NONLETHAL DAMAGE</td>
    <td colspan="3" class="desc2">SPEED</td>
  </tr>
  <tr> 
    <td height="39" valign="middle" class="blackback"> <p>STR<br>
        <span class="blackback_small">strength</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="for" name="for" value=3 onchange="setModFor(), settotaux(), setSave(), setAttaque()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name="modFor"></p></td>
    <td colspan="2" valign="top" class="blackback"><P>HP<br>
        <span class="blackback_small">hit points</span></p></td>
    <td colspan="3" valign="top" class="boxed"><p id="vie"></p></td>
    <td colspan="11" valign="top" class="boxed"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="5" valign="top" class="boxed"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="3" valign="top" class="boxed">40ft.</td>
  </tr>
  <tr> 
    <td height="39" valign="middle" class="blackback"> <p>DEX<br>
        <span class="blackback_small">dexterity</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" name="dex" id="dex" value=3 onchange="setModDex(), settotaux(), setSave(), setAttaque(), setCA()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name="modDex"></p></td>
    <td colspan="2" valign="top" class="blackback"><P>AC<br>
        <span class="blackback_small">armor class</span></p></td>
    <td colspan="3" valign="top" class="boxed"> <p id="CA"></p>	</td>
    <td width="10" class="desc3">=</td>
    <td colspan="2" valign="top" class="boxed">10</td>
    <td width="8" class="desc3">+</td>
    <td width="39" valign="top" class="boxed">0</td>
    <td width="9" class="desc3">+</td>
    <td width="39" valign="top" class="boxed">0</td>
    <td width="7" class="desc3">+</td>
    <td width="43" valign="top" class="boxed"><p name="modDex"></p></td>
    <td width="7" valign="top" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed">0</td>
    <td width="7" class="desc3">+</td>
    <td width="43" valign="top" class="boxed">0</td>
    <td width="7" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed">0</td>
    <td width="7" class="desc3">+</td>
    <td width="43" valign="top" class="boxed">0</td>
  </tr>
  <tr> 
    <td rowspan="2" valign="middle" class="blackback"> <p>CON<br>
        <span class="blackback_small">constitution</span></p></td>
    <td colspan="2" rowspan="2" valign="middle" class="boxed"><input type="number" size="4" name="con" id="con" value=3 onchange="setModCon(), settotaux(), setSave(), setAttaque(), setHP()"></td>
    <td colspan="3" rowspan="2" valign="middle" class="boxed"><p name="modCon"></p></td>
    <td width="31" height="18"></td>
    <td width="8"></td>
    <td colspan="3" rowspan="2" valign="top" class="desc4">TOTAL</td>
    <td></td>
    <td colspan="2" rowspan="2" class="desc4">BASE</td>
    <td></td>
    <td rowspan="2" class="desc4">ARMOR BONUS</td>
    <td></td>
    <td rowspan="2" class="desc4">SHIELD BONUS</td>
    <td></td>
    <td valign="top" class="desc4">DEX MODIFIER</td>
    <td></td>
    <td colspan="2" valign="top" class="desc4">SIZE MODIFIER</td>
    <td></td>
    <td valign="top" class="desc4">NATURAL ARMOR</td>
    <td></td>
    <td colspan="2" valign="top" class="desc4">DEFLECT MODIFIER</td>
    <td></td>
    <td valign="top" class="desc4">MISC MODIFIER</td>
  </tr>
  <tr> 
    <td height="21"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="7" valign="top" class="blackback">DAMAGE REDUCTION</td>
    <td colspan="4" valign="top" class="boxed"></td>
  </tr>
  <tr> 
    <td height="42" valign="middle" class="blackback"> <p>INT<br>
        <span class="blackback_small">intelligence</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" name="int" id="int" value=3 onchange="setModInt(), settotaux(), setSave(), setAttaque()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name="modInt"></p></td>
    <td colspan="3" valign="top" class="blackback"><P>TOUCH<br>
        <span class="blackback_small">armor class</span></p></td>
    <td colspan="3" valign="top" class="boxed"><p id="CA"></p></td>
    <td colspan="5" valign="top" class="blackback"><P>FLAT-FOOTED<br>
        <span class="blackback_small">armor class</span></p></td>
    <td valign="top" class="boxed">10</td>
    <td></td>
    <td colspan="11" rowspan="20" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr class="blackback"> 
          <td height="18" colspan="10" valign="top">SKILLS</td>
        </tr>
        <tr> 
          <td width="9" height="18" valign="top" class="blackback"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td width="74" valign="top" class="descboxed">SKILL NAME</td>
          <td width="25" valign="top" class="descboxed">KEY ABILITY</td>
          <td colspan="2" valign="top" class="descboxed">SKILL MODIFIER</td>
          <td colspan="2" valign="top" class="descboxed">ABILITY MODIFIER</td>
          <td width="25" valign="top" class="descboxed">RANKS</td>
          <td colspan="2" valign="top" class="descboxed">MISC MODIFIER</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Acrobaties</td>
          <td valign="top" class="skillability">Dex</td>
          <td width="25" valign="top" class="skill2"><p id="totalAcrobaties"></p></td>
          <td width="7" class="desc3">=</td>
          <td width="25" valign="top" class="skill"><p name	="modDex"></p></td>
          <td width="7" class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="acrobatiesRank" id="acrobatiesRank" value=0 onchange="settotaux()"></td>
          <td width="7" class="desc3">+</td>
          <td width="25" valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Art de la magie</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalArtDeLaMagie"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="artdelamagieRank" id="artdelamagieRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Artisanat</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id	="totalArtisanat"></p> </td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="artisanatRank" id="artisanatRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Bluff</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalBluff"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="bluffRank" id="bluffRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Concentration</td>
          <td valign="top" class="skillability">Con</td>
          <td valign="top" class="skill2"><p id ="totalConcentration"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCon"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="concentrationRank" id="concentrationRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Connaissance(Mystères)</td>
          <td valign="top" class="skillability">int</td>
          <td valign="top" class="skill2"><p id ="totalConnaissance(Mysteres)"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="connaissanceMystereRank" id="connaissanceMystereRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Connaissance(Nature)</td>
          <td valign="top" class="skillability">int</td>
          <td valign="top" class="skill2"><p id ="totalConnaissance(Nature)"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="connaissanceNatureRank" id="connaissanceNatureRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Connaissance(Religion)</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalConnaissance(Religion)"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="connaissanceReligionRank" id="connaissanceReligionRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Contrefaçon</td>
          <td valign="top" class="skillability">int</td>
          <td valign="top" class="skill2"><p id ="totalContrefacon"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="contrefaconRank" id="contrefaconRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Crochetage</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalCrochetage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="crochetageRank" id="crochetageRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Décryptage</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalDecryptage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="decryptageRank" id="decryptageRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Déguisement</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalDeguisement"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="deguisementRank" id="deguisementRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Déplacement silencieux</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalDeplacementSilencieux"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="deplacementsilencieuxRank" id="deplacementsilencieuxRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Désamorçage/sabotage</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalDesamorcage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="desamorcageRank" id="desamorcageRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Détection</td>
          <td valign="top" class="skillability">Sag</td>
		  <td valign="top" class="skill2"><p id ="totalDetection"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modSag"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="detectionRank" id="detectionRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Diplomatie</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalDiplomatie"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4"  name="diplomatieRank" id="diplomatieRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Discrétion</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalDiscretion"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="discretionRank" id="discretionRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Dressage</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalDressage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="dressageRank" id="dressageRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Equilibre</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalEquilibre"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="equilibreRank" id="equilibreRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Equitation</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalEquitation"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="equitationRank" id="equitationRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Escalade</td>
          <td valign="top" class="skillability">For</td>
          <td valign="top" class="skill2"><p id ="totalEscalade"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modFor"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="escaladeRank" id="escaladeRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Escamotage</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalEscamotage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="escamotageRank" id="escamotageRank"value=0  onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Estimation</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalEstimation"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="estimationRank" id="estimationRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Evasion</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalEvasion"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="evasionRank" id="evasionRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Fouille</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalFouille"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="fouilleRank" id="fouilleRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Intimidation</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalIntimidation"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="intimidationRank" id="intimidationRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Maitrise des cordes</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalMaitriseDesCordes"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="maitrisedescordesRank" id="maitrisedescordesRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Natation</td>
          <td valign="top" class="skillability">for</td>
          <td valign="top" class="skill2"><p id ="totalNatation"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modFor"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" name="natationRank" id="natationRank" value=0 onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="42" valign="middle" class="blackback"> <p>WIS<br>
        <span class="blackback_small">wisdom</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" name="sag" id="sag" value=3 onchange="setModSag(), settotaux(), setSave(), setAttaque()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name	="modSag"></p></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td width="10">&nbsp;</td>
    <td width="16">&nbsp;</td>
    <td width="13"></td>
    <td></td>
    <td colspan="2" valign="top" class="desc2">TOTAL</td>
    <td></td>
    <td valign="top" class="desc2">DEX MODIFIER</td>
    <td></td>
    <td valign="top" class="desc2">MISC MODIFIER</td>
    <td></td>
  </tr>
  <tr> 
    <td height="42" valign="middle" class="blackback"> <p>CHA<br>
        <span class="blackback_small">charisma</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" name="cha" id="cha" value=3 onchange="setModCha(), settotaux(), setSave(), setAttaque()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name	="modCha"></p></td>
    <td colspan="6" valign="top" class="blackback"><P>INITIATIVE<br>
        <span class="blackback_small">modifier</span></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="init"></p></td>
    <td valign="top" class="desc3">=</td>
    <td valign="top" class="boxed"><p name	="modDex"></p></td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed"></td>
    <td></td>
  </tr>
  <tr> 
    <td height="42" colspan="2" valign="top" class="desc2">SAVING THROWS</td>
    <td colspan="2" valign="top" class="desc2">TOTAL</td>
    <td width="9">&nbsp;</td>
    <td colspan="2" valign="top" class="desc2">BASE SAVE</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top" class="desc2">ABILITY MODIFIER</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top" class="desc2">MAGIC MODIFIER</td>
    <td>&nbsp;</td>
    <td valign="top" class="desc2">MISC MODIFIER</td>
    <td>&nbsp;</td>
    <td valign="top" class="desc2">TEMP. MODIFIER</td>
    <td></td>
  </tr>
  <tr> 
    <td height="42" colspan="2" valign="top" class="blackback"><P>VIG<br>
        <span class="blackback_small">constitution</span></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="modVig"></p></td>
    <td valign="top" class="desc3">=</td>
    <td colspan="2" valign="top" class="boxed"><p id ="vig"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="3" valign="top" class="boxed"><p name	="modCon"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed"></td>
    <td></td>
  </tr>
  <tr> 
    <td height="42" colspan="2" valign="top" class="blackback"><P>REF<br>
        <span class="blackback_small">dexterity</span></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="modRef"></p></td>
    <td valign="top" class="desc3">=</td>
    <td colspan="2" valign="top" class="boxed"><p id ="ref"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="3" valign="top" class="boxed"><p name	="modDex"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed"></td>
    <td></td>
  </tr>
  <tr> 
    <td height="42" colspan="2" valign="top" class="blackback"><P>VOL<br>
        <span class="blackback_small">wisdom</span></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="modVol"></p></td>
    <td valign="top" class="desc3">=</td>
    <td colspan="2" valign="top" class="boxed"><p id ="vol"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="3" valign="top" class="boxed"><p name	="modSag"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed">2</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed"></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19"></td>
    <td width="22"></td>
    <td width="17"></td>
    <td width="22"></td>
    <td></td>
    <td width="8"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td width="26"></td>
    <td width="13"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="28" colspan="5" valign="top" class="blackback">BASE ATTACK BONUS</td>
    <td colspan="7" valign="top" class="boxed"><p name ="baseAttaque"></p></td>
    <td colspan="5" valign="top" class="blackback">SPELL RESISTANCE</td>
    <td valign="top" class="boxed">0</td>
    <td></td>
  </tr>
  <tr> 
    <td height="13"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="28" colspan="5" valign="top" class="blackback"><P>LUTTE<BR>
        <span class="blackback_small"> modifier</span></P></td>
    <td colspan="2" valign="top" class="boxed"><p id ="lutte"></p></td>
    <td valign="top" class="desc3">=</td>
    <td colspan="3" valign="top" class="boxed"><p name ="baseAttaque"></p></td>
    <td valign="top" class="desc3">+</td>
    <td colspan="2" valign="top" class="boxed"><p name = "modFor"></p></td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed">0</td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed">0</td>
    <td></td>
  </tr>
  <tr> 
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top" class="desc4">TOTAL</td>
    <td></td>
    <td colspan="3" valign="top" class="desc4">BASE ATT BONUS</td>
    <td></td>
    <td colspan="2" valign="top" class="desc4">STRENGTH MODIFIER</td>
    <td></td>
    <td valign="top" class="desc4">SIZE MODIFIER</td>
    <td></td>
    <td valign="top" class="desc4">MISC MODIFIER</td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="9" valign="top" class="blackback2">ATTACK</td>
    <td colspan="4" valign="top" class="blackback2">ATTACK</td>
    <td colspan="3" valign="top" class="blackback2">DAMAGE</td>
    <td colspan="2" valign="top" class="blackback2">CRITICAL</td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="9" valign="top" class="boxed"><select id="armeD" name="armeD" onchange="setAttaque()">
    	<option value ="main">
    	<option value ="epee batarde">Epee Batarde
    	<option value ="epee longue">Epee Longue
    	</select>
    </td>
    <td colspan="4" valign="top" class="boxed"><p id ="attaqueD"></p></td>
    <td colspan="3" valign="top" class="boxed"><p id ="dommagesD"></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="critiqueD"></p></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="2" valign="top" class="blackback2">RANGE</td>
    <td colspan="3" valign="top" class="blackback2">TYPE</td>
    <td colspan="13" valign="top" class="blackback2">NOTES</td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="2" valign="top" class="boxed">-</td>
    <td colspan="3" valign="top" class="boxed">&nbsp;</td>
    <td colspan="13" valign="top" class="boxed"></td>
    <td></td>
  </tr>
  <tr> 
    <td height="9"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="9" valign="top" class="blackback2">ATTACK</td>
    <td colspan="4" valign="top" class="blackback2">ATTACK</td>
    <td colspan="3" valign="top" class="blackback2">DAMAGE</td>
    <td colspan="2" valign="top" class="blackback2">CRITICAL</td>
    <td></td>
  </tr>
  <tr> 
  	<td height="19" colspan="9" valign="top" class="boxed"><select id="armeG" name="armeG" onchange="setAttaque()">
    	<option value ="main">
    	<option value ="epee batarde">Epee Batarde
    	<option value ="epee longue">Epee Longue
    	</select>
    </td>
    <td colspan="4" valign="top" class="boxed"><p id ="attaqueG"></p></td>
    <td colspan="3" valign="top" class="boxed"><p id ="dommagesG"></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="critiqueG"></p></td>
    <td></td>
  </tr>
  <tr> 
    <td colspan="2" rowspan="2" valign="top" class="blackback2">RANGE</td>
    <td colspan="3" rowspan="2" valign="top" class="blackback2">TYPE</td>
    <td colspan="13" rowspan="2" valign="top" class="blackback2">NOTES</td>
    <td height="18"></td>
  </tr>
  <tr> 
    <td height="1"></td>
    <td></td>
    <td></td>
    <td width="24"></td>
    <td width="19"></td>
    <td></td>
    <td></td>
    <td></td>
    <td width="8"></td>
    <td width="35"></td>
    <td></td>
    <td></td>
  </tr>
  <tr> 
    <td height="19" colspan="2" valign="top" class="boxed">&nbsp;</td>
    <td colspan="3" valign="top" class="boxed">&nbsp;</td>
    <td colspan="13" valign="top" class="boxed">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="11" rowspan="2" valign="top">(cc) compétences de classe <br>
      &curren; compétences non-innées &sect; pénalité d'armure</td>
  </tr>
  <tr> 
    <td height="19">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
</table>
<br>
<table width="1025" border="0" cellpadding="0" cellspacing="0" class="page">
  <!--DWLayoutTable-->
  <tr> 
    <td width="855" height="438" valign="top"><table width="855" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr> 
          <td width="474" height="24" valign="top" class="blackback">POSSESSIONS</td>
          <td width="12">&nbsp;</td>
          <td width="226" valign="top" class="blackback">SKILLS</td>
        </tr>
        <tr> 
          <td height="414" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <tr> 
                <td width="107" height="24" valign="top" class="descboxed">ITEM</td>
                <td width="32" valign="top" class="descboxed">PG.</td>
                <td width="32" valign="top" class="descboxed">LB.</td>
                <td width="107" valign="top" class="descboxed">ITEM</td>
                <td width="32" valign="top" class="descboxed">PG.</td>
                <td width="32" valign="top" class="descboxed">LB.</td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall">
                	<select id="armure" name="armure" onchange="setCA()">
                		<option value="sans armure">
                		<option value="Armure de cuir">Armure de cuir
                		<option value="Armure de cuir cloutee">Armure de cuir cloutée
                	</select>
                </td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
              <tr> 
                <td width="107" height="24" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
                <td width="107" valign="top" class="boxedsmall"></td>
                <td width="32" valign="top" class="boxedsmall"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="32" valign="top" class="boxedsmall"></td>
              </tr>
            </table></td>
          <td>&nbsp;</td>
          <td valign="top"><table width="226" border="0" cellpadding="0" cellspacing="0">
              <!--DWLayoutTable-->
              <!--DWLayoutTable-->
              <tr> 
                <td width="3" height="18" valign="top" class="blackback"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="descboxed">SKILL NAME</td>
                <td width="27" valign="top" class="descboxed">KEY ABILITY</td>
                <td colspan="2" valign="top" class="descboxed">SKILL MODIFIER</td>
                <td colspan="2" valign="top" class="descboxed">ABILITY MODIFIER</td>
                <td width="26" valign="top" class="descboxed">RANKS</td>
                <td colspan="2" valign="top" class="descboxed">MISC MODIFIER</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Perception auditive¤</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPerceptionAuditive"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="perceptionauditiveRank" id="perceptionauditiveRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Premier secours¤</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPremierSecours"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="premiersecoursRank" id="premiersecoursRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Profession</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalProfession"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="professionRank" id="professionRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Psychologie¤</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPsychologie"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="psychologieRank" id="psychologieRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Renseignements¤</td>
                <td width="27" valign="top" class="skillability">Cha</td>
                <td width="27" valign="top" class="skill2"><p id ="totalRenseignements"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modCha"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="renseigementsRank" id="renseigementsRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Représentation¤</td>
                <td width="27" valign="top" class="skillability">Cha</td>
                <td width="27" valign="top" class="skill2"><p id ="totalRepresentation"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modCha"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="representationRank" id="representationRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Saut¤§</td>
                <td width="27" valign="top" class="skillability">For</td>
                <td width="27" valign="top" class="skill2"><p id ="totalSaut"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modFor"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="sautRank" id="sautRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Survie¤</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalSurvie"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="survieRank" id="survieRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Utilisation d'objets magiques</td>
                <td width="27" valign="top" class="skillability">Cha</td>
                <td width="27" valign="top" class="skill2"><p id ="totalUtilisationObjetsMagiques"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modCha"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" name="utilisationobjetsmagiquesRank" id="utilisationobjetsmagiquesRank" value=0 onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname"></td>
                <td width="27" valign="top" class="skillability"></td>
                <td width="27" valign="top" class="skill2"></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill"></td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname"></td>
                <td width="27" valign="top" class="skillability"></td>
                <td width="27" valign="top" class="skill2"></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill"></td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname"></td>
                <td width="27" valign="top" class="skillability"></td>
                <td width="27" valign="top" class="skill2"></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill"></td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname"></td>
                <td width="27" valign="top" class="skillability"></td>
                <td width="27" valign="top" class="skill2"></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill"></td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname"></td>
                <td width="27" valign="top" class="skillability"></td>
                <td width="27" valign="top" class="skill2"></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill"></td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">&nbsp;</td>
                <td width="27" valign="top" class="skillability">&nbsp;</td>
                <td width="27" valign="top" class="skill2">&nbsp;</td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">&nbsp;</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">&nbsp;</td>
                <td width="27" valign="top" class="skillability">&nbsp;</td>
                <td width="27" valign="top" class="skill2">&nbsp;</td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">&nbsp;</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">&nbsp;</td>
                <td width="27" valign="top" class="skillability">&nbsp;</td>
                <td width="27" valign="top" class="skill2">&nbsp;</td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">&nbsp;</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">&nbsp;</td>
                <td width="27" valign="top" class="skillability">&nbsp;</td>
                <td width="27" valign="top" class="skill2">&nbsp;</td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill">&nbsp;</td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="114" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr> 
          <td width="57" rowspan="2" valign="top" class="boxed">1-87lb.</td>
          <td width="57" rowspan="2" valign="top" class="boxed">88-173lb.</td>
          <td width="57" rowspan="2" valign="top" class="boxed">174-260lb.</td>
          <td width="57" rowspan="2" valign="top" class="boxed">260lb.</td>
          <td width="57" rowspan="2" valign="top" class="boxed">520lb.</td>
          <td width="57" rowspan="2" valign="top" class="boxed">1300lb.</td>
          <td width="12" height="24">&nbsp;</td>
          <td width="64" valign="top" class="blackback3">PLATINUM</td>
          <td width="162" valign="top" class="boxed">0</td>
        </tr>
        <tr> 
          <td height="24">&nbsp;</td>
          <td valign="top" class="blackback3">GOLD</td>
          <td valign="top" class="boxed">0</td>
        </tr>
        <tr> 
          <td rowspan="2" valign="top" class="blackback3">LIGHT<BR>
            LOAD</td>
          <td rowspan="2" valign="top" class="blackback3">MEDIUM<BR>
            LOAD</td>
          <td rowspan="2" valign="top" class="blackback3">HEAVY<BR>
            LOAD</td>
          <td rowspan="2" valign="top" class="blackback3"><P>LIFT OVER HEAD<BR>
              <SPAN class="blackback_small">EQUALS MAX LOAD</SPAN></P></td>
          <td rowspan="2" valign="top" class="blackback3"><P>LIFT OFF GROUND<BR>
              <SPAN class="blackback_small">2x MAX LOAD</SPAN></P></td>
          <td rowspan="2" valign="top" class="blackback3"><P>PUSH OR DRAG<BR>
              <SPAN class="blackback_small">5x MAX LOAD</SPAN></P></td>
          <td height="24"></td>
          <td valign="top" class="blackback3">SILVER</td>
          <td valign="top" class="boxed">0</td>
        </tr>
        <tr> 
          <td height="24"></td>
          <td valign="top" class="blackback3">COPPER</td>
          <td valign="top" class="boxed">0</td>
        </tr>
        <tr> 
          <td height="18"></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="250" valign="top"><table width="855" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr> 
          <td height="18" colspan="4" valign="top" class="blackback">FEATS, LANGUAGES 
            &amp; ABILITIES</td>
        </tr>
        <tr> 
          <td width="145" height="18" valign="top" class="boxedsmall">&nbsp;</td>
          <td width="145" valign="top" class="boxedsmall">Common</td>
          <td width="145" valign="top" class="boxedsmall">&nbsp;</td>
          <td width="145" valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"><span class="feattitle">Dons</span></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall"><span class="feattitle">Compétence de classe</span></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall"><span class="feattitle">Langages</span></td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
        <tr> 
          <td height="18" valign="top" class="boxedsmall">Draconic</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
          <td valign="top" class="boxedsmall">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
<input type="submit" value="OK">

<script src="/JDR/fiche/CreationFiche.js"></script>

</form>
</div>
</body>
</html> 
<%} %>
