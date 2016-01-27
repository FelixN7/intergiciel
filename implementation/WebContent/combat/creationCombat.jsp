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


	<div id="creaCombat">
		<div id="selectedPlayersContainer" class="contentDiv">
			<input type="hidden" name="op" value="creation">
			<b>Maitre de jeu de la partie :</b>
			<%=request.getSession().getAttribute("utilisateur") %>
			<br> <br> <b>Liste des joueurs : </b><br>
			<div id="selectedPlayers">
				<br>
			</div>
					
		</div>
	
			<div id="addPlayerDiv" class="contentDiv">
				<div id="addPlayer">
					Ajouter un joueur : <br>
					<input type="text" id="searchPlayerInput"/>
					<input type="button" onclick="searchPlayer($('#searchPlayerInput'))" value="Rechercher joueur"/>
				</div>
				<div id="addOpponent">
					Ajouter un opposant : <br>
					<input type="text" id="searchOpponentInput"/>
					<input type="button" onclick="searchPlayer($('#searchOpponentInput'))" value="Rechercher opposant"/>
				</div>
				<div id="searchResult">
					
				</div>			
			</div>
	
		<form action="/JDR/ServCombat?op=creation" method="POST">
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
