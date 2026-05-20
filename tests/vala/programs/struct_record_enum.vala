public struct Point {
    public int x;
    public int y;

    public Point add (Point other) {
        return Point () { x = x + other.x, y = y + other.y };
    }

    public int distance_squared (Point other) {
        int dx = x - other.x;
        int dy = y - other.y;
        return dx * dx + dy * dy;
    }
}

public struct RGBA {
    public uint8 r;
    public uint8 g;
    public uint8 b;
    public uint8 a;

    public bool is_opaque () {
        return a == 255;
    }
}

[Flags]
public enum Options {
    NONE = 0,
    READ = 1 << 0,
    WRITE = 1 << 1,
    READ_WRITE = READ | WRITE
}

public enum Status {
    OK,
    ERROR,
    PENDING = 10
}

public struct Rectangle {
    public int width;
    public int height;

    public int area () {
        return width * height;
    }
}

string status_label (Status status) {
    switch (status) {
    case Status.OK:
        return "ok";
    case Status.ERROR:
        return "error";
    case Status.PENDING:
        return "pending";
    default:
        assert_not_reached ();
    }
}

void main () {
    var origin = Point () { x = 0, y = 0 };
    var p = Point () { x = 3, y = 4 };
    var sum = origin.add (p);

    assert (sum.x == 3);
    assert (sum.y == 4);
    assert (p.distance_squared (origin) == 25);

    var rect = Rectangle () { width = 10, height = 20 };
    assert (rect.area () == 200);

    var red = RGBA () { r = 255, g = 0, b = 0, a = 255 };
    assert (red.is_opaque ());

    Status ok = Status.OK;
    Status pending = Status.PENDING;
    assert (status_label (ok) == "ok");
    assert (status_label (pending) == "pending");

    Options access = Options.READ_WRITE;
    assert ((access & Options.READ) != 0);
    assert ((access & Options.WRITE) != 0);
    assert ((access & Options.NONE) == 0);

    stdout.printf (
        "structs and enums ok: Point(%d,%d) area=%d status=%s options=0x%x\n",
        sum.x,
        sum.y,
        rect.area (),
        status_label (ok),
        (int) access
    );
}
