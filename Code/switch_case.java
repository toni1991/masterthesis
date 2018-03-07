public class MySystem {

    enum Status {
        STARTED, SHUTTING_DOWN, HALTED
    }

    public boolean isReady(Status status)
    {
        boolean isReady;
        switch(status){
            case STARTED: 
                isReady =  true;
                break;

            case SHUTTING_DOWN:
            case HALTED:
            default:
                isReady = false;
                break;
        }

        return isReady;
    }
}