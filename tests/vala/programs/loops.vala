void main () {
    int[] data = { 1, 2, 3, 4, 5 };

    for (int i = 0; i < data.length; i++) {
        stdout.printf ("%d\n", data[i]);
    }

    foreach (int value in data) {
        stdout.printf ("%d\n", value);
    }

    foreach (var index => int value in data) {
        stdout.printf ("%d: %d\n", index, value);
    }

    int n = 0;
    while (n < 3) {
        stdout.printf ("%d\n", n);
        n++;
    }

    do {
        stdout.printf ("do-while\n");
        n--;
    } while (n > 0);
}
