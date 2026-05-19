public class Counter : Object {
    private int _count;
    private Mutex mutex = Mutex ();

    public void increment () {
        mutex.lock ();
        _count++;
        mutex.unlock ();
    }

    public int count {
        get {
            mutex.lock ();
            int c = _count;
            mutex.unlock ();
            return c;
        }
    }
}

void main () {
    var counter = new Counter ();
    lock (counter) {
        counter.increment ();
    }

    Object? obj = new Counter ();
    delete obj;

    using (var file = FileStream.open ("data.txt", "r")) {
        if (file != null) {
            string line = file.read_line ();
            stdout.printf ("%s", line);
        }
    }

    var resource = new Counter ();
    using (resource) {
        resource.increment ();
    }
}
