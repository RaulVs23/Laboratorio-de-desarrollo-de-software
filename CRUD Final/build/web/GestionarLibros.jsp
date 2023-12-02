
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Libros</title>
        <link rel="stylesheet" href="Estilos.css"/>
    </head>
    <body>
        <h1 class="TextoTabla">Gestión de Libros</h1>
        <h2 class="TextoTabla">Listado de Libros</h2>
        <h3 class="textConexion">Conexion: ${mensaje_conexion}</h3><br>
        <a href="/LibreriaBD?accion=AgregarLibro">Agregar Libro</a><br><br>
        <br>
        

        <table class="listadoEmpleado">
            <thead>
                <tr>
                    <th>idLibro</th>
                    <th>titulo</th>
                    <th>isbn</th>
                    <th>idAutor</th>
                    <th>idGenero</th>
                    <th>idEditorial</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaLibros}" var="item">
                    <tr>
                        <td><c:out value="${item.idLibro}" /></td>
                        <td><c:out value="${item.titulo}" /></td>
                        <td><c:out value="${item.isbn}" /></td>                        
                        <td><c:out value="${item.idAutor}" /></td>
                        <td><c:out value="${item.idGenero}" /></td>                        
                        <td><c:out value="${item.idEditorial}" /></td> 
                        
                        <td>
                            
                            <form method="POST" action="/LibreriaBD/ModificarLibro.jsp" >
                                <input type="hidden" name="idLibro" value="${item.idLibro}" />
                                <input type="hidden" name="titulo" value="${item.titulo}" />
                                <input type="hidden" name="isbn" value="${item.isbn}" />
                                <input type="hidden" name="idAutor" value="${item.idAutor}" />
                                <input type="hidden" name="idGenero" value="${item.idGenero}" />
                                <input type="hidden" name="idEditorial" value="${item.idEditorial}" />
                                <input type="submit" value="Modificar" />
                            </form>
                            <form method="POST" action="/LibreriaBD/EliminarLibro.jsp">
                                <input type="hidden" name="idLibro" value="${item.idLibro}" />
                                <input type="hidden" name="titulo" value="${item.titulo}" />
                                <input type="hidden" name="isbn" value="${item.isbn}" />
                                <input type="hidden" name="idAutor" value="${item.idAutor}" />
                                <input type="hidden" name="idGenero" value="${item.idGenero}" />
                                <input type="hidden" name="idEditorial" value="${item.idEditorial}" />
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