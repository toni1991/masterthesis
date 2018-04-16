public class Pope {

    private static Pope instance = null;

    private Pope() {}

    public static Pope getInstance() {
        if (instance == null) {
            instance = new Pope();
        }
        return instance;
    }

    public static void die() {
        instance = null;
    }
}