package cl.praxis.desafio3.model;

public class Validation {
    public boolean emptyValidation(String number1, String number2){
        if(number1 == null || number1.isEmpty() || number2 == null || number2.isEmpty()){
            return false;
        }
        return true;
    }
    public boolean letterNumberValidation(String number1, String number2){
        if(!isNumeric(number1) || !isNumeric(number2)){
            return true;
        }
        return false;
    }
    private boolean isNumeric(String number){
        try{
            Integer.parseInt(number);
            return true;
        }catch (NumberFormatException e){
            return false;
        }
    }
}
