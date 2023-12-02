
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Clientes</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1 class="TextoTabla">Gestion de Clientes</h1>
        <h2 class="TextoTabla">Listado de Clientes</h2>
        <br>
     <h3 class="textConexion">Conexion: ${mensaje_conexion}</h3><br>

        
         <a  href="/LibreriaBD?accion=AgregarCliente">Agregar Cliente</a><br><br>
        <br>
     <table class="listadoEmpleado">
            <thead >
                <tr>
                    <th>idCliente</th>
                    <th>nombre</th>
                    <th>apellido</th>
                    <th>correo</th>
                    <th>telefono</th>
                    <th>idDireccion</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            <tbody class="tablaClientes">
                <c:forEach items="${listaClientes}" var="item">
                    <tr>
                        <td><c:out value="${item.idCliente}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.apellido}" /></td>                        
                        <td><c:out value="${item.correo}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
	       <td><c:out value="${item.idDireccion}" /></td> 
                        
                        <td>
                            
                            <form method="POST" action="/LibreriaBD/ModificarCliente.jsp" >
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Modificar" class="acci" />
                            </form>
                                
                            </td>
                             <td>
                            <form method="POST" action="/LibreriaBD/EliminarCliente.jsp">
                                <input type="hidden" name="idCliente" value="${item.idCliente}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="apellido" value="${item.apellido}" />
                                <input type="hidden" name="correo" value="${item.correo}" />
                                <input type="hidden" name="telefono" value="${item.telefono}" />
                                <input type="hidden" name="idDireccion" value="${item.idDireccion}" />
                                <input type="submit" value="Eliminar" class="acci" />
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