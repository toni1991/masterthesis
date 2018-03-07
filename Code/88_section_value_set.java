public class ValueSet {

    private static final String FIRST_ERROR = "The first error occured!";
    private static final String SECOND_ERROR = "The second error occured!";
    private static final String THIRD_ERROR = "The third error occured!";
    
    private static String errorMessage;

    public static void main(String[] args) {
        errorMessage = SECOND_ERROR;
        System.out.println(errorMessage);
    }
}