<%-- 
    Document   : jstl_enviar
    Created on : 18/04/2023, 12:14:12 PM
    Author     : finea
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
            <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava05/Controlador">
                <div style="width: 250px; text-align: center; margin: 50px auto;">
                <h1>Generar Tabla de Multiplicar</h1>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Seleccione la tabla a generar:</label>
                    <select name="tabla" class="form-control" id="exampleFormControlSelect1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </div>
            </form>
        </div>
    </body>

    </body>
</html>
