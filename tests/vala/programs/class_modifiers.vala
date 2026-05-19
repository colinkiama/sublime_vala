public abstract class Animal : Object {
    public abstract string speak ();
}

public sealed class Dog : Animal {
    public override string speak () {
        return "woof";
    }
}

public partial class Container : Object {
    public int count { get; private set; }
}

public partial class Container {
    public void increment () {
        count++;
    }
}

public class Outer {
    public class Inner : Object {
        public int value { get; set; }
    }
}

void main () {
    Animal a = new Dog ();
    stdout.printf ("%s\n", a.speak ());
}
