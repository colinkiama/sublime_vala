// Source: https://docs.vala.dev/sample-code/

public class FileReader {
    public string read (string path) throws FileError {
        string content;
        FileUtils.get_contents (path, out content);
        return content;
    }
}

void main () {
  try {
        var reader = new FileReader ();
        string text = reader.read ("missing.txt");
        stdout.printf ("%s\n", text);
    } catch (FileError e) {
        stderr.printf ("File error: %s\n", e.message);
    } catch (Error e) {
        stderr.printf ("Error: %s\n", e.message);
    } finally {
        stdout.printf ("done\n");
    }

    throw new FileError.FAILED ("fatal");
}
