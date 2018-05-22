import java.time.Instant;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ObserverPattern {
    public static void main(String[] args) {
        TimeObservable timeObservable = new TimeObservable();
        Observer plainObserver = ((o, arg) -> System.out.println("PlainTime: " + arg));
        timeObservable.addObserver(plainObserver);
        timeObservable.addObserver(new FormattedObserver());
        timeObservable.startObservable();
    }

    static class FormattedObserver implements Observer {
        public void update(Observable o, Object arg) {
            System.out.println("FormattedTime: " + Instant.ofEpochMilli((long) arg).toString());
        }
    }

    static class TimeObservable extends Observable {
        private ScheduledExecutorService executor = Executors.newScheduledThreadPool(3);

        public void startObservable() {
            for (int delay : new int[] { 1, 3, 5 }) {
                executor.schedule(() -> {
                    setChanged();
                    notifyObservers(System.currentTimeMillis());
                }, delay, TimeUnit.SECONDS);
            }
        }
    }
}