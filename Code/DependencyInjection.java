public class DependencyInjection {
    public static void main(String... args) {
        Injectable inj = () -> 42;
        InjectionTarget injTarget = new InjectionTarget(inj);
        injTarget.printNumber();
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