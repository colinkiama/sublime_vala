public class Person : Object {
    public string name { get; construct; }

    public Person (string name) {
        Object (name: name);
    }
}

public class Container : Object {
    public Person[] people { get; private set; }
}

void main () {
    Person p = new Person ("Ada");
    Person p2 = new Person.with_name ("Bob");
    Person[] group = { new Person ("Ann"), new Person ("Ben") };

    Container c = new Container ();
    List<Person> list = new List<Person> ();
    list.append (new Person ("Cal"));

    new Button.with_label ("OK");
    new List<string> ();
}

class Button : Object {
    public static Person with_label (string label) {
        return new Person (label);
    }
}
