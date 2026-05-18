// Source: https://docs.vala.dev/sample-code/

public class Base : Object {
}

public class Derived : Base {
    public int extra;
}

void main () {
    Base? obj = new Derived ();

    if (obj is Derived) {
        var d = (Derived) obj;
        stdout.printf ("%d\n", d.extra);
    }

    Derived? d2 = obj as Derived;
    if (d2 != null) {
        d2.extra = 5;
    }

    int size = sizeof (int);
    Type t = typeof (Derived);

    stdout.printf ("size=%d type=%s\n", size, t.name ());
}
