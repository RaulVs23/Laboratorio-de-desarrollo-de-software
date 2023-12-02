

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Empleado</title>
                    <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>   
        <h1>Modificar empleado</h1>
        <form action="/LibreriaBD/ServletPrincipal?accion=ModificarEmpleado" method="POST">
            <div>
                <label>idEmpleado:</label>
                <input type="text" name="idEmpleado" id="idEmpleado" value="${param.idEmpleado}" readonly /><br>
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" value="${param.nombres}" required /><br>
                <label>apellidos:</label>
                <input type="text" name="apellidos" id="apellidos" value="${param.apellidos}" required /><br>
                <label>cargo:</label>
                <input type="text" name="cargo" id="cargo" value="${param.cargo}" required /><br>
                <label>telefono:</label>
                <input type="text" name="telefono" id="telefonEmpleado" value="${param.telefono}" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" value="${param.correo}" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" value="${param.IdDireccion}" required /><br>
                <label>IdCargoEmpleado:</label>
                <input type="text" name="IdCargoEmpleado" id="IdCargoEmpleado" value="${param.IdCargoEmpleado}" required /><br><br>           
                <input type="submit" value="Modificar" onclick="return confirm('¿Desea modificar el empleado?')" /><br><br> 
            </div>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEmpleados">Regresar</a><br><br>
            </div>             
        </form>
    </body>
</html>