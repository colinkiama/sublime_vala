int main (string[] args) {

    stdout.printf ("%d command line argument(s):\n", args.length);

    foreach (string arg in args) {
        stdout.printf ("%s\n", arg);
    }

    return 0;
}
