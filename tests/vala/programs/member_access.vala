public struct Point {
    public int value;
}

public class Node : Object {
    public Node? child { get; set; }
    public int value;
}

void main () {
    var root = new Node ();
    root.value = 1;
    root.child = new Node () { value = 2 };

    stdout.printf ("dot access: %d\n", root.child.value);

    if (root.child != null) {
        stdout.printf ("null-safe read: %d\n", root.child?.value);
    }

    stdout.printf ("qualified access: %s\n", Environment.get_home_dir ());

    Point p = Point () { value = 5 };
    Point* ptr = &p;
    ptr->value = 10;
    stdout.printf ("pointer -> access: %d\n", ptr->value);

    unowned Node n = root;
    stdout.printf ("unowned reference: %d\n", n.value);
}
