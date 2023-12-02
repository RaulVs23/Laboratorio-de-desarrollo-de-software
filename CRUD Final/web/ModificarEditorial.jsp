
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Editorial</title>
                    <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>   
        <h1>Modificar editorial</h1>
        <form action="/LibreriaBD/ServletPrincipal?accion=ModificarEditorial" method="POST">
            <div>
                <label>idEditorial:</label>
                <input type="text" name="idEditorial" id="idEditorial" value="${param.idEditorial}" readonly /><br>
                <label>nombre:</label>
                <input type="text" name="nombre" id="nombre" value="${param.nombre}" required /><br>
                <label>pais:</label>
                <input type="text" name="pais" id="pais" value="${param.pais}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar la editorial?')" /><br><br> 
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEditoriales">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>