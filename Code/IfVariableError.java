public class IfVariableError {

    public static void main(String[] args) {
        long currentTimeMillis = System.currentTimeMillis();

        if (currentTimeMillis > 0 && < Long.MAX_VALUE) {
            System.out.println("We never get here!");            
        }

        if (0 < currentTimeMillis < Long.MAX_VALUE) {
            System.out.println("We never get here either!");            
        }        
    }

}