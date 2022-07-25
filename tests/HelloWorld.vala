public class Bruh : Object {
    public int my_num { get; construct set; }

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
