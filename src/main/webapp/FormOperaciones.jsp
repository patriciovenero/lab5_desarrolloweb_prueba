<%-- 
    Document   : FormOperaciones
    Created on : 22/04/2023, 05:51:56 PM
    Author     : finea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />

        <title>Operaciones Matematicas</title>
    </head>
    <h1>Problemas aritmeticos</h1>
    <form action="/WebJava05/Controladorprueba" method="post"><br><br>
        <label for="numero1">Primer número:</label>
        <input type="number" name="numero1" id="numero1"><br><br>

        <label for="numero2">Segundo número:</label>
        <input type="number" name="numero2" id="numero2"><br><br>

        <label for="operacion">Operación:</label>
        <select name="operacion" id="operacion">
            <option value="suma">Suma</option>
            <option value="resta">Resta</option>
            <option value="multiplicacion">Multiplicación</option>
            <option value="division">División</option>
        </select><br><br>

        <button type="submit">Calcular</button>
    </form>
</html>