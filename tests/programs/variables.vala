// Source: https://docs.vala.dev/sample-code/

const int MAX = 100;
const string APP_NAME = "demo";

void main () {
    int x = 1;
    float y = 2.5f;
    var inferred = x + 1;
    string? optional = null;

    const int limit = 10;

    (int a, int b) = (1, 2);
    var (c, d) = (3, 4);

    var (first, second) = ("hello", "world");

    int[] data = { 1, 2, 3 };
    foreach (var item in data) {
        stdout.printf ("%d\n", item);
    }
}
