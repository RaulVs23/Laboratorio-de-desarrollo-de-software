

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Empleado</title>
            <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1>Eliminar empleado</h1>

        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=EliminarEmpleado">
            <div>
                <label>idEmpleado: ${param.idEmpleado}</label><br>
                <label>nombres: ${param.nombres}</label><br>
                <label>apellidos: ${param.apellidos}</label><br>
                <label>cargo: ${param.cargo}</label><br>
                <label>telefono: ${param.telefono}</label><br>
                <label>correo: ${param.correo}</label><br>
                <label>idDireccion: ${param.IdDireccion}</label><br>
                <label>idCargoEmpleado: ${param.IdCargoEmpleado}</label>   
                <input type="hidden" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" /><br><br>
                <input type="submit" value="Eliminar" onclick="return confirm('¿Desea eliminar el empleado?')" /><br><br>
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>