[DBus (name = "org.example.Demo")]
public class DemoServer : Object {

    private int counter;

    public int ping (string msg) {
        stdout.printf ("%s\n", msg);
        return counter++;
    }

    public signal void pong (int count, string msg);
}

[DBus (name = "org.example.DemoError")]
public errordomain DemoError {
    SOME_ERROR
}

void on_bus_acquired (DBusConnection conn) {
    try {
        conn.register_object ("/org/example/demo", new DemoServer ());
    } catch (IOError e) {
        stderr.printf ("Could not register service\n");
    }
}

void main () {
    Bus.own_name (BusType.SESSION, "org.example.Demo", BusNameOwnerFlags.NONE,
                  on_bus_acquired,
                  () => {},
                  () => stderr.printf ("Could not acquire name\n"));

    new MainLoop ().run ();
}
