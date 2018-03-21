public class BreakContinueLabelExample {

    public static void main(String[] args) {
        breakLabelExample();
        continueLabelExample();
    }

    private static void breakLabelExample() {
        System.out.println("\n== break label example == ");
        outerLoop: 
        for (int oCounter = 0; oCounter < 10; oCounter++) {
            for (int iCounter = 0; iCounter < 10; iCounter++) {
                if (oCounter > 2 || iCounter > 2)
                    break outerLoop;
                System.out.print(String.format("(%s %s)", oCounter, iCounter));
            }
        }
    }

    private static void continueLabelExample() {
        System.out.println("\n== continue label example == ");
        outerLoop: 
        for (int oCounter = 0; oCounter < 10; oCounter++) {
            for (int iCounter = 0; iCounter < 10; iCounter++) {
                if (oCounter > 2 || iCounter > 2)
                    continue outerLoop;
                System.out.print(String.format("(%s %s)", oCounter, iCounter));
            }
        }
    }
}