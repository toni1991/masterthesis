public class IfVariableError {

    public static void main(String[] args) {
        long timeMillis = System.currentTimeMillis();

        if (timeMillis > 0 && < Long.MAX_VALUE) {
            System.out.println("We never get here!");            
        }

        if (0 < timeMillis < Long.MAX_VALUE) {
            System.out.println("We never get here either!");            
        }        
    }
}