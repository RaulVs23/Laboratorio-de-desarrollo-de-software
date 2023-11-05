<%-- 
    Document   : GestionarEmpleados
    Created on : 4 nov 2023, 22:36:46
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Empleados</title>
    </head>
    <body>
        <h1>Gestión de Empleados</h1>
        <h2>Listado de Empleados</h2>
        <br>
        <h3>Conexion: ${mensaje_conexion}</h3>

        <table border="1">
            <thead>
                <tr>
                    <th>empleadoID</th>
                    <th>nombre</th>
                    <th>apellido</th>
                    <th>cargo</th>
                    <th>email</th>
                    <th>telefono</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listaEmpleados}" var="item">
                    <tr>
                        <td><c:out value="${item.empleadoID}" /></td>
                        <td><c:out value="${item.nombre}" /></td>
                        <td><c:out value="${item.apellido}" /></td>                        
                        <td><c:out value="${item.cargo}" /></td>
                        <td><c:out value="${item.email}" /></td>
                        <td><c:out value="${item.telefono}" /></td>
                         
                    </tr>
                </c:forEach>
            </tbody>            
        </table>
    </body>
</html>
