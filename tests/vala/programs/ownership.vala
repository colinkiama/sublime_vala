public class Node : Object {
    public string name { get; construct set; }
    public weak Node? partner { get; set; }

    public Node (string name) {
        Object (name: name);
    }
}

void consume_label (owned string label) {
    stdout.printf ("consume: %s\n", label);
}

void main () {
    string owned_str = "owned data";
    unowned string view = owned_str;
    assert (view == "owned data");

    dynamic Object dyn = new Node ("dynamic");
    dyn.set_property ("name", "changed");
    var resolved = (Node) dyn;
    assert (resolved.name == "changed");

    Node a = new Node ("alpha");
    Node b = new Node ("beta");
    a.partner = b;
    weak Node? weak_b = b;

    assert (a.partner.name == "beta");
    assert (weak_b != null);
    assert (weak_b.name == "beta");

    unowned string a_name = a.name;
    assert (a_name == "alpha");

    consume_label ((owned) owned_str);

    foreach (unowned string part in "one two three".split (" ")) {
        stdout.printf ("part: %s\n", part);
    }

    for (int i = 0; i < 3; i++) {
        stdout.printf ("i: %d\n", i);
    }

    stdout.printf ("ownership ok: %s partner %s\n", a.name, weak_b.name);
}
