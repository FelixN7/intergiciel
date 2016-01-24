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
<lin
</head>
<body>

	<%@ include file="/others/bandeau.html"%>


	<div class="pageContent">

		<div id="creaPartie">
			<div id="selectedPlayersContainer">

				Maitre de jeu de la partie :
				<%=request.getSession().getAttribute("utilisateur") %>
				<br> <br> Liste des joueurs : <br>
				<div id="selectedPlayers"></div>
				
			</div>

			<div id="addPlayerDiv">
				<input type="text" id="searchPLayer"/>
				<input type="button" onclick="invitePlaer" value="Inviter"/>

			</div>
		</div>

		<form action="ServPartie?op=creation" method="POST"></form>
	</div>

</body>
</html>