// Source: https://docs.vala.dev/sample-code/signals-and-callbacks.html

class Foo : Object {
    public signal void some_event ();

    public void method () {
        some_event ();
    }
}

void callback_a () {
    stdout.printf ("Callback A\n");
}

void callback_b () {
    stdout.printf ("Callback B\n");
}

void main () {
    var foo = new Foo ();
    foo.some_event.connect (callback_a);
    foo.some_event.connect (callback_b);
    foo.method ();
}
