// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/basic-samples.html

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
