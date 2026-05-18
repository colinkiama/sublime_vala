// Source: https://docs.vala.dev/sample-code/

[CCode (cname = "my_widget", has_type_id = false)]
public class Widget : Object {
    [Description ("The display name")]
    public string title { get; set; }

    [CCode (name = "get_value")]
    public int value { get; private set; }
}

[Simple]
[DBus (name = "org.example.Service")]
public class Service : Object {
    public signal void changed ();
}

void main () {
    var w = new Widget () { title = "Demo" };
}
