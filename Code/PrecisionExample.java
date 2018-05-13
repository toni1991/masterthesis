public class PrecisionExample {

    public static void main(String[] args) {
        float number = 0.5f;
        int numberInt = Float.floatToIntBits(number);
        printFloatAndBinary(number, numberInt);

        numberInt++;
        number = Float.intBitsToFloat(numberInt);
        printFloatAndBinary(number, numberInt);

        number = 0.50000002f;
        numberInt = Float.floatToIntBits(number);
        printFloatAndBinary(number, numberInt);
    }

    public static void printFloatAndBinary(float number, int binary) {
        System.out.println(
                String.format("%.8f = %s", number, 
                        Integer.toBinaryString(binary))
        );
    }

}