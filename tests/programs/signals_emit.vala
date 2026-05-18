// Source: https://docs.vala.dev/sample-code/signals-and-callbacks.html

public class Demo : Object {
    public virtual signal void sig () {
        stdout.printf ("default handler\n");
    }

    public signal void clicked ();
}

public class Sub : Demo {
    public override void sig () {
        stdout.printf ("overridden default handler\n");
    }
}

void main () {
    var demo = new Demo ();
    demo.sig.connect (() => stdout.printf ("before\n"));
    demo.sig.connect_after (() => stdout.printf ("after\n"));
    demo.sig ();

    var widget = new Demo ();
    widget.clicked.connect (on_clicked);
    widget.emit ("clicked");
}

void on_clicked (Demo source) {
    stdout.printf ("clicked\n");
}
