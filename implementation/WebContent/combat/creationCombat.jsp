<%@page import="java.util.Collection"%>
<%@page import="bean.Fiche"%>
<%@page import="bean.Partie"%>
<%@page import="utilities.TypeUtilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Utilisateur"%>

<div class="pageContent">


	<div id="creaCombat">
		<div id="selectedPlayersContainer" class="contentDiv">
			<input type="hidden" name="op" value="creation">
			<% Collection<Fiche> fiches = (Collection<Fiche>) request.getAttribute("fiches"); %>
		</div>
		
	<form action="/JDR/ServCombat?op=create" method="POST">
			<div id="addPlayerDiv" class="contentDiv">
				<div id="addPlayer">
					Ajouter un joueur : <br>
					<select name="nomPerso">
						<%for (Fiche pj : fiches) { %>
						<option value="<%=pj%>"><%=pj.getNomPerso() %>
						<% } %>
					</select>
					Score d'initiative :
					<input type="number" name="initJoueur" id="initJoueur" />
					<input type="button" name="RollTheDice" value="RollTheDice" onclick="rollTheDiceJoueur()"/>
					<input type="button" name="ajouter" id="ajoutJoueur" value="ajouter joueur"/>
				</div>
				<br>	
				<div id="addOpponent">
					Ajouter un opposant : <br>
					<select name="nomOpposant">
						<%for (Fiche pj : fiches) { %>
						<option value="<%=pj%>"><%=pj.getNomPerso() %>
						<% } %>
					</select>
					Score d'initiative :
					<input type="number" name="initOpposant" id="initOpposant"/>
					<input type="button" name="RollTheDice" value="RollTheDice" onclick="rollTheDiceOpposant()"/>
					<input type="button" name="ajouter" id="ajoutOpposant" value="ajouter opposant"/>
				</div>
				<div id="searchResult">
					
				</div>			
			</div>
	
			<div style="display: none">
					<input type="hidden" name="nbJoueurs" id="nbJoueurs" value="0"/>
	
					<div id="joueursForm">
					</div>
	
				</div>
				<br>
			<input type="submit" value="lancer le combat"/>
			<script type="text/javascript" src="/JDR/combat/combat.js"></script>
		</form>
	</div>
	
</div>
