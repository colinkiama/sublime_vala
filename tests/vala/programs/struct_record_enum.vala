public struct Point {
    public int x;
    public int y;
}

public struct RGBA {
    public uint8 r;
    public uint8 g;
    public uint8 b;
    public uint8 a;
}

[Flags]
public enum Options : uint {
    NONE = 0,
    READ = 1 << 0,
    WRITE = 1 << 1,
    READ_WRITE = READ | WRITE
}

public enum Status : int {
    OK,
    ERROR,
    PENDING = 10
}

public struct Rectangle {
    public int width;
    public int height;
}

void main () {
    var p = Point () { x = 1, y = 2 };
    var r = Rectangle () { width = 10, height = 20 };
    Status s = Status.OK;
    Options o = Options.READ_WRITE;
}
