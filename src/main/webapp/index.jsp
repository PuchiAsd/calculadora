<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h1 class="card-title">Calculadora</h1>
        </div>
        <div class="card-body">
            <form action="calculo-servlet" method="post">
                <div class="form-group">
                    <label for="number1">Número 1:</label>
                    <input type="text" class="form-control" id="number1" name="number1" required>
                </div>
                <div class="form-group">
                    <label for="number2">Número 2:</label>
                    <input type="text" class="form-control" id="number2" name="number2" required>
                </div>
                <div class="form-group">
                    <label for="operator">Operación:</label>
                    <select class="form-control" id="operator" name="operator">
                        <option value="suma">Suma</option>
                        <option value="resta">Resta</option>
                        <option value="multiplicacion">Multiplicación</option>
                        <option value="division">División</option>
                        <option value="ordenar">Ordenar</option>
                        <option value="parImpar">Par e Impar</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Calcular</button>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXlCU6i8bV7C5JSkvF6HB4U6mlg4kOK/oK0wGnEhsBv0EVmgV/aW9o5/Iv8/ArHJJtp3Svy0z3zM39L7vH42SAyPnbITeaMsd6GlybxhvT" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-LtrjvnR4mWC0B6xLYpG5TVbP+eFRAn/5eR9j/N6o4DUNN4/6iL7pTO8G8B3vGvZX" crossorigin="anonymous"></script>
</body>
</html>
