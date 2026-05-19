int main (string[] args) {
    var list = new List<string> ();
    list.append ("one");
    list.append ("two");
    list.append ("three");

    stdout.printf ("list.length () = %u\n", list.length ());

    for (int i = 0; i < list.length (); i++) {
        stdout.printf ("%s\n", list.nth_data (i));
    }

    foreach (string element in list) {
        stdout.printf ("%s\n", element);
    }

    return 0;
}
