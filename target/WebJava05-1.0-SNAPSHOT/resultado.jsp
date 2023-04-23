<%-- 
    Document   : resultado
    Created on : 22/04/2023, 06:06:55 PM
    Author     : finea
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
        <title>Resultado</title>
    </head>
    <body>
        <h1>Resultado:</h1>
        <p>El resultado de la operación es: <%= request.getAttribute("resultado")%></p>
    </body>
</html>
