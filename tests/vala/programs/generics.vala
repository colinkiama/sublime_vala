public class Box<T> {
    private T? _value;

    public T? value {
        get { return _value; }
        set { _value = value; }
    }

    public Box (T? val = null) {
        _value = val;
    }
}

public class Pair<A, B> {
    public A first { get; set; }
    public B second { get; set; }
}

public T? identity<T> (T? value) {
    return value;
}

void main () {
    var box = new Box<string> ("hello");
    var pair = new Pair<int, string> () { first = 1, second = "one" };
    string? s = identity<string> (box.value);
    List<int> numbers = new List<int> ();
    numbers.append (42);
}
