public class Level88
{
    private int VAR;
    
    public Level88() {
        this.VAR = 10;
    }
    
    public void setVAR(int value) {
        VAR = value;
    }
    
    public int getVAR() {
        return VAR;
    }
    
    public void setISLOWERTEN(boolean value) {
        if(value)
            setVAR(0);
    }
    
    public boolean getISLOWERTEN() {
        return (0 <= value && value <= 9);
    }
}