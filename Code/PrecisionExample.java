import java.math.BigDecimal;

public class PrecisionExample {

    public static void main(String[] args) {
        double dValue1 = 99999.8;
        double dValue2 = 99999.65;
        System.out.println("Double addition: " + (dValue1 + dValue2));

        float fValue1 = 99999.8f;
        float fValue2 = 99999.65f;
        System.out.println("Float addition: " + (fValue1 + fValue2));

        BigDecimal bValue1 = new BigDecimal("99999.8");
        BigDecimal bValue2 = new BigDecimal("99999.65");
        System.out.println("BigDecimal addition: " + (bValue1.add(bValue2).toPlainString()));
    }
}