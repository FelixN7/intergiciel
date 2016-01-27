<%@page import="bean.Fiche"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>


<div>
	<input type="hidden" id="searchedPlayer" value="<%= request.getParameter("pseudo") %>"/>
	
	<% if (request.getAttribute("erreur").equals("true")) {%>
	<div class="erreur"> Ce nom de joueur n'existe pas, ou il n'a pas de fiche de personnage.</div>
	<% } else { %>
	<select id="ficheSelect">
		<% Collection<String> fiches = (Collection<String>) request.getAttribute("fiches"); 	
		 for (String nomPerso : fiches) {
		%>	  
		<option value="<%=nomPerso %>"><%=nomPerso  %></option>	
		<%
		}		
		%>
	</select>
	<input type="button" onclick="invitePlayer($('#ficheSelect').val(),$('#searchedPlayer').val())" value="Ajouter"/>
	<%} %>
</div>