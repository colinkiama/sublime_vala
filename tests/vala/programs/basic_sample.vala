public class BasicSample : Object {

    public void run () {
        stdout.printf ("Hello World\n");
    }
}

int main (string[] args) {
    var sample = new BasicSample ();
    sample.run ();
    return 0;
}
