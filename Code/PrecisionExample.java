import java.math.BigDecimal;

public class FloatingPoint {
    public static void main(String[] args) {
        float notPrecisely = 0.65f;
        System.out.printf("%.23f == 0.65 -> %s\n", 
                notPrecisely, (notPrecisely == 0.65));

        BigDecimal notPreciselyBigDecimal = new BigDecimal(0.65f);
        System.out.println(notPreciselyBigDecimal);

        BigDecimal preciselyBigDecimal = new BigDecimal("0.65");
        System.out.println(preciselyBigDecimal);
    }
}
