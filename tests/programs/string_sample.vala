// Source: https://docs.vala.dev/sample-code/string-sample.html

void println (string str) {
    stdout.printf ("%s\n", str);
}

void main () {

    string a = "Concatenated ";
    string b = "string";
    string c = a + b;
    println (c);

    var builder = new StringBuilder ();
    builder.append ("built ");
    builder.prepend ("String ");
    builder.append ("StringBuilder");
    builder.append_unichar ('.');
    builder.insert (13, "by ");
    println (builder.str);

    string formatted = "PI %s equals %g.".printf ("approximately", Math.PI);
    println (formatted);

    string name = "Dave";
    println (@"Good morning, $name!");
    println (@"4 + 3 = $(4 + 3)");

    a = "foo";
    b = "foo";
    if (a == b) {
        println ("String == operator compares content, not reference.");
    } else {
        assert_not_reached ();
    }

    if ("blue" < "red" && "orange" > "green") {
        println ("blue is less than red and orange is greater than green");
    }

    string verbatim = """This is a so-called "verbatim string".
Verbatim strings don't process escape sequences, such as \n, \t, \\, etc.
They may contain quotes and may span multiple lines.""";
    println (verbatim);

    string pl = "vala";
    switch (pl) {
    case "java":
        assert_not_reached ();
    case "vala":
        println ("Switch statement works fine with strings.");
        break;
    case "ruby":
        assert_not_reached ();
    }

    println ("from lower case to upper case".up ());
    println ("reversed string".reverse ());
    println ("...substring...".substring (3, 9));

    if ("word" in "swordfish") {
        println ("word is a part of swordfish");
    }

    try {
        var regex = new Regex ("(jaguar|tiger|leopard)");
        string animals = "wolf, tiger, eagle, jaguar, leopard, bear";
        println (regex.replace (animals, -1, 0, "kitty"));
    } catch (RegexError e) {
        warning ("%s", e.message);
    }
}
