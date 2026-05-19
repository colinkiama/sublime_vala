abstract class Generator<G> {
    private bool consumed;
    private unowned G value;
    private SourceFunc callback;

    protected Generator () {
        helper.begin ();
    }

    private async void helper () {
        yield generate ();
        consumed = true;
    }

    protected abstract async void generate ();

    protected async void feed (G value) {
        this.value = value;
        this.callback = feed.callback;
        yield;
    }

    public bool next () {
        return !consumed;
    }

    public G get () {
        var result = value;
        callback ();
        return result;
    }

    public Generator<G> iterator () {
        return this;
    }
}

class IntGenerator : Generator<int> {
    protected override async void generate () {
        for (int i = 0; i < 10; i++) {
            if (i % 2 == 0) {
                yield feed (i);
            }
        }
    }
}

void main (string[] args) {
    var gen = new IntGenerator ();

    foreach (var item in gen) {
        stdout.printf ("Result: %d\n", item);
    }
}
