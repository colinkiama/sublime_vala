// Source: https://docs.vala.dev/sample-code/basics/async-samples.html

class Test.Async : GLib.Object {
    public async string say (string sentence) {
        GLib.Idle.add (this.say.callback);
        yield;
        return sentence;
    }

    public static int main (string[] args) {
        Test.Async my_async = new Test.Async ();
        GLib.MainLoop main_loop = new GLib.MainLoop ();
        my_async.say.begin ("Hello World!", (obj, res) => {
            string sentence = my_async.say.end (res);
            print ("%s\n", sentence);
            main_loop.quit ();
        });
        main_loop.run ();
        return 0;
    }
}
