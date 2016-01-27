<%@page import="java.util.Collection"%>
<%@page import="bean.Fiche"%>
<%@page import="facade.FacadePartie"%>
<%@page import="bean.Partie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Partie : <%= request.getAttribute("nomPartie")%></title>
<link rel="stylesheet" type="text/css" href="others/general.css">
<link rel="stylesheet" type="text/css" href="partie/partie.css">
<link rel="stylesheet" type="text/css" href="fiche/CreationFiche.css">

<script src="/JDR/partie/partie.js"></script>
</head>
<body>

	<%@ include file="/others/bandeau.html"%>


	<div class="pageContent">
		MJ : <div id="pseudomj"><%= request.getSession().getAttribute("utilisateur") %></div> <br>
		Nom de la partie : <div id="nomPartie"><%= request.getAttribute("nomPartie") %></div> <br>
		<div class="partieDiv">
			<div class="listePersos">
				Liste des joueurs : <br>
				<% Collection<Fiche> fiches = (Collection<Fiche>) request.getAttribute("fiches");
				for (Fiche ficheCour : fiches) {
				%>
					
				<div class= "persoDiv" data-joueur="<%=ficheCour.getPseudo()%>" data-perso="<%=ficheCour.getNomPerso() %>">
					<%=ficheCour.getPseudo()%> ( <b><%=ficheCour.getNomPerso()%></b> ) <br>
					Classe : <%=ficheCour.getClasse().getNom()%> <br>
					PVs : <%=ficheCour.getVieCourante()%>/<%=ficheCour.getVie()%>
				</div>		
				<%
				}				
				%> 				
			</div>

			<div id="detailsFiche"> Aucune fiche sélectionnée pour le moment.
			</div>
		</div>
		
		Actions : 
		<div id="divActions">
			<input type="button" value="Lancer un combat" onclick="createCombat($('#pseudomj').html(),$('#nomPartie').html())">
		</div>
		
		<div id="actionContent">
		
		</div>
	</div>
	<script type="text/javascript">

	$(document).ready(function() {
		$(".persoDiv").click(function() {
			getDetails($(this));
		});
	});
		
	</script>
	
</body>
</html>