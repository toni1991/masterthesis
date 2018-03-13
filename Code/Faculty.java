public class Faculty{
    
    public static void main(String[] args) {
        System.out.println(faculty(5));
    }

    public static long faculty(long number)
    {
        if(number == 0) {
            return 1;
        }
        else {
            return number * faculty(number-1);
        }
    }
}