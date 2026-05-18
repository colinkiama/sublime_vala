// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/properties-sample.html

public class MyProperty : Object {

    private int _construct_only;
    private int _construct_get_set;
    private int _get_set;

    public int construct_only_prop {
        construct {
            _construct_only = value;
        }
        get { return _construct_only; }
    }

    public int construct_get_set_prop {
        construct set {
            _construct_get_set = value;
        }
        get { return _construct_get_set; }
    }

    public int get_set_prop {
        set { _get_set = value; }
        get { return _get_set; }
    }

    public MyProperty (int a, int b, int c) {
        Object (construct_only_prop: a, construct_get_set_prop: b);
        this.get_set_prop = c;
    }

    construct {
        this.get_set_prop = 5;
    }
}

void main () {
    var demo = new MyProperty (1, 2, 3);
    demo.construct_get_set_prop = 222;
    demo.get_set_prop = 333;
}
