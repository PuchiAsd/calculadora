package cl.praxis.desafio3.service;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import cl.praxis.desafio3.model.Calculadora;
import cl.praxis.desafio3.model.Validation;
import java.io.IOException;

@WebServlet(name="calcServlet", value="/calculo-servlet")
public class Calculoservlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String number1 = req.getParameter("number1");
        String number2 = req.getParameter("number2");
        String operator = req.getParameter("operator");
        String message;
        Validation validate = new Validation();

        // Verificar que el numero ingresado no este vacio
        Boolean resultValidate = validate.emptyValidation(number1, number2);
        Boolean resultValidateNumeric = validate.letterNumberValidation(number1, number2);
        Calculadora calculator = new Calculadora();

        if (!resultValidate) {
            message = "Uno o mas campos vacios";
            req.setAttribute("message", message);
            req.getRequestDispatcher("mensajeError.jsp").forward(req, resp);
        } else if (resultValidateNumeric) {
            message = "Tienen que ser valores numericos";
            req.setAttribute("message", message);
            req.getRequestDispatcher("mensajeError.jsp").forward(req, resp);
        } else {
            Double num = Double.parseDouble(number1);
            Double num2 = Double.parseDouble(number2);
            String result = null; // inicializa el resultado
            switch (operator) {
                case "suma":
                    result = String.valueOf(calculator.suma(num, num2));
                    req.setAttribute("calculo", "Suma");
                    break;
                case "resta":
                    result = String.valueOf(calculator.resta(num, num2));
                    req.setAttribute("calculo", "Resta");
                    break;
                case "multiplicacion":
                    result = String.valueOf(calculator.multiplicar(num, num2));
                    req.setAttribute("calculo", "Multiplicacion");
                    break;
                case "division":
                    if (num2 > 0) {
                        result = String.valueOf(calculator.dividir(num, num2));
                        req.setAttribute("calculo", "Division");
                    } else {
                        message = "no puedes dividir por 0";
                        req.setAttribute("message", message);
                        req.getRequestDispatcher("mensajeError.jsp").forward(req, resp);
                        return; // Return here to avoid further processing
                    }
                    break;
                case "ordenar":
                    if (num > num2) {
                        result = num + " - " + num2;
                    } else {
                        result = num2 + " - " + num;
                    }
                    req.setAttribute("calculo", "Ordenar");
                    break;
                case "parImpar":
                    Boolean par1 = calculator.parInpar(num);
                    Boolean par2 = calculator.parInpar(num2);
                    result = (par1 ? "Par: " + num : "Impar: " + num) + " - " +
                            (par2 ? "Par: " + num2 : "Impar: " + num2);
                    req.setAttribute("calculo", "Par Impar");
                    break;
            }

            req.setAttribute("result", result);
            req.getRequestDispatcher("resultado.jsp").forward(req, resp);
        }
    }
}
