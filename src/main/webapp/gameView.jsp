<%@ page import="com.virtualpairprogrammers.model.Game" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <head>
     <% List<Game> allGame = (List<Game>) request.getAttribute("allGame");%>
 </head>
 <body>
 
     <h2>-------Elenco giochi disponibili-------</h2><br/>
      
<form action="GameServlet" method="post">
 <table border="2">

     <tr>   
         <th> ID GIOCO</th>
         <th> ID GAMER CREATORE </th>
         <th> NOME GIOCO </th>
         <th> DESCRIZIONE DEL PERCORSO CON PRIMO INDIZIO </th>
     </tr>
     
        <%for (Game game : allGame) { %>
        
     <tr>
        
         <td> <%= game.getId()%> </td>
         <td> <%= game.getIdCreatore()%> </td>
         <td> <%= game.getNome()%> </td>
         <td> <%= game.getDescrPercorso()%> </td>
       
		 <td> <a href="GameServlet?richiesta=update&id=<%= game.getId() %>">Modifica</a></td>
		 <td> <a href="GameServlet?richiesta=delete&id=<%= game.getId() %>">Elimina</a></td>
		 
     </tr>
     <% }%>
 </table>

</form>
 <h2></h2>
 <h2></h2>
 <form action="GameServlet" method="post">
 <input type="submit" value="Indietro" name="richiesta">
 <h3></h3>

 </form>
 </body>
</html>