

<%@page import="java.util.ArrayList"%>
<%@page import="bean.Fiche"%>
<%@page import="utilities.Combat"%>

<div class="content" id="combat" style="height:1200px;">
<input type="hidden" name="op" value="creation">
	<script src="combat.js"></script>
		<div style = "vertical-align: top; display: inline-block; width: 100%">
			<div style="display:inline-block; border: 2px black; border-style: solid; width: 40%; height: 550px;">
			Liste des joueurs : 
				<%Combat combat = (Combat) request.getAttribute("combat"); %>
				<%for (Fiche pj : combat.getPJS()) { %>
					<div style="display:inline-block; border: 1px black; border-style: solid;">
						<%= pj.getPseudo() %><br>
						<%= pj.getNomPerso() %><br>
						<%= pj.getVieCourante() %>/<%= pj.getVie() %><br>
					</div>
				<%} %>
			
			</div>
			
			<div style="display:inline-block; vertical-align: top; width: 15%" id="actionsCombat">
				<input type="button" id="attaquer" value="attaquer" onclick="selectOpponent()"><br><br>
				<div id="hidden" style=display:none >
					<select id="attaquant">
					<% ArrayList<Fiche> listePartcipants = combat.getPJS() ;%>
					<%listePartcipants.addAll(combat.getPJS()) ;%>
					<%for (Fiche pj : listePartcipants) {%>
						<option value="<%= pj.getNomPerso() %>">
					<%} %>
					</select>
					<select id="defenseur">
					<%for (Fiche pj : listePartcipants) {%>
						<option value="<%= pj.getNomPerso() %>">
					<%} %>
					</select>
				</div>
				<input type="button" value="valider">
				
				<div id="hid" style=display:none>
					<input type="number" id="dgts" name="resD">
					<input type="button" value="ok">
					<input type="button" value="RollTheDice"> <p id="dice"></p>
				</div>
			</div>
			
			<div style="display:inline-block; border: 2px black; border-style: solid; width: 40%; height: 550px;">
				Liste des Opposants : 
				<%for (Fiche opposant : combat.getOpposants()) { %>
					<div style="display:inline-block; border: 1px black; border-style: solid;">
						<%= opposant.getPseudo() %><br>
						<%= opposant.getNomPerso() %><br>
						<%= opposant.getVieCourante() %>/<%= opposant.getVie() %><br>
					</div>
				<%} %>	
			</div>
		</div>
		
		<br>

		<br>
	</div>
