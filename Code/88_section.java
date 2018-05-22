public class EightyEight{
    
    public static void main(String[] args) {
        AgeCheck ageCheck = new AgeCheck();
        printAgeInformation(ageCheck);
        ageCheck.setAge(18);
        printAgeInformation(ageCheck);
    }

    public static void printAgeInformation(AgeCheck ageCheck)
    {
        System.out.println(
            String.format(
                "Age %s is %s!", 
                ageCheck.getAge(), 
                ageCheck.isAdult() ? "adult":"underage"
            )
        );
    }
    static class AgeCheck {
        private int age;
        
        public AgeCheck() {
            age = 13;
        }
        
        public void setAge(int newAge) {
            age = newAge;
        }
        
        public int getAge() {
            return age;
        }
        
        public boolean isUnderage() {
            return (0 <= age && age <= 17);
        }
        
        public boolean isAdult() {
            return (age >= 18);
        }          
    }
}