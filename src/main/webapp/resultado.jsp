<%--
  Created by IntelliJ IDEA.
  User: Puchi
  Date: 01-07-2024
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String resultado = (String)request.getAttribute("result");
    String operacion = (String)request.getAttribute("calculo");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h1 class="card-title text-center">Resultado Calculadora</h1>
            </div>
            <div class="card-body">
                <p>El resultado es: <%= resultado %></p>
                <p>Operación: <%= operacion %></p>

            </div>
            <div class="card-footer">
                <a class="btn btn-primary" href="index.jsp">Volver</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXlCU6i8bV7C5JSkvF6HB4U6mlg4kOK/oK0wGnEhsBv0EVmgV/aW9o5/Iv8/ArHJJtp3Svy0z3zM39L7vH42SAyPnbITeaMsd6GlybxhvT" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-LtrjvnR4mWC0B6xLYpG5TVbP+eFRAn/5eR9j/N6o4DUNN4/6iL7pTO8G8B3vGvZX" crossorigin="anonymous"></script>

</body>
</html>
