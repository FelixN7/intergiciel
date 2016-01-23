<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.Utilisateur" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Accueil</title>
<link rel="stylesheet" type="text/css" href="/others/general.css">

</head>
<body>

<%@ include file="/others/bandeau.html" %> 



<% Utilisateur u = (Utilisateur) request.getAttribute("utilisateur");%>
Bonjour <%= u.getPseudo() %>!
</body>
</html>