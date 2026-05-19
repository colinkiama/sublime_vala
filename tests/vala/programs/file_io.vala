void main () {
    try {
        string filename = "data.txt";

        string content = "hello, world";
        FileUtils.set_contents (filename, content);

        string read;
        FileUtils.get_contents (filename, out read);

        stdout.printf ("The content of file '%s' is:\n%s\n", filename, read);
    } catch (FileError e) {
        stderr.printf ("%s\n", e.message);
    }
}
