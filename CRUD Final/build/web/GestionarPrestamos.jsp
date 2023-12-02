
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Prestamos</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1 class="TextoTabla">Gestión de Prestamos</h1>
        <h2 class="TextoTabla">Listado de Prestamos</h2>
        <h3 class="textConexion">Conexion: ${mensaje_conexion}</h3><br>

        <a href="/LibreriaBD?accion=AgregarPrestamo">Agregar Prestamo</a><br><br>
        <br>
        

 <table class="listadoEmpleado">
            <thead>
                <tr>
                    <th>idPrestamos</th>
                    <th>fechaPrestamo</th>
                    <th>fechaEntrega</th>
                    <th>idCliente</th>
                    <th>idEjemplar</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="tablaEmpleado">
                <c:forEach items="${listaPrestamos}" var="item">
                    <tr>
                        <td><c:out value="${item.idPrestamo}" /></td>
                        <td><c:out value="${item.fechaPrestamo}" /></td>
                        <td><c:out value="${item.fechaEntrega}" /></td>                        
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.idEjemplar}" /></td>
                        
                        <td>
                            
                            <form method="POST" action="/LibreriaBD/ModificarPrestamo.jsp" >
                                <input type="hidden" name="idPrestamo" value="${item.idPrestamo}" />
                                <input type="hidden" name="fechaPrestamo" value="${item.fechaPrestamo}" />
                                <input type="hidden" name="fechaEntrega" value="${item.fechaEntrega}" />
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="idEjemplar" value="${item.idEjemplar}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/LibreriaBD/EliminarPrestamo.jsp">
                                <input type="hidden" name="idPrestamo" value="${item.idPrestamo}" />
                                <input type="hidden" name="fechaPrestamo" value="${item.fechaPrestamo}" />
                                <input type="hidden" name="fechaEntrega" value="${item.fechaEntrega}" />
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="idEjemplar" value="${item.idEjemplar}" />
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