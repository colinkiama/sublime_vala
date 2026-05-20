public class Person : Object {
    public string name { get; construct; }

    public Person (string name) {
        Object (name: name);
    }

    public Person.with_name (string name) {
        Object (name: name);
    }
}

public class Container : Object {
    Person[] _people = {};

    public uint count {
        get { return _people.length; }
    }

    public string? name_at (uint index) {
        return index < _people.length ? _people[index].name : null;
    }

    public void add (Person person) {
        _people += person;
    }
}

public class Button : Object {
    public string label { get; private set; }

    public Button.with_label (string label) {
        Object ();
        this.label = label;
    }
}

void main () {
    Person p = new Person ("Ada");
    Person p2 = new Person.with_name ("Bob");
    Person[] group = { new Person ("Ann"), new Person ("Ben") };

    var c = new Container ();
    c.add (p);
    List<Person> list = new List<Person> ();
    list.append (new Person ("Cal"));

    Button ok = new Button.with_label ("OK");
    List<string> tags = new List<string> ();
    tags.append ("demo");

    assert (c.count == 1);
    assert (c.name_at (0) == "Ada");
    assert (p.name == "Ada");
    assert (p2.name == "Bob");
    assert (group.length == 2);
    assert (group[0].name == "Ann");
    assert (list.length () == 1);
    assert (list.nth_data (0).name == "Cal");
    assert (ok.label == "OK");
    assert (tags.length () == 1);

    stdout.printf ("Created %s, %s, group of %u, list head %s, button '%s'\n",
        p.name, p2.name, group.length, list.nth_data (0).name, ok.label);
}
