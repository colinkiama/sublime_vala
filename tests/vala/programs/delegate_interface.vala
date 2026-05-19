public delegate void EventHandler ();

public delegate int CompareFunc (int a, int b);

public interface Drawable {
    public abstract void draw (Cairo.Context cr);
    public abstract int width { get; }
    public abstract int height { get; }
}

public interface Iterable<T> {
    public abstract Iterator<T> iterator ();
}

public class Shape : Object, Drawable {
    public int width { get; construct; }
    public int height { get; construct; }

    public Shape (int w, int h) {
        Object (width: w, height: h);
    }

    public void draw (Cairo.Context cr) {
    }
}

void main () {
    CompareFunc cmp = (a, b) => a - b;
    EventHandler handler = () => stdout.printf ("event\n");
    handler ();
}
