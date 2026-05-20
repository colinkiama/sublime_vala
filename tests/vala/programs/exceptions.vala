public errordomain AppError {
    INVALID_INPUT
}

public class FileReader {
    public string read (string path) throws FileError {
        string content;
        FileUtils.get_contents (path, out content);
        return content;
    }

    public string read_checked (string path) throws FileError, AppError {
        if (path.length == 0) {
            throw new AppError.INVALID_INPUT ("empty path");
        }
        return read (path);
    }
}

void main (string[] args) {
    try {
        var reader = new FileReader ();

        if (args.length > 1) {
            switch (args[1]) {
            case "invalid":
                reader.read_checked ("");
                break;
            case "fatal":
                throw new FileError.FAILED ("fatal");
            default:
                string text = reader.read ("missing.txt");
                stdout.printf ("%s\n", text);
                break;
            }
        } else {
            string text = reader.read ("missing.txt");
            stdout.printf ("%s\n", text);
        }
    } catch (FileError e) {
        stderr.printf ("File error: %s\n", e.message);
    } catch (Error e) {
        stderr.printf ("Error: %s\n", e.message);
    } finally {
        stdout.printf ("done\n");
    }
}
