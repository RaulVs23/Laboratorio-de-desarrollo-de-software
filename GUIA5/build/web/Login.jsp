<%-- 
    Document   : Login
    Created on : 7 oct 2023, 09:48:55
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Libreria</title>

    <body>
        <form method="POST" action="/LibreriaWeb/Principal?accion=Login" id="formLogin">
            <div id="resultLogin"></div>    
            <div><h1>Libreria</h1></div>
            <%-- Insercion de codigo Java en HTML - comentario --%>
            
            <%-- Forma antigua e ilegible de imprimir la fecha usando una Expresion--%>
            <div><label>Fecha actual: <strong><%= new java.util.Date().toString() %></strong></label><br></div>

            <%-- Forma legible de imprimir la fecha usando Scriptlets --%>
            <%
                java.util.Date fechaActual = new java.util.Date();
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy");
                String fechaActualLegible = sdf.format(fechaActual);
            %>
            <p>Fecha actual: <strong><%= fechaActualLegible %></strong></p><br>

            <div><label>Usuario:</label></div>            
            <div><input type="text" name="tfUsuario" id="idtfUsuario"></div><br>
            <div><label>Contrase&ntilde;a:</label></div>
            <div><input type="password" name="tfContrasenia" id="idtfContrasenia" ></div><br>
            <div><input type="submit" value="Iniciar Sesi&oacute;n"></div>
        </form>    
    </body>
</html>
