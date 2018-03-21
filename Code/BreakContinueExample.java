public class BreakContinueExample {

    public static void main(String[] args) {
        breakExample();
        continueExample();
    }

    private static void breakExample() {
        System.out.println("\n== break example == ");
        for (int counter = 0; counter < 10; counter++) {
            if (counter > 1 && counter < 8)
                break;
            System.out.print("(" + counter + ")");
        }
    }

    private static void continueExample() {
        System.out.println("\n== continue example == ");
        for (int counter = 0; counter < 10; counter++) {
            if (counter > 2 && counter < 8)
                continue;
            System.out.print("(" + counter + ")");
        }
    }
}