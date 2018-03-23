package de.masterthesis;

import java.util.stream.IntStream;

public class AnonymousClassAndMethodExample {

    public static void main(String[] args) {
        anonymousMethodExample();
        anonymousClassExample();
    }

    private static void anonymousMethodExample() {
        IntStream.range(0, 10)
            .forEach((int number) -> System.out.println(number));
    }

    private static void anonymousClassExample() {
        Outputter ageOutputter = new Outputter() {
            @Override
            public void outputData(Object data) {
                System.out.println("Your are " + data + "years old!");
            }
        };
    }

    interface Outputter {
        void outputData(Object data);
    }

}