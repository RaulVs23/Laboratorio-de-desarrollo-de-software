
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel del Administrador</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body class="pag1">
        <div class="sisLog"><h1>Sistema Libreria</h1></div>
        <%-- Setear la variable usuario con el parametro de la vista e imprimir--%>
        <c:set var="usuario" value="${param.tfUsuario}" />
        <div class="welcome" ><h3><strong class="bien">¡Bienvenido, <c:out value="${usuario}" />!</strong></h3></div>

        <%-- Directiva Include --%>
        <div class="temapg1" ><h3>Men&uacute; de opciones</h3></div>
        <div>
            <%@include file="MenuAdministrador.jsp" %>
        </div>
        <div>            
            <%@include file="Footer.html" %>
        </div>  
    </body>
</html>
