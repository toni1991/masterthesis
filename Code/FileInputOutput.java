import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileInputOutput {

    private final static Path filePath = FileSystems.getDefault().getPath("file.txt");

    public static void main(String... args) {
        writeFile();
        readFile();
    }

    private static void writeFile() {
        String s = "I'm getting written to the File\n";

        try (BufferedWriter writer = 
            Files.newBufferedWriter(filePath, StandardCharsets.UTF_8)) {
            writer.write(s, 0, s.length());
        } catch (IOException x) {
            System.err.format("IOException: %s%n", x);
        }
    }

    private static void readFile() {
        try (InputStream in = Files.newInputStream(filePath);
                BufferedReader reader = new BufferedReader(new InputStreamReader(in))) {
            String line = null;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException x) {
            throw new RuntimeException(x);
        }
    }
}