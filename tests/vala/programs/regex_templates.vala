void main () {
    string name = "Vala";
    string hello = @"Hello, $name!";
    string sum_line = @"Sum: $(1 + 2)";
    string path_line = @"path: $(Environment.get_home_dir ())";

    assert (hello == "Hello, Vala!");
    assert (sum_line == "Sum: 3");
    assert (path_line.has_prefix ("path: "));

    string animals = "wolf, tiger, eagle, jaguar, leopard, bear";
    string replaced;

    try {
        var regex = new Regex ("(jaguar|tiger|leopard)");
        replaced = regex.replace (animals, -1, 0, "kitty");
    } catch (RegexError e) {
        error ("regex failed: %s", e.message);
    }

    assert (replaced == "wolf, kitty, eagle, kitty, kitty, bear");

    var r = /pat/im;
    var r2 = /foo.*bar/x;
    MatchInfo info;

    assert (r.match ("PAT", 0, out info));
    assert (r2.match ("foo bar", 0, out info));

    stdout.printf ("%s\n", hello);
    stdout.printf ("%s\n", sum_line);
    stdout.printf ("%s\n", path_line);
    stdout.printf ("replaced: %s\n", replaced);
    stdout.printf ("regex literals: /pat/im and /foo.*bar/x matched\n");
}
