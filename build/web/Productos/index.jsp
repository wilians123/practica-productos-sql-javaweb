<%-- 
    Document   : index
    Created on : 26/10/2023, 20:51:17
    Author     : HUAWEI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f7f9;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            background-color: #3498db;
            color: #fff;
            padding: 20px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        td {
            background-color: #ffffff;
        }

        .right-align {
            margin-top: 10px;
            margin-left: 750px;
        }

        button {
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            background-color: #4CAF50;
             color: #fff;
            border-radius: 10px;
            
       
        }


        .button-primary {
            background-color: #4CAF50;
            color: #fff;
        }

        .button-danger {
            background-color: #FF5733;
            color: #fff;
        }
    </style>
    
    </head>
    <body>
        
               
        <h1>Productos</h1>

         <div class="right-align">
        <button type="button" onclick="window.location.href='ProductosController?accion=nuevo'">Nuevo producto</button>
        </div>

        
        <table border="1" width="80%">
            <thead>
            <th>Código</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Existencia</th>
            <th>Acciones</th>
        </thead>

        <tbody>
            <c:forEach var="producto" items="${lista}">
                <tr>
                    <td><c:out value="${producto.codigo}" /></td>
                    <td><c:out value="${producto.nombre}" /></td>
                    <td><c:out value="${producto.precio}" /></td>
                    <td><c:out value="${producto.existencia}" /></td>
                <td>
  <button class="button-primary" type="button" onclick="if (confirm('¿Estás seguro de que quieres modificar este producto?')) { window.location.href='ProductosController?accion=modificar&id=<c:out value="${producto.id}" />' }">Modificar</button>
  <button class="button-danger" type="button" onclick="if (confirm('¿Estás seguro de que quieres eliminar este producto?')) { window.location.href='ProductosController?accion=eliminar&id=<c:out value="${producto.id}" />' }">Eliminar</button>
</td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>