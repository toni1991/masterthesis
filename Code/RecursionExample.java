public class RecursionExample {

    public static int facultyRecursive(int number) {
        if (number <= 1)
            return 1;
        return number * facultyRecursive(number - 1);
    }

    public static int facultyIterative(int number) {
        int product = 1;
        while (number > 1) {
            product = product * number;
            number--;
        }
        return product;
    }
}