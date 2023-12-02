
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Libro</title>
            <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Eliminar libro</h1>

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=EliminarLibro">
            <div>
                <label>idLibro: ${param.idLibro}</label><br>
                <label>titulo: ${param.titulo}</label><br>
                <label>isbn: ${param.isbn}</label><br>
                <label>idAutor: ${param.idAutor}</label><br>
                <label>idGenero: ${param.idGenero}</label><br>
                <label>idEditorial: ${param.IdEditorial}</label>   
                <input type="hidden" name="idLibro" id="idLibro" value="${param.idLibro}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el Libro?')" /><br><br>
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarLibros">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>