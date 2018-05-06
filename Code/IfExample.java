import java.util.Scanner;

public class IfExample {

    public static void main(String... args) {
        int number = new Scanner(System.in).nextInt();
        if (number == 0) {
            System.out.println("Number is 0");
            System.out.println("Number is still 0");
        } else
            System.out.println("Number is not 0");
    }
}