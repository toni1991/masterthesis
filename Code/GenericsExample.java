import java.io.Serializable;

public class GenericExample {
    public static void main(String... args) {
        GenericType<Exception, Float> generic = new GenericType<>();
        generic.decorate(generic);
    }

    static class GenericType<T extends Serializable, S extends Number> {
        T serializableObject;
        S someNumber;
        public <U> String decorate(final U someObject) {
            return "~" + someObject.toString() + "~";
        }
    }
}