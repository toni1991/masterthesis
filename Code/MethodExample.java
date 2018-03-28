public class MethodExample {

    public void printGreeting(String greeting) {
        System.out.println(greeting);
    }

    public String getGreeting(String firstName, String surname) {
        return String.format("Hello %s %s!", firstName, surname);
    }

    public void process() {
        String greeting = getGreeting("Max", "Mustermann");
        printGreeting(greeting);
    }
}