public class Union {

    private int heightInCm;
    private String firstName;
    private String surname;

    public int getHeightInCentimeter() {
        return heightInCm;
    }

    public float getHeightInMeter() {
        return heightInCm / 100f;
    }
    
    public String getFullName() {
        return firstName + " " + surname;
    }
}