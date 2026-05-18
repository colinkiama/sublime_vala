// Source: https://docs.vala.dev/sample-code/basics/async-samples.html

async double do_calc_in_bg (double val) throws ThreadError {
    SourceFunc callback = do_calc_in_bg.callback;
    double[] output = new double[1];

    ThreadFunc<bool> run = () => {
        double result = 0;
        for (int a = 0; a < 1000000; a++) {
            result += val * a;
        }
        output[0] = result;
        GLib.Idle.add ((owned) callback);
        return true;
    };
    new Thread<bool> ("thread-example", run);

    yield;
    return output[0];
}

void main (string[] args) {
    var loop = new GLib.MainLoop ();
    do_calc_in_bg.begin (0.001, (obj, res) => {
        try {
            double result = do_calc_in_bg.end (res);
            stderr.printf ("Result: %f\n", result);
        } catch (ThreadError e) {
            stderr.printf ("Thread error: %s\n", e.message);
        }
        loop.quit ();
    });
    loop.run ();
}
