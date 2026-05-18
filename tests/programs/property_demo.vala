// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/properties-sample.html

public class PropertyDemo : Object {

    private string _name;
    private string _read_only;

    public string automatic { get; set; }

    public string name {
        get { return _name; }
        set { _name = value; }
    }

    public string read_only {
        get { return _read_only; }
    }

    public PropertyDemo (string name) {
        this.automatic = "InitialAutomatic";
        _name = name;
        _read_only = "InitialReadOnly";
    }
}

void main () {
    var demo = new PropertyDemo ("InitialName");

    demo.notify.connect ((s, p) => {
        stdout.printf ("property '%s' has changed!\n", p.name);
    });

    demo.automatic = "TheNewAutomatic";
    demo.name = "TheNewName";

    stdout.printf ("automatic: %s\n", demo.automatic);
    stdout.printf ("name: %s\n", demo.name);
    stdout.printf ("read_only: %s\n", demo.read_only);
}
