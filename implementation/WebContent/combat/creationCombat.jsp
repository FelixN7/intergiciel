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
	</div>

	<script type="text/javascript" src="creationCombat.js"></script>
	
</div>
