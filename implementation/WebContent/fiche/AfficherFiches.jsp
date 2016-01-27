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
<title>Personnages de <%=request.getSession().getAttribute("utilisateur")%></title>
<link rel="stylesheet" type="text/css" href="others/general.css">
<link rel="stylesheet" type="text/css" href="/JDR/fiche/affichageFiche.css">
<script src="/JDR/fiche/detailFiche.js"></script>
</head>
<body>

	<%@ include file="/others/bandeau.html"%>


	<div class="pageContent">
		<div class="listePersos">
			Liste des personnages : <br>
			<%
				Collection<Fiche> fiches = (Collection<Fiche>) request.getAttribute("fiches");
				for (Fiche ficheCour : fiches) {
			%>

			<div class="persoDiv" data-joueur="<%=ficheCour.getPseudo()%>"
				data-perso="<%=ficheCour.getNomPerso()%>">
				<b><%=ficheCour.getNomPerso()%></b> <br>
				<%=ficheCour.getClasse().getNom()%>
				<br>
				<%=ficheCour.getRace().getNom()%>
				<br> LvL
				<%=ficheCour.getLevel()%>
				<br>
				<%
					if (ficheCour.getPartie() != null) {
				%>
				Partie en cours :
				<%=ficheCour.getPartie().getNomPartie()%>
				<%
					}
				%>
			</div>
			<%
				}
			%>
		</div>

		<div id="detailsFiche">Aucune fiche sélectionnée pour le moment.
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$(".persoDiv").click(function() {
				getDetails($(this));
			});
		});
	</script>