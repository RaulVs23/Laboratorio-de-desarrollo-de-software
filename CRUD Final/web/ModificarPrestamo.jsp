
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Prestamo</title>
    </head>
    <body>   
        <h1>Modificar prestamo</h1>
        <form action="/LibreriaBD/ServletPrincipal?accion=ModificarPrestamo" method="POST">
            <div>
                <label>idPrestamo:</label>
                <input type="text" name="idPrestamo" id="idPrestamo" value="${param.idPrestamo}" readonly /><br>
                <label>fechaPrestamo:</label>
                <input type="date" name="fechaPrestamo" id="fechaPrestamo" value="${param.fechaPrestamo}" required /><br>
                <label>fechaEntrega:</label>
                <input type="date" name="fechaEntrega" id="fechaEntrega" value="${param.fechaEntrega}" required /><br>
                <label>idCliente:</label>
                <input type="text" name="idCliente" id="idCliente" value="${param.idCliente}" required /><br>
                <label>idEjemplar:</label>
                <input type="text" name="idEjemplar" id="idEjemplar" value="${param.idEjemplar}" required /><br>
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el prestamo?')" /><br><br> 
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarPrestamos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>