
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Cliente</title>
                    <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>   
        <h1>Modificar Cliente</h1>
        <form action="/LibreriaBD/ServletPrincipal?accion=ModificarCliente" method="POST">
            <div>
                <label>idCliente:</label>
                <input type="text" name="idCliente" id="idCliente" value="${param.idCliente}" readonly /><br>
                <label>nombre</label>
                <input type="text" name="nombres" id="nombres" value="${param.nombre}" required /><br>
                <label>apellido:</label>
                <input type="text" name="apellidos" id="apellidos" value="${param.apellido}" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>telefono:</label>
                <input type="text" name="telefono" id="telefonEmpleado" value="${param.telefono}" required /><br>
               <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" value="${param.IdDireccion}" required /><br>          
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarClientes">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>