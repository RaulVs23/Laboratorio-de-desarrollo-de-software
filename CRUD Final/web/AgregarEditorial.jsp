
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Editorial</title>
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
        
          <div class="sisLog"><h1>Agregar nueva Editorial</h1></div>   

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=AgregarEditorial">
            <div>
                <!-- El ID de los editorial es autoincrementable -->
                <label>nombre:</label>
                <input type="text" name="nombre" id="nombre" required /><br>
                <label>pais:</label>
                <input type="text" name="pais" id="pais" required /><br>                          
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar la editorial?')" /><br><br>
            </div><br>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEditoriales">Regresar</a>
            </div>            
        </form>
    </body>
</html>     