public class ValueSet {

    private static String errorMessage;

    public static void main(String[] args) {
        setFirstError(true);
        System.out.println(errorMessage);
    }

    private static void setFirstError(boolean value) {
        if (value)
            errorMessage = "The first error occured!";
    }
    
    private static void setSecondError(boolean value) {
        if (value)
            errorMessage = "The second error occured!";
    }

    private static void setThirdError(boolean value) {
        if (value)
            errorMessage = "The third error occured!";
    }
}