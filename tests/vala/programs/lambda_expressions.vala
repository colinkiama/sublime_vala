void main () {
    int[] values = { 1, 2, 3, 4, 5 };

    values.sort ((a, b) => a - b);

    foreach (int v in values) {
        ((int x) => stdout.printf ("%d\n", x)) (v);
    }

    () => stdout.printf ("no args\n");

    (int x, int y) => x + y;

    x => x * 2;

    void run (owned SourceFunc callback) {
        callback ();
    }

    run (() => stdout.printf ("callback\n"));
}
