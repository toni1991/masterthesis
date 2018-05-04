public class VariableExample {

    final int CONSTANT_VARIABLE = 1907;
    int primitiveClassVariable = 0;
    VariableExample complexClassVariable = null;

    public static void main(String[] args) {
        // CONSTANT_VARIABLE = 1860 -> Fehler
        int primitiveLocalVariable = 1;
        VariableExample complexLocalVariable = new VariableExample();
    }

}