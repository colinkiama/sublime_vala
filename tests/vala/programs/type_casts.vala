public class Base : Object {
    public string label { get; construct; }

    public Base (string label) {
        Object (label: label);
    }
}

public class Derived : Base {
    public int extra { get; set; }

    public Derived (string label, int extra) {
        Object (label: label);
        this.extra = extra;
    }
}

void main () {
    Base obj = new Derived ("child", 42);
    assert (obj is Derived);
    assert (obj is Base);

    var from_is = (Derived) obj;
    assert (from_is.extra == 42);
    from_is.extra = 99;
    assert (from_is.extra == 99);

    Derived? from_as = obj as Derived;
    assert (from_as != null);
    assert (from_as.extra == 99);

    Base plain = new Base ("plain");
    Derived? failed_as = plain as Derived;
    assert (failed_as == null);

    double ratio = 7.0 / 2.0;
    int half = (int) ratio;
    assert (half == 3);

    ulong int_size = sizeof (int);
    ulong ptr_size = sizeof (void*);
    assert (int_size > 0);
    assert (ptr_size > 0);

    Type derived_type = typeof (Derived);
    Type base_type = typeof (Base);
    assert (derived_type.is_a (base_type));
    assert (derived_type.name () == "Derived");

    stdout.printf (
        "type casts ok: is/as/explicit extra=%d sizeof(int)=%d type=%s\n",
        from_as.extra,
        (int) int_size,
        derived_type.name ()
    );
}
