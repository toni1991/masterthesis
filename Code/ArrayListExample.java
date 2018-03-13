import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;

public class ArrayListExample{
    
    public static void main(String[] args) {
        List<Integer> integerList = new ArrayList<>();
        printListInformation(integerList);
        
        IntStream.range(0, 10)
                 .forEach(value -> integerList.add(value)) ;
        printListInformation(integerList);
        
        integerList.remove(5);
        printListInformation(integerList);
        
        integerList.add(Integer.MAX_VALUE);
        printListInformation(integerList);
    }

    private static void printListInformation(List<Integer> list) {
        System.out.println(
                "Elements: " + Arrays.toString(list.toArray()) + 
                " - Size: " + list.size()
        );
        
    }
}