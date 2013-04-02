<%--
    Document   : partida
    Created on : 14-feb-2013, 15:51:31
    Author     : Mallol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fitxers.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Partida</title>
        <style>
            input {
                width: 150px;
                height: 150px;
            }
        </style>
    </head>
    <body>
        <%
            Taulell[] taulells = (Taulell[])getServletContext().getAttribute("taulells");
            int num_taulell = (Integer)session.getAttribute("numTau");
            int num_jugador = (Integer)session.getAttribute("numJugador");
            out.println("Numero de jugador: "+num_jugador+"<br/>");
            String estat = taulells[num_taulell].retornar_estat_taulell();
            out.println("El taulell està "+estat+".");
        %>
        
        <form method="post">
            <table>
                <tr>
                    <td><input type="submit" name="0" value="<%= taulells[num_taulell].estatCasella(0,0) %>"
                               formaction="tirar.jsp?a=0&b=0&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(0,0) != "") {%> disabled <% }%>></td>
                    <td><input type="submit" name="1" value="<%= taulells[num_taulell].estatCasella(0,1) %>"
                               formaction="tirar.jsp?a=1&b=0&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(0,1) != "" ) {%> disabled <% }%>></td>
                    <td><input type="submit" name="2" value="<%= taulells[num_taulell].estatCasella(0,2) %>"
                               formaction="tirar.jsp?a=2&b=0&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(0,2) != "" ) {%> disabled <% }%>></td>
                </tr>
                <tr>
                    <td><input type="submit" name="3" value="<%= taulells[num_taulell].estatCasella(1,0) %>"
                               formaction="tirar.jsp?a=0&b=1&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(1,0) != "" ) {%> disabled <% }%>></td>
                    <td><input type="submit" name="4" value="<%= taulells[num_taulell].estatCasella(1,1) %>"
                               formaction="tirar.jsp?a=1&b=1&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(1,1) != "" ) {%> disabled <% }%>></td>
                    <td><input type="submit" name="5" value="<%= taulells[num_taulell].estatCasella(1,2) %>"
                               formaction="tirar.jsp?a=2&b=1&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(1,2) != "" ) {%> disabled <% }%>></td>
                </tr>
                <tr>
                    <td><input type="submit" name="6" value="<%= taulells[num_taulell].estatCasella(2,0) %>"
                               formaction="tirar.jsp?a=0&b=2&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(2,0) != "" ) {%> disabled <% }%>></td>
                    <td><input type="submit" name="7" value="<%= taulells[num_taulell].estatCasella(2,1) %>"
                               formaction="tirar.jsp?a=1&b=2&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(2,1) != "" ) {%> disabled <% }%>></td>
                    <td><input type="submit" name="8" value="<%= taulells[num_taulell].estatCasella(2,2) %>"
                               formaction="tirar.jsp?a=2&b=2&numJug=<%= num_jugador %>"
                               <% if (taulells[num_taulell].retornar_torn() != num_jugador ||
                               taulells[num_taulell].retornar_estat_taulell() == "Acabat" ||
                               taulells[num_taulell].retornar_estat_taulell() == "Esperant contrincant" ||
                               taulells[num_taulell].estatCasella(2,2) != "" ) {%> disabled <% }%>></td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
