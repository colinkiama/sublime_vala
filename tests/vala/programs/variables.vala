const int MAX_ITEMS = 100;
const string APP_NAME = "variables-demo";

void scale_in_place (ref int value, int factor) {
    value *= factor;
}

void main () {
    int x = 1;
    float y = 2.5f;
    bool flag = true;
    var sum = x + (int) y;
    string? optional = null;
    const int limit = 10;

    string label = "items";
    unowned string label_view = label;
    assert (label_view == "items");

    int counter = 2;
    scale_in_place (ref counter, 3);
    assert (counter == 6);

    int[] data = { 1, 2, 3 };
    int total = 0;
    foreach (var item in data) {
        total += item;
    }

    assert (flag);
    assert (sum == 3);
    assert (optional == null);
    assert (limit == 10);
    assert (total == 6);
    assert (data.length == 3);
    assert (counter <= MAX_ITEMS);

    stdout.printf (
        "%s ok: sum=%d total=%d counter=%d label=%s\n",
        APP_NAME,
        sum,
        total,
        counter,
        label
    );
}
