public class IfVariableNoError {

    public static void main(String[] args) {
        long timeMillis = System.currentTimeMillis();
        if (0 < timeMillis && timeMillis < Long.MAX_VALUE) {
            System.out.println("We get here everytime!");            
        }
    }
}