<%-- 
    Document   : modificar
    Created on : 26/10/2023, 20:51:32
    Author     : HUAWEI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar producto</title>
        
                <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; 
        }

        h1 {
            text-align: center;
            color: #4287f5;
        }

        form {
            width: 80%;
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form p {
            margin: 10px 0;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background-color: #1a5ca3; 
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 3px;
        }

        button:hover {
            background-color: #4287f5; 
        }
    </style>
        
    </head>
    <body>
        <h1>Modificar registro</h1>

        <form action="ProductosController?accion=actualizar" method="POST" autocomplete="off">

            <input type="hidden" id="id" name="id" value="<c:out value="${producto.id}" />" />

            <p>
                Código: <input type="text" id="codigo" name="codigo" value="<c:out value="${producto.codigo}" />" required />
            </p>

            <p>
                Nombre: <input type="text" id="nombre" name="nombre" value="<c:out value="${producto.nombre}" />" required />
            </p>

            <p>
                Precio: <input type="text" id="precio" name="precio" value="<c:out value="${producto.precio}" />" required />
            </p>

            <p>
                Existencia <input type="text" id="existencia" name="existencia" value="<c:out value="${producto.existencia}" />" required />
            </p>

            <button id="guardar" name="guardar" type="submit">Guardar</button>
        </form>
    </body>
</html>