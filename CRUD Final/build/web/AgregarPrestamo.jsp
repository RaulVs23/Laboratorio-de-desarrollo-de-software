
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Prestamo</title>
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
      <div class="sisLog"><h1>Agregar nuevo prestamo</h1></div>   

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=AgregarPrestamo">
            <div>
                <!-- El ID de los prestamos es autoincrementable -->
                <label>fechaPrestamo:</label>
                <input type="date" name="fechaPrestamo" id="fechaPrestamo" required /><br>
                <label>fechaEntrega:</label>
                <input type="date" name="fechaEntrega" id="fechaEntrega" required /><br>
                <label>idCliente:</label>
                <input type="text" name="idCliente" id="idCliente" required /><br>
                <label>idEjemplar:</label>
                <input type="text" name="idEjemplar" id="idEjemplar" required /><br>                         
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el prestamo?')" /><br><br>
            </div><br>
            <div>
                <a href="/LibreriaBD/?accion=GestionarPrestamos">Regresar</a>
            </div>            
        </form>
    </body>
</html>     