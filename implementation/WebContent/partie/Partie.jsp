<%@page import="facade.FacadePartie"%>
<%@page import="bean.Partie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LA PARTIE</title>
<link rel="stylesheet" type="text/css" href="others/general.css">
</head>
<body>

	<%@ include file="/others/bandeau.html"%>

	<form action="/JDR/ServPartie?op=partie" method="POST">

	MJ : <%= request.getSession().getAttribute("utilisateur") %>
	<div style = "vertical-align: top; display: inline-block; width: 100%">
		<div style="display:inline-block; border: 1px black; border-style: solid; width: 40%; height: 550px;">
		Liste des joueurs :
		<%FacadePartie fp = new FacadePartie(); %> 
		<%//Partie partie = fp.getPartie(id); %>	
		</div>
			
		<div style="display:inline-block; border: 1px black; border-style: solid; width: 40%; height: 550px;"> 
					
		</div>
	</div>
	
	
	<input type="submit" value="lancer un combat">

</body>
</html>