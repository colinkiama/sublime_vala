public async void nap (uint interval, int priority = GLib.Priority.DEFAULT) {
    GLib.Timeout.add (interval, () => {
        nap.callback ();
        return false;
    }, priority);
    yield;
}

private async void do_stuff () {
    yield nap (1000);
}

private static int main (string[] args) {
    GLib.MainLoop loop = new GLib.MainLoop ();
    do_stuff.begin ((obj, async_res) => {
        loop.quit ();
    });
    loop.run ();

    return 0;
}
