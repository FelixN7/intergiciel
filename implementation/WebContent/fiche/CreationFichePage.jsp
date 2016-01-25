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
<title>Cr�ation de Fiche</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="CreationFiche.css" />

</head>
<body onload="setAttaque(), setSave(), setHP()">

<form action="ServFiche" method="post" id="formCreationFiche">

<table border="0" cellpadding="0" cellspacing="0" class="firstpage">
  <!--DWLayoutTable-->
  <tr> 
    <td height="18" colspan="10"><input type="text" size="10" id="nomPerso"></td>
    <td height="18" colspan="10"><input type="text" value="<%= request.getSession().getAttribute("utilisateur") %>" size="10" id="nomJoueur" readonly></td>
    <td colspan="12" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="8" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
  <tr> 
    <td height="16" colspan="10" valign="top" class="desc1">CHARACTER NAME</td>
    <td colspan="12" valign="top" class="desc1">PLAYER</td>
    <td colspan="8" class="desc1">CAMPAIGN</td>
  </tr>
  <tr> 
    <td height="18" colspan="10"> <input type="number" value="1" size="4" id="level" readonly> <select id="nomClasse" form="formCreationFiche" onchange="setSave(), setAttaque(), setHP()">
    	<option value ="guerrier">guerrier
    	<option value ="voleur">voleur
    	</select>
    	</td>
    <td colspan="7" valign="top"> <select id="nomRace" form="formCreationFiche">
    	<option value="elfe">elfe
    	<option value="humain">humain
    	</select>
    </td>
    <td colspan="5" valign="top"> <select id="alignement" form="formCreationFiche">
    	<option value="loyal bon">loyal bon
    	<option value="chaotique bon">chaotique bon
    	<option value="neutre bon">neutre bon
    	<option value="loyal neutre">loyal neutre
    	<option value="neutre strict">neutre strict
    	<option value="chaotique neutre">chaotique neutre
    	<option value="loyal mauvais">loyal mauvais
    	<option value="neutre mauvais">neutre mauvais
    	<option value="chaotique mauvais">chaotique mauvais
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
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="for" onchange="setModFor(), settotaux(), setSave(), setAttaque()"></td>
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
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="dex" onchange="setModDex(), settotaux(), setSave(), setAttaque(), setCA()"></td>
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
    <td colspan="2" rowspan="2" valign="middle" class="boxed"><input type="number" size="4" id="con" onchange="setModCon(), settotaux(), setSave(), setAttaque(), setHP()"></td>
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
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="int" onchange="setModInt(), settotaux(), setSave(), setAttaque()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="acrobatiesRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="artdelamagieRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="artisanatRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="bluffRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="concentrationRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Connaissance(Myst�res)</td>
          <td valign="top" class="skillability">int</td>
          <td valign="top" class="skill2"><p id ="totalConnaissance(Mysteres)"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="connaissanceMystereRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="connaissanceNatureRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="connaissanceReligionRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Contrefa�on</td>
          <td valign="top" class="skillability">int</td>
          <td valign="top" class="skill2"><p id ="totalContrefacon"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="contrefaconRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="crochetageRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">D�cryptage</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalDecryptage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="decryptageRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">D�guisement</td>
          <td valign="top" class="skillability">Cha</td>
          <td valign="top" class="skill2"><p id ="totalDeguisement"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modCha"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="deguisementRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">D�placement silencieux</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalDeplacementSilencieux"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="deplacementsilencieuxRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">D�samor�age/sabotage</td>
          <td valign="top" class="skillability">Int</td>
          <td valign="top" class="skill2"><p id ="totalDesamorcage"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name="modInt"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="desamorcageRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">D�tection</td>
          <td valign="top" class="skillability">Sag</td>
		  <td valign="top" class="skill2"><p id ="totalDetection"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modSag"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="detectionRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="diplomatieRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
        <tr> 
          <td height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          <td valign="top" class="skillname">Discr�tion</td>
          <td valign="top" class="skillability">Dex</td>
          <td valign="top" class="skill2"><p id ="totalDiscretion"></p></td>
          <td class="desc3">=</td>
          <td valign="top" class="skill"><p name ="modDex"></p></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill"><input type="number" size="4" id="discretionRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="dressageRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="equilibreRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="equitationRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="escaladeRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="escamotageRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="estimationRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="evasionRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="fouilleRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="intimidationRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="maitrisedescordesRank" onchange="settotaux()"></td>
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
          <td valign="top" class="skill"><input type="number" size="4" id="natationRank" onchange="settotaux()"></td>
          <td class="desc3">+</td>
          <td valign="top" class="skill">  0</td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td height="42" valign="middle" class="blackback"> <p>WIS<br>
        <span class="blackback_small">wisdom</span></p></td>
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="sag" onchange="setModSag(), settotaux(), setSave(), setAttaque()"></td>
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
    <td colspan="2" valign="middle" class="boxed"><input type="number" size="4" id="cha" onchange="setModCha(), settotaux(), setSave(), setAttaque()"></td>
    <td colspan="3" valign="middle" class="boxed"><p name	="modCha"></p></td>
    <td colspan="6" valign="top" class="blackback"><P>INITIATIVE<br>
        <span class="blackback_small">modifier</span></p></td>
    <td colspan="2" valign="top" class="boxed"><p id ="init"></p></td>
    <td valign="top" class="desc3">=</td>
    <td valign="top" class="boxed"><p name	="modDex"></p></td>
    <td valign="top" class="desc3">+</td>
    <td valign="top" class="boxed"><p id = "miscInit"></td>
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
    <td height="19" colspan="9" valign="top" class="boxed"><select id="armeD" onchange="setAttaque()" form="formCreationFiche">
    	<option value ="Mains">
    	<option value ="Epee Batarde">Epee Batarde
    	<option value ="Epee Longue">Epee Longue
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
  	<td height="19" colspan="9" valign="top" class="boxed"><select id="armeG" onchange="setAttaque()" form="formCreationFiche">
    	<option value ="Mains">
    	<option value ="Epee Batarde">Epee Batarde
    	<option value ="Epee Longue">Epee Longue
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
    <td colspan="11" rowspan="2" valign="top">(cc) comp�tences de classe <br>
      &curren; comp�tences non-inn�es &sect; p�nalit� d'armure</td>
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
                	<select id="armure" onchange="setCA()" form="formCreationFiche">
                		<option value="sans Armure">
                		<option value="armure de Cuir">Armure de cuir
                		<option value="armure de Cuir Cloutee">Armure de cuir clout�e
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
                <td width="59" valign="top" class="skillname">Perception auditive�</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPerceptionAuditive"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="perceptionauditiveRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Premier secours�</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPremierSecours"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="premiersecoursRank" onchange="settotaux()"></td>
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
                <td valign="top" class="skill"><input type="number" size="4" id="professionRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Psychologie�</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalPsychologie"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="psychologieRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Renseignements�</td>
                <td width="27" valign="top" class="skillability">Cha</td>
                <td width="27" valign="top" class="skill2"><p id ="totalRenseignements"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modCha"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="renseigementsRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Repr�sentation�</td>
                <td width="27" valign="top" class="skillability">Cha</td>
                <td width="27" valign="top" class="skill2"><p id ="totalRepresentation"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modCha"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="representationRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Saut��</td>
                <td width="27" valign="top" class="skillability">For</td>
                <td width="27" valign="top" class="skill2"><p id ="totalSaut"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modFor"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="sautRank" onchange="settotaux()"></td>
                <td width="8" class="desc3">+</td>
                <td width="29" valign="top" class="skill">  0</td>
              </tr>
              <tr> 
                <td width="3" height="18" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
                <td width="59" valign="top" class="skillname">Survie�</td>
                <td width="27" valign="top" class="skillability">Sag</td>
                <td width="27" valign="top" class="skill2"><p id ="totalSurvie"></p></td>
                <td width="12" class="desc3">=</td>
                <td width="27" valign="top" class="skill"><p name ="modSag"></p></td>
                <td width="8" class="desc3">+</td>
                <td valign="top" class="skill"><input type="number" size="4" id="survieRank" onchange="settotaux()"></td>
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
                <td valign="top" class="skill"><input type="number" size="4" id="utilisationobjetsmagiquesRank" onchange="settotaux()"></td>
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
          <td valign="top" class="boxedsmall"><span class="feattitle">Comp�tence de classe</span></td>
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

<script src="CreationFiche.js"></script>

</form>
</body>
</html> 
<%} %>
