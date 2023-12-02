
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Prestamo</title>
            <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Eliminar prestamo</h1>

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=EliminarPrestamo">
            <div>
                <label>idPrestamo: ${param.idPrestamo}</label><br>
                <label>fechaPrestamo: ${param.fechaPrestamo}</label><br>
                <label>fechaEntrega: ${param.fechaEntrega}</label><br>
                <label>idCliente: ${param.IdCliente}</label><br>
                <label>idEjemplar: ${param.IdEjemplar}</label>   
                <input type="hidden" name="idPrestamo" id="idPrestamo" value="${param.idPrestamo}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el prestamo?')" /><br><br>
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarPrestamos">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>
