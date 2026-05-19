public delegate void Notify (string message);

public class Processor {
    public void process (ref int value, out string label, params string[] extras) {
        value *= 2;
        label = "processed";
        foreach (var e in extras) {
            stdout.printf ("%s\n", e);
        }
    }

    public void swap (ref int a, ref int b) {
        int tmp = a;
        a = b;
        b = tmp;
    }
}

void main () {
    int n = 5;
    string result;
    var proc = new Processor ();
    proc.process (ref n, out result, "a", "b", "c");
    int m = 1;
    proc.swap (ref n, ref m);
}
