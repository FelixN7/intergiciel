<%@page import="java.util.Collection"%>
<%@page import="bean.Fiche"%>
<%@page import="bean.Partie"%>
<%@page import="utilities.TypeUtilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Utilisateur"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Création d'un combat</title>
<link rel="stylesheet" type="text/css" href="/JDR/others/general.css">
<link rel="stylesheet" type="text/css" href="/JDR/partie/creationPartie.css">
</head>
<body>

<div class="pageContent">


	<div id="creaCombat">
		<div id="selectedPlayersContainer" class="contentDiv">
			<input type="hidden" name="op" value="creation">
			<br> <br> <b>Liste des joueurs : </b><br>
			<% Collection<Fiche> fiches = (Collection<Fiche>) request.getAttribute("fiches"); %>
			<%for (Fiche pj : fiches) { %>
				<div style="display:inline-block; border: 2px black; border-style: solid;">
					<%= pj.getPseudo() %><br>
					<%= pj.getNomPerso() %><br>
				</div>
			<%} %>
					
		</div>
		
	<form action="/JDR/ServCombat?op=creation" method="POST">
			<div id="addPlayerDiv" class="contentDiv">
				<div id="addPlayer">
					Ajouter un joueur : <br>
					<select name="nomPerso">
						<%for (Fiche pj : fiches) { %>
						<option value="<%=pj%>"><%=pj.getNomPerso() %>
						<% } %>
					</select>
					<input type="number" name="initJoueur" id="initJoueur" />
					<input type="button" name="RollTheDice" onclick="rollTheDice()"/>
				</div>
					
				<div id="addOpponent">
					Ajouter un opposant : <br>
					<select name="nomOpposant">
						<%for (Fiche pj : fiches) { %>
						<option value="<%=pj%>"><%=pj.getNomPerso() %>
						<% } %>
					</select>
					<input type="number" name="initOpposant" id="initOpposant"/>
					<input type="button" name="RollTheDice" onclick="rollTheDice()"/>
				</div>
				<div id="searchResult">
					
				</div>			
			</div>
	
			<div style="display: none">
					<input type="hidden" name="nbJoueurs" id="nbJoueurs" value="0"/>
	
					<div id="joueursForm">
					</div>
	
				</div>
			<input type="button" value="lancer le combat">
			<script type="text/javascript" src="creationCombat.js"></script>
		</form>
	</div>
	
</div>
