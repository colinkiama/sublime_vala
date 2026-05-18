// Source: https://docs.vala.dev/sample-code/basics/gee-samples/03-map-sample.html

using Gee;

void main () {

    var map = new HashMap<string, int> ();

    map.set ("one", 1);
    map.set ("two", 2);
    map.set ("three", 3);
    map["four"] = 4;
    map["five"] = 5;

    int a = map.get ("four");
    int b = map["four"];
    assert (a == b);

    stdout.printf ("Iterating over entries\n");
    foreach (var entry in map.entries) {
        stdout.printf ("%s => %d\n", entry.key, entry.value);
    }

    stdout.printf ("Iterating over keys only\n");
    foreach (string key in map.keys) {
        stdout.printf ("%s\n", key);
    }

    stdout.printf ("Iterating over values only\n");
    foreach (int value in map.values) {
        stdout.printf ("%d\n", value);
    }

    stdout.printf ("Iterating via 'for' statement\n");
    var it = map.map_iterator ();
    for (var has_next = it.next (); has_next; has_next = it.next ()) {
        stdout.printf ("%d\n", it.get_value ());
    }
}
