public class Widget : Object {
    public string label { get; construct; }

    construct {
        stdout.printf ("instance construct\n");
    }

    static construct {
        stdout.printf ("static construct\n");
    }

    ~Widget () {
        stdout.printf ("destructor\n");
    }
}

void main () {
    var w = new Widget () { label = "Hello" };
}
