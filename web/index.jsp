<%-- 
    Document   : index
    Created on : 14-feb-2013, 15:34:56
    Author     : Mallol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (getServletContext().getAttribute("cont") == null) { response.sendRedirect("reiniciar"); }%>
        <form action="Jugadors_taulell" method="post">
            <input type="submit" value="Jugar">
        </form>
        <a href="admin.jsp">Admin</a>
    </body>
</html>