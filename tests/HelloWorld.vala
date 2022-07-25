public class Bruh : Object {
    public int my_num { get; construct set; }
    public string property_name { get; construct set;}

    private int _count;
    public int count {
        get {
            return _count;
        }
        set {
            _count = value;
        }
    }

    public void run () {
        try {
            print ("Hello world");
        } catch (Exception ex) {
            return;
        }
    }

    construct {
        print ("no problemo");
    }
}

public struct MyStruct {
    public int x;
    public int y;
}
