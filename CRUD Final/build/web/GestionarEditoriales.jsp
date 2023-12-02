
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Editoriales</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1 class="TextoTabla">Gestión de Editoriales</h1>
        <h2 class="TextoTabla">Listado de Editoriales</h2>
        <h3 class="textConexion">Conexion: ${mensaje_conexion}</h3><br>
        <a href="/LibreriaBD?accion=AgregarEditorial">Agregar Editorial</a><br><br>
        <br>
        

        <table class="listadoEmpleado">
            <thead>
                <tr>
                    <th>idEditorial</th>
                    <th>nombre</th>
                    <th>pais</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="tablaEmpleado">
                <c:forEach items="${listaEditoriales}" var="item">
                    <tr>
                        <td><c:out value="${item.idEditorial}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.pais}" /></td>                        
                        
                        <td>
                            
                            <form method="POST" action="/LibreriaBD/ModificarEditorial.jsp" >
                                <input type="hidden" name="idEditorial" value="${item.idEditorial}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="pais" value="${item.pais}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/LibreriaBD/EliminarEditorial.jsp">
                                <input type="hidden" name="idEditorial" value="${item.idEditorial}" />
                                <input type="hidden" name="nombre" value="${item.nombre}" />
                                <input type="hidden" name="pais" value="${item.pais}" />
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