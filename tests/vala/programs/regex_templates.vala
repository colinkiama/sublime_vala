void main () {
    string name = "Vala";
    stdout.printf (@"Hello, $name!");
    stdout.printf (@"Sum: $(1 + 2)");

    string tpl = @"path: $(Environment.get_home_dir ())";

    try {
        var regex = new Regex ("(jaguar|tiger|leopard)");
        string animals = "wolf, tiger, eagle, jaguar, leopard, bear";
        stdout.printf ("%s\n", regex.replace (animals, -1, 0, "kitty"));
    } catch (RegexError e) {
        warning ("%s", e.message);
    }

    var r = /pat/im;
    var r2 = /foo.*bar/x;
}
