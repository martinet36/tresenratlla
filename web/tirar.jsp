<%-- 
    Document   : tirar
    Created on : 14-mar-2013, 18:55:18
    Author     : Mallol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fitxers.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int a = Integer.parseInt(request.getParameter("a"));
            int b = Integer.parseInt(request.getParameter("b"));
            int num_jugador = Integer.parseInt(request.getParameter("numJug"));
            int num_taulell = (Integer)session.getAttribute("numTau");
            Taulell[] taulells = (Taulell[])getServletContext().getAttribute("taulells");
            taulells[num_taulell].casella(a, b, num_jugador);
            boolean win = taulells[num_taulell].comprovar_guanyar();
            taulells[num_taulell].canvi_torn_jugadors();
            
            response.sendRedirect("partida.jsp");
        %>
    </body>
</html>
