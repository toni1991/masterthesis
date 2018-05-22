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

        for (int num : new int[] { 0, 1, 2, 3, 4, 5 }) {
            System.out.println(num);
        }
    }
}