
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Editorial</title>
            <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Eliminar editorial</h1>

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=EliminarEditorial">
            <div>
                <label>idEditorial: ${param.idEditorial}</label><br>
                <label>nombre: ${param.nombre}</label><br>
                <label>pais: ${param.pais}</label><br> 
                <input type="hidden" name="idEditorial" id="idEditorial" value="${param.idEditorial}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar la editorial?')" /><br><br>
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEditoriales">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>