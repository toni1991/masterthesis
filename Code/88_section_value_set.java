public class ValueSet {

    enum ErrorMessage {
        FIRST_ERROR("The first error occured!"),
        SECOND_ERROR("The second error occured!"),
        THIRD_ERROR("The third error occured!");

        private String message;

        private ErrorMessage(String message){
            this.message = message;
        }

        String getMessage(){
            return this.message;
        }
    }

    public static void main(String[] args) {
        ErrorMessage errorMessage = ErrorMessage.SECOND_ERROR;
        System.out.println(errorMessage.getMessage());
    }
}