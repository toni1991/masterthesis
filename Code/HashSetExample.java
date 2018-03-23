import java.util.HashSet;
import java.util.Set;
import java.util.stream.IntStream;

public class HashSetExample {

    public static void main(String[] args) {
        Set<Integer> integerSet = new HashSet<>();

        IntStream.range(0, 10).forEach(number -> integerSet.add(number));
        integerSet.forEach(number -> System.out.print(number + " "));

        System.out.println();

        IntStream.range(5, 15).forEach(number -> integerSet.add(number));
        integerSet.forEach(number -> System.out.print(number + " "));
    }
}