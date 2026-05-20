public class Demo : Object {
    public virtual signal void sig () {
        stdout.printf ("  default handler\n");
    }

    public signal void clicked ();
}

public class Sub : Demo {
    public override void sig () {
        stdout.printf ("  overridden default handler\n");
    }
}

string[] event_log;

void record (string line) {
    event_log += line;
}

void main () {
    var demo = new Demo ();
    demo.sig.connect (() => record ("before"));
    demo.sig.connect_after (() => record ("after"));
    demo.sig ();

    assert (event_log.length == 2);
    assert (event_log[0] == "before");
    assert (event_log[1] == "after");

    event_log = {};
    var sub = new Sub ();
    sub.sig.connect (() => record ("sub-before"));
    sub.sig ();
    assert (event_log.length == 1);
    assert (event_log[0] == "sub-before");

    bool clicked_fired = false;
    var widget = new Demo ();
    widget.clicked.connect (() => { clicked_fired = true; });
    widget.clicked.emit ();
    assert (clicked_fired);

    widget.clicked.connect (on_clicked);
    event_log = {};
    widget.clicked.emit ();
    assert (event_log.length == 1);
    assert (event_log[0] == "clicked");

    stdout.printf ("signals ok: connect, connect_after, override, clicked.emit\n");
}

void on_clicked (Demo source) {
    record ("clicked");
    stdout.printf ("  clicked handler (source=%s)\n", source.get_type ().name ());
}
