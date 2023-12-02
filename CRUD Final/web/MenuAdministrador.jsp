<%-- 
    Document   : MenuAdministrador
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilos.css"/>
        <title>-- Menu --</title>
    </head>
    <body class="enlaces" >
        <nav class="enlaces1">
            <ul class="etiqueta">
                <li><a class="enlacesColor1" href="/LibreriaBD">Inicio Sistema Libreria</a></li>
                <li><a class="enlacesColor1" href="/LibreriaBD?accion=Login">Login</a></li>
                <li><a class="enlacesColor2" href="/LibreriaBD?accion=GestionarEmpleados">GestionarEmpleados</a></li>
                <li><a class="enlacesColor2" href="/LibreriaBD?accion=GestionarClientes">GestionarClientes</a></li>
                <li><a class="enlacesColor2" href="/LibreriaBD?accion=GestionarLibros">GestionarLibros</a></li>
                <li><a class="enlacesColor2" href="/LibreriaBD?accion=GestionarEditoriales">GestionarEditoriales</a></li>
                <li><a class="enlacesColor2" href="/LibreriaBD?accion=GestionarPrestamos">GestionarPrestamos</a></li>
            </ul>
        </nav>
    </body>
</html>
