<%--
  Created by IntelliJ IDEA.
  User: Puchi
  Date: 01-07-2024
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String message = (String)request.getAttribute("message");%>

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
<h1>Error</h1>
<p>Por favor, ingrese valores numéricos válidos.</p>
<a href="index.jsp">Volver</a>
</body>
</html>
