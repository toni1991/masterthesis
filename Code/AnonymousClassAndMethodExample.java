package de.masterthesis;

import java.util.function.IntConsumer;
import java.util.stream.IntStream;

public class AnonymousClassAndMethodExample {

    public static void main(String[] args) {
        IntStream.range(0, 10).forEach(new IntConsumer() {
            @Override
            public void accept(int value) {
                System.out.print(value + " ");
            }
        });
        System.out.println();
        IntStream.range(0, 10).forEach(value -> {
            System.out.print(value + " ");
        });
    }
}