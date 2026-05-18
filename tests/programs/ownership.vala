// Source: https://docs.vala.dev/sample-code/

public class Node : Object {
    public string name { get; construct; }
    public Node? next { get; set; }
}

void main () {
    owned string owned_str = "owned";
    unowned string unowned_str = owned_str;
    weak Node? weak_ref = null;

    dynamic Object dyn = new Node () { name = "dynamic" };
    dyn.set_property ("name", "changed");

    Node root = new Node () { name = "root" };
    (owned) root;
    (unowned) root.name;
    (weak) weak_ref;

    foreach (unowned string part in owned_str.split (" ")) {
        stdout.printf ("%s\n", part);
    }

    for (owned int i = 0; i < 3; i++) {
        stdout.printf ("%d\n", i);
    }
}
