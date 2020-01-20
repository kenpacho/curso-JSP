<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: caste
  Date: 16/01/2020
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@page import="java.sql.*" %>


<%
    String nombre= request.getParameter("nombre");

    String apellido= request.getParameter("apellido");

    String usuario= request.getParameter("usuario");

    String contra= request.getParameter("contra");

    String pais= request.getParameter("pais");

    String tecno= request.getParameter("tecnologias");



    try {
        Connection miConexion;


        miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/sqltutorial", "charly", "solyneko");

        Statement miStatement;



        miStatement = miConexion.createStatement();


        String instruccionSql= "INSERT INTO USUARIOS (NOMBRE, APELLIDO, USUARIO, CONTRASEÑA, PAIS, TECNOLOGIA) VALUES ('" + nombre + "', '" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')" ;

        miStatement.executeUpdate(instruccionSql);

    } catch (SQLException e) {
        e.printStackTrace();
    }


%>

</body>
</html>
