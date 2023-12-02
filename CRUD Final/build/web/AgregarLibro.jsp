

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Libro</title>
                <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
       
        <c:if test="${exito!=null}">
            <c:if test="${exito}">
                <p><strong style="color: darkgreen;">La información se guardó correctamente</strong></p>
            </c:if>
            <c:if test="${!exito}">
                <p><strong style="color: red;">No se guardó la información</strong></p>
            </c:if>
        </c:if>   
        

  <div class="sisLog"><h1>Agregar nuevo Libro</h1></div>   
        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=AgregarLibro">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>titulo:</label>
                <input type="text" name="titulo" id="titulo" required /><br>
                <label>isbn:</label>
                <input type="text" name="isbn" id="isbn" required /><br>
                <label>idAutor:</label>
                <input type="text" name="idAutor" id="idAutor" required /><br>
                <label>idGenero:</label>
                <input type="text" name="idGenero" id="idGenero" required /><br>
                <label>IdEditorial:</label>
                <input type="text" name="IdEditorial" id="IdEditorial" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el libro?')" /><br><br>
            </div><br>
            <div>
                <a href="/LibreriaBD/?accion=GestionarLibros">Regresar</a>
            </div>            
        </form>
    </body>
</html>     