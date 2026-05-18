// Source: https://docs.vala.dev/sample-code/language-features-and-introductory-samples/intermediate-samples.html

public class NumberGuessing {
    private int min;
    private int max;

    public NumberGuessing (int min, int max) {
        this.min = min;
        this.max = max;
    }

    public void start () {
        int try_count = 0;
        int number = Random.int_range (min, max);

        stdout.printf ("Welcome to Number Guessing!\n\n");
        stdout.printf ("I have thought up a number between %d and %d\n", min, max);

        while (true) {
            try_count++;

            stdout.printf ("Try #%d\n", try_count);
            stdout.printf ("Please enter a number between %d and %d: ", min, max);
            int input = int.parse (stdin.read_line ());

            if (number == input) {
                stdout.printf ("Congratulations! You win.\n");
                break;
            } else {
                var how = number > input ? "greater" : "less";
                stdout.printf ("Wrong. The wanted number is %s than %d.\n", how, input);
            }
        }
    }
}

void main (string[] args) {
    var game = new NumberGuessing (1, 100);
    game.start ();
}
