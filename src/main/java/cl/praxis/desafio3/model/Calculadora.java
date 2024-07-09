package cl.praxis.desafio3.model;

public class Calculadora {public Double suma(Double number1, Double number2){
    Double result= 0d;
    return result = number1 + number2;
}
    public Double resta(Double number1, Double number2){
        Double result= 0d;
        return result = number1 - number2;
    }
    public Double multiplicar(Double number1, Double number2){
        Double result= 0d;
        return result = number1 * number2;
    }
    public Double dividir(Double number1, Double number2){
        Double result= 0d;
        return result = number1 / number2;
    }
    public Boolean parInpar(Double number) {
        if (number % 2 == 0) {
            return true;
        }
        return false;
    }

}
