public class Node : Object {
    public Node? child { get; set; }
    public int value;
}

void main () {
    var root = new Node ();
    root.value = 1;
    root.child = new Node ();

    root.child.value = 2;
    root.child?.value = 3;

    GLib.global::FileUtils.get_path (".");

    unowned Node n = root;
    n->value = 10;

    Node? ptr = root;
    ptr->value = 10;
}
