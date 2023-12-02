
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Empleado</title>
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
        

        <div class="sisLog"><h1>Agregar nuevo empleado</h1></div>     
        <form method="POST" action="/LibreriaBD/ServletPrincipal?accion=AgregarEmpleado">
            <div>
                <!-- El ID de los empleados es autoincrementable -->
                <label>nombres:</label>
                <input type="text" name="nombres" id="nombres" required /><br>
                <label>apellidos:</label>
                <input type="text" name="apellidos" id="apellidos" required /><br>
                <label>cargo:</label>
                <input type="text" name="cargo" id="cargo" required /><br>
                <label>teléfono:</label>
                <input type="text" name="telefono" id="telefono" required /><br>
                <label>correo:</label>
                <input type="email" name="correo" id="correo" required /><br>
                <label>IdDireccion:</label>
                <input type="text" name="IdDireccion" id="IdDireccion" required /><br>
                <label>IdCargoEmpleado:</label>
                <input type="text" name="IdCargoEmpleado" id="IdCargoEmpleado" required /><br><br>                            
                <input type="submit" value="Registrar" onclick="return confirm('¿Desea registrar el empleado?')" /><br><br>
            </div><br>
            <div>
                <a href="/LibreriaBD/?accion=GestionarEmpleados">Regresar</a>
            </div>            
        </form>
    </body>
</html>     