<%--
  Created by IntelliJ IDEA.
  User: Puchi
  Date: 01-07-2024
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String resultado = (String)request.getAttribute("result");
    String calculus = (String)request.getAttribute("calculo");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
<h1>Resultado</h1>
<p>${resultado}</p>
<a href="index.jsp">Volver</a>
</body>
</html>
