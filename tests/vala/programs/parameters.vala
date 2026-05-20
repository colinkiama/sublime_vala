public class Processor {
    public void process (ref int value, out string label, params string[] extras) {
        value *= 2;
        label = "processed";
        foreach (var e in extras) {
            stdout.printf ("  extra: %s\n", e);
        }
    }

    public void swap (ref int a, ref int b) {
        int tmp = a;
        a = b;
        b = tmp;
    }
}

void try_parse (string text, out int number, out bool ok) {
    ok = int.try_parse (text, out number);
}

void greet (string name = "world") {
    stdout.printf ("  hello %s\n", name);
}

void main () {
    int n = 5;
    string label;
    var proc = new Processor ();

    proc.process (ref n, out label, "a", "b", "c");
    assert (n == 10);
    assert (label == "processed");

    int x = 1;
    int y = 2;
    proc.swap (ref x, ref y);
    assert (x == 2);
    assert (y == 1);

    int parsed;
    bool parsed_ok;
    try_parse ("42", out parsed, out parsed_ok);
    assert (parsed_ok);
    assert (parsed == 42);

    greet ();
    greet ("vala");

    stdout.printf (
        "parameters ok: n=%d label=%s swap=(%d,%d) parsed=%d\n",
        n, label, x, y, parsed);
}
