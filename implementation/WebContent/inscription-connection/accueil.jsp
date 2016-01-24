<%@page import="utilities.TypeUtilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.Utilisateur" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Accueil</title>
<link rel="stylesheet" type="text/css"     href="others/general.css">	
</head>
<body>

<%@ include file="/others/bandeau.html" %> 


<div class="pageContent" >

</div>

<img id="imageAccueil" src="images/characters.png">  

<% if (request.getSession().getAttribute("typeUtil")==TypeUtilisateur.Joueur) {%>
<div id="actionsAccueil">
	<a href="fiche/CreationFichePage.html">Créer une fiche de personnage</a>
	<br><br>
	<a href="fiche/FichePage.jsp">Voir ses personnages</a>
</div>
<%} else {%>

<div id="actionsAccueil">
	<a href="fiche/CreationFichePage.html">Créer une fiche de personnage</a>
	<br><br>
	<a href="fiche/FichePage.jsp">Voir ses personnages</a>
	<br><br>
	<a href="/JDR/partie/CreationPartie.jsp">Créer une partie</a>
</div>

<% } %>

<%-- <% Utilisateur u = (Utilisateur) request.getAttribute("utilisateur");%> --%>
<%-- Bonjour <%= u.getPseudo() %>! --%>
</body>
</html>