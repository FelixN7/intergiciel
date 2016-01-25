<%@page import="bean.Fiche"%>
<%@page import="facade.FacadeBonus"%>
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
<title>Affichage Fiche</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="CreationFiche.css" />
</head>
<body>

	<%
		Fiche f = (Fiche) request.getAttribute("fiche");
	%>
	<%
		FacadeBonus fb = (FacadeBonus) request.getAttribute("facadeBonus");
	%>
	<table border="0" cellpadding="0" cellspacing="0" class="firstpage">
		<!--DWLayoutTable-->
		<tr>
			<td height="18" colspan="10"><%=f.getNomPerso()%></td>
			<td colspan="12" valign="top">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
			<td colspan="8" valign="top">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
		</tr>
		<tr>
			<td height="16" colspan="10" valign="top" class="desc1">CHARACTER
				NAME</td>
			<td colspan="12" valign="top" class="desc1">PLAYER</td>
			<td colspan="8" class="desc1">CAMPAIGN</td>
		</tr>
		<tr>
			<td height="18" colspan="10"><%=f.getLevel()%> <%=f.getClasse().getNom()%></td>
			<td colspan="7" valign="top"><%=f.getRace()%></td>
			<td colspan="5" valign="top"><%=f.getAlignement()%></td>
			<td colspan="8" valign="top" class="boxed"></td>
		</tr>
		<tr>
			<td height="16" colspan="10" valign="top" class="desc1">CLASS
				AND LEVEL</td>
			<td colspan="7" valign="top" class="desc1">RACE</td>
			<td colspan="5" valign="top" class="desc1">ALIGNMENT</td>
			<td colspan="8" class="desc1">EXPERIENCE POINTS</td>
		</tr>
		<tr>
			<td height="18" colspan="30" valign="top">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
		</tr>
		<tr>
			<td width="42" height="18" valign="middle" class="desc2">
				<p>ABILITY NAME</p>
			</td>
			<td colspan="2" class="desc2">ABILITY SCORE</td>
			<td colspan="3" class="desc2">ABILITY MODIFIER</td>
			<td colspan="2" class="desc2">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
			<td colspan="3" class="desc2">TOTAL</td>
			<td colspan="11" class="desc2">WOUNDS/CURRENT HP</td>
			<td colspan="5" class="desc2">NONLETHAL DAMAGE</td>
			<td colspan="3" class="desc2">SPEED</td>
		</tr>
		<tr>
			<td height="39" valign="middle" class="blackback">
				<p>
					STR<br> <span class="blackback_small">strength</span>
				</p>
			</td>
			<td colspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getFor()%></td>
			<td colspan="3" valign="middle" class="boxed"><%=f.getCaracteristiques().getModFor()%></td>
			<td colspan="2" valign="top" class="blackback"><P>
					HP<br> <span class="blackback_small">hit points</span>
				</p></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getVie()%></td>
			<td colspan="11" valign="top" class="boxed">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
			<td colspan="5" valign="top" class="boxed">
				<!--DWLayoutEmptyCell-->&nbsp;
			</td>
			<td colspan="3" valign="top" class="boxed">40ft.</td>
		</tr>
		<tr>
			<td height="39" valign="middle" class="blackback">
				<p>
					DEX<br> <span class="blackback_small">dexterity</span>
				</p>
			</td>
			<td colspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getDex()%>
			</td>
			<td colspan="3" valign="middle" class="boxed"><%=f.getCaracteristiques().getModDex()%></td>
			<td colspan="2" valign="top" class="blackback"><P>
					AC<br> <span class="blackback_small">armor class</span>
				</p></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getCa()%></td>
			<td width="10" class="desc3">=</td>
			<td colspan="2" valign="top" class="boxed">10</td>
			<td width="8" class="desc3">+</td>
			<td width="39" valign="top" class="boxed">0</td>
			<td width="9" class="desc3">+</td>
			<td width="39" valign="top" class="boxed">0</td>
			<td width="7" class="desc3">+</td>
			<td width="43" valign="top" class="boxed"><%=f.getCaracteristiques().getModDex()%></td>
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
			<td rowspan="2" valign="middle" class="blackback">
				<p>
					CON<br> <span class="blackback_small">constitution</span>
				</p>
			</td>
			<td colspan="2" rowspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getCon()%></td>
			<td colspan="3" rowspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getModCon()%></td>
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
			<td height="42" valign="middle" class="blackback">
				<p>
					INT<br> <span class="blackback_small">intelligence</span>
				</p>
			</td>
			<td colspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getInt()%></td>
			<td colspan="3" valign="middle" class="boxed"><%=f.getCaracteristiques().getModInt()%></td>
			<td colspan="3" valign="top" class="blackback"><P>
					TOUCH<br> <span class="blackback_small">armor class</span>
				</p></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getCa()%></td>
			<td colspan="5" valign="top" class="blackback"><P>
					FLAT-FOOTED<br> <span class="blackback_small">armor
						class</span>
				</p></td>
			<td valign="top" class="boxed">10</td>
			<td></td>
			<td colspan="11" rowspan="20" valign="top"><table width="100%"
					border="0" cellpadding="0" cellspacing="0">
					<!--DWLayoutTable-->
					<tr class="blackback">
						<td height="18" colspan="10" valign="top">SKILLS</td>
					</tr>
					<tr>
						<td width="9" height="18" valign="top" class="blackback">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td width="74" valign="top" class="descboxed">SKILL NAME</td>
						<td width="25" valign="top" class="descboxed">KEY ABILITY</td>
						<td colspan="2" valign="top" class="descboxed">SKILL MODIFIER</td>
						<td colspan="2" valign="top" class="descboxed">ABILITY
							MODIFIER</td>
						<td width="25" valign="top" class="descboxed">RANKS</td>
						<td colspan="2" valign="top" class="descboxed">MISC MODIFIER</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Acrobaties</td>
						<td valign="top" class="skillability">Dex</td>
						<td width="25" valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Acrobaties")%></td>
						<td width="7" class="desc3">=</td>
						<td width="25" valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td width="7" class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Acrobaties")%></td>
						<td width="7" class="desc3">+</td>
						<td width="25" valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Art de la magie</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Art de la magie")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Art de la magie")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Artisanat</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Art de la magie")%>
						</td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Artisanat")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Bluff</td>
						<td valign="top" class="skillability">Cha</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Bluff")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Bluff")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Concentration</td>
						<td valign="top" class="skillability">Con</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCon() + f.getCompetences().getCompetences().get("Concentration")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCon()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Concentration")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Connaissance(Mystères)</td>
						<td valign="top" class="skillability">int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt()
					+ f.getCompetences().getCompetences().get("Connaissance(Mystères)")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Connaissance(Mystères)")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Connaissance(Nature)</td>
						<td valign="top" class="skillability">int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt()
					+ f.getCompetences().getCompetences().get("Connaissance(Nature)")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Connaissance(Nature)")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Connaissance(Religion)</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt()
					+ f.getCompetences().getCompetences().get("Connaissance(Religion)")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Connaissance(religion)")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Contrefaçon</td>
						<td valign="top" class="skillability">int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Contrefaçon")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Contrefaçon")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Crochetage</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Crochetage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Crochetage")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Décryptage</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Décryptage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Décryptage")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Déguisement</td>
						<td valign="top" class="skillability">Cha</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Décryptage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Déguisement")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Déplacement silencieux</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex()
					+ f.getCompetences().getCompetences().get("Déplacement silencieux")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Déplacement silencieux")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Désamorçage/sabotage</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt()
					+ f.getCompetences().getCompetences().get("Désamorçage/sabotage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Désamorçage/sabotage")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Détection</td>
						<td valign="top" class="skillability">Sag</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModSag() + f.getCompetences().getCompetences().get("Détection")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModSag()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Détection")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Diplomatie</td>
						<td valign="top" class="skillability">Cha</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Diplomatie")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Diplomatie")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Discrétion</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Discrétion")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Discrétion")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Dressage</td>
						<td valign="top" class="skillability">Cha</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Dressage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Dressage")%>
							%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Equilibre</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Equilibre")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Equilibre")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Equitation</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Equitation")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Equitation")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Escalade</td>
						<td valign="top" class="skillability">For</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModFor() + f.getCompetences().getCompetences().get("Escalade")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModFor()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Escalade")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Escamotage</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Escamotage")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Escamotage")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Estimation</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Estimation")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Evasion</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex() + f.getCompetences().getCompetences().get("Evasion")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Evasion")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Fouille</td>
						<td valign="top" class="skillability">Int</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModInt() + f.getCompetences().getCompetences().get("Fouille")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModInt()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Fouille")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Intimidation</td>
						<td valign="top" class="skillability">Cha</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Intimidation")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Intimidation")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Maitrise des cordes</td>
						<td valign="top" class="skillability">Dex</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModDex()
					+ f.getCompetences().getCompetences().get("Maitrise des cordes")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModDex()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Maitrise des cordes")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
					<tr>
						<td height="18" valign="top">
							<!--DWLayoutEmptyCell-->&nbsp;
						</td>
						<td valign="top" class="skillname">Natation</td>
						<td valign="top" class="skillability">for</td>
						<td valign="top" class="skill2"><%=f.getCaracteristiques().getModFor() + f.getCompetences().getCompetences().get("Natation")%></td>
						<td class="desc3">=</td>
						<td valign="top" class="skill"><%=f.getCaracteristiques().getModFor()%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Natation")%></td>
						<td class="desc3">+</td>
						<td valign="top" class="skill">0</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="42" valign="middle" class="blackback">
				<p>
					WIS<br> <span class="blackback_small">wisdom</span>
				</p>
			</td>
			<td colspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getSag()%></td>
			<td colspan="3" valign="middle" class="boxed"><%=f.getCaracteristiques().getModSag()%></td>
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
			<td height="42" valign="middle" class="blackback">
				<p>
					CHA<br> <span class="blackback_small">charisma</span>
				</p>
			</td>
			<td colspan="2" valign="middle" class="boxed"><%=f.getCaracteristiques().getCha()%></td>
			<td colspan="3" valign="middle" class="boxed"><%=f.getCaracteristiques().getModCha()%></td>
			<td colspan="6" valign="top" class="blackback"><P>
					INITIATIVE<br> <span class="blackback_small">modifier</span>
				</p></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getInitiative()%></td>
			<td valign="top" class="desc3">=</td>
			<td valign="top" class="boxed"><%=f.getCaracteristiques().getModDex()%></td>
			<td valign="top" class="desc3">+</td>
			<td valign="top" class="boxed">4</td>
			<td></td>
		</tr>
		<tr>
			<td height="42" colspan="2" valign="top" class="desc2">SAVING
				THROWS</td>
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
			<td height="42" colspan="2" valign="top" class="blackback"><P>
					VIG<br> <span class="blackback_small">constitution</span>
				</p></td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusVig(f.getClasse().getNom(), f.getLevel()) + f.getCaracteristiques().getModCon()%></td>
			<td valign="top" class="desc3">=</td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusVig(f.getClasse().getNom(), f.getLevel())%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="3" valign="top" class="boxed"><%=f.getCaracteristiques().getModCon()%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="2" valign="top" class="boxed">0</td>
			<td valign="top" class="desc3">+</td>
			<td valign="top" class="boxed">0</td>
			<td valign="top" class="desc3">+</td>
			<td valign="top" class="boxed"></td>
			<td></td>
		</tr>
		<tr>
			<td height="42" colspan="2" valign="top" class="blackback"><P>
					REF<br> <span class="blackback_small">dexterity</span>
				</p></td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusRef(f.getClasse().getNom(), f.getLevel()) + f.getCaracteristiques().getModDex()%></td>
			<td valign="top" class="desc3">=</td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusRef(f.getClasse().getNom(), f.getLevel())%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="3" valign="top" class="boxed"><%=f.getCaracteristiques().getModDex()%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="2" valign="top" class="boxed">0</td>
			<td valign="top" class="desc3">+</td>
			<td valign="top" class="boxed">0</td>
			<td valign="top" class="desc3">+</td>
			<td valign="top" class="boxed"></td>
			<td></td>
		</tr>
		<tr>
			<td height="42" colspan="2" valign="top" class="blackback"><P>
					VOL<br> <span class="blackback_small">wisdom</span>
				</p></td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusVol(f.getClasse().getNom(), f.getLevel()) + f.getCaracteristiques().getModSag()%></td>
			<td valign="top" class="desc3">=</td>
			<td colspan="2" valign="top" class="boxed"><%=fb.getBonusVol(f.getClasse().getNom(), f.getLevel())%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="3" valign="top" class="boxed"><%=f.getCaracteristiques().getModSag()%></td>
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
			<td height="28" colspan="5" valign="top" class="blackback">BASE
				ATTACK BONUS</td>
			<td colspan="7" valign="top" class="boxed"><%=fb.getBonusAtt(f.getClasse().getNom(), f.getLevel())%></td>
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
			<td height="28" colspan="5" valign="top" class="blackback"><P>
					LUTTE<BR> <span class="blackback_small"> modifier</span>
				</P></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getBonusAtt() + f.getCaracteristiques().getModFor()%></td>
			<td valign="top" class="desc3">=</td>
			<td colspan="3" valign="top" class="boxed"><%=f.getBonusAtt()%></td>
			<td valign="top" class="desc3">+</td>
			<td colspan="2" valign="top" class="boxed"><%=f.getCaracteristiques().getModFor()%></td>
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
		<%if (f.getArmeGauche() == null) {%>
		<tr>
			<td height="19" colspan="9" valign="top" class="boxed"><%=f.getArmeDroite().getNom()%></td>
			<td colspan="4" valign="top" class="boxed"><%=f.getBonusAtt()%></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getArmeDroite().getDgtsM().toString()%>+<%=f.getCaracteristiques().getModFor()%></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getArmeDroite().getMinCrit()%>/x<%=f.getArmeDroite().getFacteurCritique()%></td>
			<td></td>
		</tr>
		<%} else {  %>
		<tr>
			<td height="19" colspan="9" valign="top" class="boxed"><%=f.getArmeDroite().getNom()%></td>
			<td colspan="4" valign="top" class="boxed"><%=f.getBonusAtt()-2%></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getArmeDroite().getDgtsM().toString()%>+<%=f.getCaracteristiques().getModFor()%></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getArmeDroite().getMinCrit()%>/x<%=f.getArmeDroite().getFacteurCritique()%></td>
			<td></td>
		</tr>
		<%} %>
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
		<%if (f.getArmeDroite() == null) { %>
		<tr>
			<td height="19" colspan="9" valign="top" class="boxed"><%=f.getArmeGauche().getNom()%></td>
			<td colspan="4" valign="top" class="boxed"><%=f.getBonusAtt()%></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getArmeGauche().getDgtsM().toString()%>+<%=f.getCaracteristiques().getModFor()%></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getArmeGauche().getMinCrit()%>/x<%=f.getArmeDroite().getFacteurCritique()%></td>
			<td></td>
		</tr>
		<%} else { %>
		<tr>
			<td height="19" colspan="9" valign="top" class="boxed"><%=f.getArmeGauche().getNom()%></td>
			<td colspan="4" valign="top" class="boxed"><%=f.getBonusAtt()-6%></td>
			<td colspan="3" valign="top" class="boxed"><%=f.getArmeGauche().getDgtsM().toString()%>+<%=f.getCaracteristiques().getModFor()%></td>
			<td colspan="2" valign="top" class="boxed"><%=f.getArmeGauche().getMinCrit()%>/x<%=f.getArmeDroite().getFacteurCritique()%></td>
			<td></td>
		</tr>
		<%} %>
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
			<td colspan="11" rowspan="2" valign="top">(cc) compétences de
				classe <br> &curren; compétences non-innées &sect; pénalité
				d'armure
			</td>
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
	<table width="580" border="0" cellpadding="0" cellspacing="0"
		class="page">
		<!--DWLayoutTable-->
		<tr>
			<td width="580" height="438" valign="top"><table width="580"
					border="0" cellpadding="0" cellspacing="0">
					<!--DWLayoutTable-->
					<tr>
						<td width="342" height="24" valign="top" class="blackback">POSSESSIONS</td>
						<td width="12">&nbsp;</td>
						<td width="226" valign="top" class="blackback">SKILLS</td>
					</tr>
					<tr>
						<td height="414" valign="top"><table width="100%" border="0"
								cellpadding="0" cellspacing="0">
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
									<td width="107" height="24" valign="top" class="boxedsmall"><%=f.getArmure().getNom() %></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
								<tr>
									<td width="107" height="24" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
									<td width="107" valign="top" class="boxedsmall"></td>
									<td width="32" valign="top" class="boxedsmall">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="32" valign="top" class="boxedsmall"></td>
								</tr>
							</table></td>
						<td>&nbsp;</td>
						<td valign="top"><table width="226" border="0"
								cellpadding="0" cellspacing="0">
								<!--DWLayoutTable-->
								<!--DWLayoutTable-->
								<tr>
									<td width="3" height="18" valign="top" class="blackback">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="descboxed">SKILL NAME</td>
									<td width="27" valign="top" class="descboxed">KEY ABILITY</td>
									<td colspan="2" valign="top" class="descboxed">SKILL
										MODIFIER</td>
									<td colspan="2" valign="top" class="descboxed">ABILITY
										MODIFIER</td>
									<td width="26" valign="top" class="descboxed">RANKS</td>
									<td colspan="2" valign="top" class="descboxed">MISC
										MODIFIER</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Perception
										auditive¤</td>
									<td width="27" valign="top" class="skillability">Sag</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModSag()
					+ f.getCompetences().getCompetences().get("Perception auditive")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModSag()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Perception Auditive")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Premier
										secours¤</td>
									<td width="27" valign="top" class="skillability">Sag</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModSag() + f.getCompetences().getCompetences().get("Premiers secours")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModSag()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Premier secours")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Profession</td>
									<td width="27" valign="top" class="skillability">Sag</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModSag() + f.getCompetences().getCompetences().get("Profession")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModSag()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Profession")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Psychologie¤</td>
									<td width="27" valign="top" class="skillability">Sag</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModSag()%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModSag() + f.getCompetences().getCompetences().get("Psychologie")%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Psychologie")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Renseignements¤</td>
									<td width="27" valign="top" class="skillability">Cha</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Renseignements")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Renseignements")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Représentation¤</td>
									<td width="27" valign="top" class="skillability">Cha</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModCha() + f.getCompetences().getCompetences().get("Représentation")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Représentation")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Saut¤§</td>
									<td width="27" valign="top" class="skillability">For</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModFor() + f.getCompetences().getCompetences().get("Saut")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModFor()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Saut")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Survie¤</td>
									<td width="27" valign="top" class="skillability">Sag</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModSag() + f.getCompetences().getCompetences().get("Survie")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModSag()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Survie")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
									<td width="59" valign="top" class="skillname">Utilisation
										d'objets magiques</td>
									<td width="27" valign="top" class="skillability">Cha</td>
									<td width="27" valign="top" class="skill2"><%=f.getCaracteristiques().getModCha()
					+ f.getCompetences().getCompetences().get("Utilisation d'objets magiques")%></td>
									<td width="12" class="desc3">=</td>
									<td width="27" valign="top" class="skill"><%=f.getCaracteristiques().getModCha()%></td>
									<td width="8" class="desc3">+</td>
									<td valign="top" class="skill"><%=f.getCompetences().getCompetences().get("Utilisation d'objets magiques")%></td>
									<td width="8" class="desc3">+</td>
									<td width="29" valign="top" class="skill">0</td>
								</tr>
								<tr>
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
									<td width="3" height="18" valign="top">
										<!--DWLayoutEmptyCell-->&nbsp;
									</td>
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
			<td height="114" valign="top"><table width="100%" border="0"
					cellpadding="0" cellspacing="0">
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
							LOAD
						</td>
						<td rowspan="2" valign="top" class="blackback3">MEDIUM<BR>
							LOAD
						</td>
						<td rowspan="2" valign="top" class="blackback3">HEAVY<BR>
							LOAD
						</td>
						<td rowspan="2" valign="top" class="blackback3"><P>
								LIFT OVER HEAD<BR> <SPAN class="blackback_small">EQUALS
									MAX LOAD</SPAN>
							</P></td>
						<td rowspan="2" valign="top" class="blackback3"><P>
								LIFT OFF GROUND<BR> <SPAN class="blackback_small">2x
									MAX LOAD</SPAN>
							</P></td>
						<td rowspan="2" valign="top" class="blackback3"><P>
								PUSH OR DRAG<BR> <SPAN class="blackback_small">5x
									MAX LOAD</SPAN>
							</P></td>
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
			<td height="250" valign="top"><table width="580" border="0"
					cellpadding="0" cellspacing="0">
					<!--DWLayoutTable-->
					<tr>
						<td height="18" colspan="4" valign="top" class="blackback">FEATS,
							LANGUAGES &amp; ABILITIES</td>
					</tr>
					<tr>
						<td width="145" height="18" valign="top" class="boxedsmall">&nbsp;</td>
						<td width="145" valign="top" class="boxedsmall">Common</td>
						<td width="145" valign="top" class="boxedsmall">&nbsp;</td>
						<td width="145" valign="top" class="boxedsmall">&nbsp;</td>
					</tr>
					<tr>
						<td height="18" valign="top" class="boxedsmall"><span
							class="feattitle">Dons</span></td>
						<td valign="top" class="boxedsmall">&nbsp;</td>
						<td valign="top" class="boxedsmall">&nbsp;</td>
						<td valign="top" class="boxedsmall">&nbsp;</td>
					</tr>
					<tr>
						<td height="18" valign="top" class="boxedsmall"></td>
						<td valign="top" class="boxedsmall"><span class="feattitle">Compétence
								de <%=f.getClasse().getNom()%></span></td>
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
						<td height="18" valign="top" class="boxedsmall"><span
							class="feattitle">Langages</span></td>
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

</body>
</html>
<%}%>