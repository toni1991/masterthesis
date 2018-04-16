public class DependencyInjection {

    public static void main(String... args) {
        Injectable injectable = () -> 42;
        InjectionTarget injectionTarget = new InjectionTarget(injectable);
        injectionTarget.printNumber();
    }

    interface Injectable {
        int getNumber();
    }

    static class InjectionTarget {
        private final Injectable injectable;

        public InjectionTarget(Injectable injectable) {
            this.injectable = injectable;
        }

        public void printNumber() {
            System.out.println(injectable.getNumber());
        }
    }
}