import java.io.Serializable;

public class GenericExample {

    public static void main(String... args) {
        GenericClass<Exception, Float> genericObject = new GenericClass<>();

        genericObject.decorate(genericObject);
    }

    static class GenericClass<T extends Serializable, S extends Number> {

        T serializableObject;
        S someNumber;

        public <U> String decorate(final U someObject) {
            return "~" + someObject.toString() + "~";
        }
    }

}