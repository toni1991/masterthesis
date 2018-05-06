import java.util.stream.IntStream;

public class Loops {

    public static void main(String... args) {
        int number = 0;
        while (number < 10) {
            number++;
        }

        number = 0;
        do {
            number++;
        } while (number < 10);

        for (number = 0; number < 10; number++) {
            System.out.println(number);
        }

        for (Integer num : IntStream.range(0, 10).toArray()) {
            System.out.println(num);
        }
    }
}