
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
        <link href="Estilos.css" rel="stylesheet">
    </head>
    <body>

        <h1 class="TextoTabla">Gestión de Empleados</h1>
        <h2 class="TextoTabla">Listado de Empleados</h2>
        <h3 class="textConexion">Conexion: ${mensaje_conexion}</h3><br>
        <a href="/LibreriaBD?accion=AgregarEmpleado">Agregar Empleado</a><br><br>
        <br>
        

        <table class="listadoEmpleado">
            <thead>
                <tr>
                    <th>IDEmpleado</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Cargo</th>
                    <th>Telefono</th>
                    <th>Correo</th>
	   <th>ID_Direccion</th>
                    <th>IDCargoEmpleado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="tablaEmpleado">
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.idEmpleado}" /></td>
                        <td><c:out value="${item.nombres}" /></td>
                        <td><c:out value="${item.apellidos}" /></td>                        
                        <td><c:out value="${item.cargo}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                        <td><c:out value="${item.correo}" /></td>
	       <td><c:out value="${item.idDireccion}" /></td>                        
                        <td><c:out value="${item.idCargoEmpleado}" /></td> 
                        
                        <td>
                            
                            <form method="POST" action="/LibreriaBD/ModificarEmpleado.jsp" >
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="cargo" value="${item.cargo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="idCargoEmpleado" value="${item.idCargoEmpleado}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/LibreriaBD/EliminarEmpleado.jsp">
                                <input type="hidden" name="idEmpleado" value="${item.idEmpleado}" />
                                <input type="hidden" name="nombres" value="${item.nombres}" />
                                <input type="hidden" name="apellidos" value="${item.apellidos}" />
                                <input type="hidden" name="cargo" value="${item.cargo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="hidden" name="idCargoEmpleado" value="${item.idCargoEmpleado}" />
                                <input type="submit" value="Eliminar" />
                            </form>
                            
                        </td>
                    </tr>
                </c:forEach>
            </tbody>   
        </table>
        <button class="boton" onclick="regresar()">Regresar</button>
            <script>
            function regresar(){
                window.history.back();
            }
        </script>
    </body>
</html>