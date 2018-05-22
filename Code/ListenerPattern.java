import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ListenerPattern {

    public static void main(String[] args) {
        TimeProducer timeProducer = new TimeProducer();
        TimeListener plainListener = new TimeListener() {
            public void printTime(long timeMillis) {
                System.out.println("PlainTime: " + timeMillis);
            }
        };
        FormattedListener formattedListener = new FormattedListener();
        timeProducer.registerListener(plainListener);
        timeProducer.registerListener(formattedListener);
        timeProducer.start();
    }

    interface TimeListener {
        void printTime(long timeMillis);
    }

    static class FormattedListener implements TimeListener {
        public void printTime(long timeMillis) {
            System.out.println("FormattedTime: " + 
                Instant.ofEpochMilli(timeMillis).toString());
        }
    }

    static class TimeProducer {

        private ScheduledExecutorService executor = Executors.newScheduledThreadPool(3);
        private List<TimeListener> timeListeners = new ArrayList<>();

        void registerListener(TimeListener timeListener) {
            timeListeners.add(timeListener);
        }

        void notifyListeners(long value) {
            timeListeners.forEach(listener -> listener.printTime(value));
        }

        void start() {
            for (int delay : new int[] { 1, 3, 5 }) {
                executor.schedule(
                    () -> notifyListeners(System.currentTimeMillis()), 
                    delay, TimeUnit.SECONDS);
            }
        }
    }
}