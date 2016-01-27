<%@page import="utilities.TypeUtilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Utilisateur"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Création d'une partie</title>
<link rel="stylesheet" type="text/css" href="/JDR/others/general.css">
<link rel="stylesheet" type="text/css" href="/JDR/partie/creationPartie.css">
</head>
<body>

	<%@ include file="/others/bandeau.html"%>


	<div class="pageContent">

		<div id="creaPartie">
			<div id="selectedPlayersContainer" class="contentDiv">

				<b>Maitre de jeu de la partie :</b>
				<%=request.getSession().getAttribute("utilisateur") %>
				<br> <br> <b>Liste des joueurs : </b>
				<ul id="selectedPlayers">
				</ul>
				
			</div>

			<div id="addPlayerDiv" class="contentDiv">
				<div id="addPlayer">
					Rechercher un joueur : <br>
					<input type="text" id="searchPlayerInput"/>
					<input type="button" onclick="searchPlayer($('#searchPlayerInput'))" value="Rechercher"/>
				</div>
				<div id="searchResult">
				
				</div>			
			</div>
		</div>

		<form action="/JDR/ServPartie?op=create" method="POST">
			Nom de la partie : 
			<input type="text" name="nomPartie"/>
			<div style="display: none">
				<input type="hidden" name="nbJoueurs" id="nbJoueurs" value="0"/>

				<div id="joueursForm">
				</div>
<!-- 				<input type="hidden" name="op" value="create" /> -->
			</div>

			<input type="submit" value="Lancer la partie"/>
		</form>
	</div>

	<script type="text/javascript" src="creationPartie.js"></script>

</body>
</html>