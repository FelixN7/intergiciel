<%@page import="bean.Fiche"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>


<div>
	<input type="hidden" id="searchedPlayer" value="<%= request.getParameter("pseudo") %>"/>
	
	<% if (request.getAttribute("erreur").equals("true")) {%>
	<div class="erreur"> Ce nom de joueur n'existe pas, ou il n'a pas de fiche de personnage.</div>
	<% } else { %>
	<select id="ficheSelect">
		<% Collection<Fiche> fiches = (Collection<Fiche>) request.getAttribute("fiches"); 
		
		 for (Iterator iteratorFiches = fiches.iterator(); iteratorFiches.hasNext();) {
		        Fiche ficheCour = (Fiche) iteratorFiches.next();

		%>	  
		<option value="<%=ficheCour.getNomPerso()%>"><%=ficheCour.getNomPerso() %></option>	
		<%
		}		
		%>
	</select>
	<input type="button" onclick="invitePlayer($('#ficheSelect').val(),$('#searchedPlayer').val())" value="Ajouter"/>
	<%} %>
</div>