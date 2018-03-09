public class MyCalendar {

    public void printMonthDays(int month)
    {
        switch(month){
            case 1: case 3:
            case 5: case 7:
            case 8: case 10:
            case 12:
                System.out.println("This Month has 31 days.");
                break;

            case 2:
                System.out.println("This Month has either 28 or 29 days.");
                break;
                
            case 4: case 5:
            case 9: case 11:
                System.out.println("This Month has 30 days.");
                break;


            default:
                System.out.println("Month is not valid");
                break;
        }
    }
}