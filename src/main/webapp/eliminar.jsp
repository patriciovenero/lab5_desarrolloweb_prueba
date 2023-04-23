<%-- 
    Document   : eliminar
    Created on : 22/04/2023, 09:13:53 PM
    Author     : finea
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="1234"/>

<%
    // Obtener el código de usuario a eliminar de los parámetros de solicitud
    String codigo = request.getParameter("codigo");

    // Verificar si el código no es nulo o vacío
    if (codigo != null && !codigo.isEmpty()) {
        try {
            // Eliminar el usuario de la base de datos usando SQL
            String sql = "DELETE FROM t_usuarios WHERE codigo = ?";
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC", "root", "1234");
                 PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, codigo);
                stmt.executeUpdate();
            }

            // Redirigir al usuario de vuelta a la página de listado de usuarios
            response.sendRedirect("jstl_sql_a.jsp");
        } catch (Exception e) {
            out.println("Error al eliminar usuario: " + e.getMessage());
        }
    } else {
        out.println("Código de usuario no especificado");
    }
%>
