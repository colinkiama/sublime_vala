// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/properties-sample.html

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

construct {
    stdout.printf ("translation-unit construct block\n");
}

void main () {
    var w = new Widget () { label = "Hello" };
}
