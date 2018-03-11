public class Arrays {

    public static void main(String[] args) {
        int[] intArray = new int[10];
        
        for(int counter = 0; counter < intArray.length; counter++)
        {
            intArray[counter] = counter; 
        }
    }
}