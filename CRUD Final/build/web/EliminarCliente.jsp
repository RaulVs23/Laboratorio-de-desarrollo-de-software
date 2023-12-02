
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Cliente</title>
            <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Eliminar Cliente</h1>

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=EliminarCliente">
            <div>
                <label>idCliente: ${param.idCliente}</label><br>
                <label>nombre: ${param.nombre}</label><br>
                <label>apellido: ${param.apellido}</label><br>
                <label>correo: ${param.correo}</label><br>
                <label>telefono: ${param.telefono}</label><br>
                <label>idDireccion: ${param.IdDireccion}</label><br>   
                <input type="hidden" name="id" id="id" value="${param.id}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el cliente?')" /><br><br>
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>