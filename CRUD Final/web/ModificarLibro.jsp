
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Libro</title>
                    <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>   
        <h1>Modificar libro</h1>
        <form action="/LibreriaBD/ServletPrincipal?accion=ModificarLibro" method="POST">
            <div>
                <label>idLibro:</label>
                <input type="text" name="idLibro" id="idLibro" value="${param.idLibro}" readonly /><br>
                <label>titulo:</label>
                <input type="text" name="titulo" id="titulo" value="${param.titulo}" required /><br>
                <label>isbn:</label>
                <input type="text" name="isbn" id="isbn" value="${param.isbn}" required /><br>
                <label>idAutor:</label>
                <input type="text" name="idAutor" id="idAutor" value="${param.idAutor}" required /><br>
                <label>idGenero:</label>
                <input type="text" name="idGenero" id="idGenero" value="${param.idGenero}" required /><br>
                <label>idEditorial:</label>
                <input type="text" name="idEditorial" id="idEditorial" value="${param.idEditorial}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el Libro?')" /><br><br> 
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarLibros">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
