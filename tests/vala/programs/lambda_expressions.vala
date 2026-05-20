public delegate int CompareFunc (int a, int b);
public delegate void VoidFunc ();
public delegate int IntFunc (int x);
public delegate int BinaryIntFunc (int x, int y);

void sort_values (int[] values, CompareFunc cmp) {
    for (int i = 0; i < values.length - 1; i++) {
        for (int j = 0; j < values.length - i - 1; j++) {
            if (cmp (values[j], values[j + 1]) > 0) {
                int tmp = values[j];
                values[j] = values[j + 1];
                values[j + 1] = tmp;
            }
        }
    }
}

void run_callback (owned SourceFunc callback) {
    callback ();
}

void main () {
    int[] values = { 5, 1, 4, 2, 3 };

    sort_values (values, (a, b) => a - b);

    stdout.printf ("sorted:\n");
    foreach (int v in values) {
        stdout.printf ("  %d\n", v);
    }

    VoidFunc greet = () => stdout.printf ("no args\n");
    greet ();

    BinaryIntFunc add = (x, y) => x + y;
    stdout.printf ("3 + 4 = %d\n", add (3, 4));

    IntFunc double_it = x => x * 2;
    stdout.printf ("21 * 2 = %d\n", double_it (21));

    run_callback (() => {
        stdout.printf ("callback\n");
        return false;
    });
}
