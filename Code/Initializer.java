public class Initializer {

    static { // static initializer
        System.out.println("Executed once for class on load");
    }

    {   // initializer
        System.out.println("Called once for every instance");
    }

    public Initializer() {
        System.out.println("Executed after all initializers");
    }

    public static void main(String[] args) {
        System.out.println("main: start");
        Initializer initializer = new Initializer();
        System.out.println("main: termination");
    }
}