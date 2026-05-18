// Source: https://docs.vala.dev/sample-code/

public class Calculator : Object {

    public int add (int a, int b) {
        return a + b;
    }

    public static int multiply (int a, int b) {
        return a * b;
    }

    public inline int square (int x) {
        return x * x;
    }

    public async int fetch_value () throws Error {
        yield nap (10);
        return 42;
    }

    public void validate (int x)
        requires (x > 0)
        ensures (result >= 0) {
        result = x;
    }

    private int result;
}

async void nap (uint ms) {
    GLib.Timeout.add (ms, () => {
        nap.callback ();
        return false;
    });
    yield;
}

void main () {
    var calc = new Calculator ();
    calc.validate (5);
}
