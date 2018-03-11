public class IfVariableNoError {

    public static void main(String[] args) {
        long currentTimeMillis = System.currentTimeMillis();
        if (0 < currentTimeMillis && currentTimeMillis < Long.MAX_VALUE) {
            System.out.println("We get here everytime!");            
        }
    }
}