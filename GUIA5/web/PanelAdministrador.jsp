<%-- 
    Document   : PanelAdministrador
    Created on : 14 oct 2023, 10:40:40
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel del Administrador</title>
    </head>
    <body>
        <div><h1>Libreria</h1></div>
        <%-- Directiva Page --%>
        <% String usuario =  request.getParameter("tfUsuario");%>
        <div><h2><strong>Bienvenido, <%= usuario %> !</strong></h2></div>
        
        <%-- Directiva Include --%>
        <div><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="MenuAdministrador.jsp" %>
        </div>
        <div>            
            <%@include file="Footer.html" %>
        </div>  
    </body>
</html>
