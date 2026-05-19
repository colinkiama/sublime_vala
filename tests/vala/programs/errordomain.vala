public errordomain IOError {
    FAILED,
    NOT_FOUND,
    PERMISSION_DENIED
}

public errordomain ParseError {
    INVALID_TOKEN,
    UNEXPECTED_EOF
}

public class Parser {
    public void parse (string input) throws ParseError {
        if (input == null) {
            throw new ParseError.INVALID_TOKEN ("null input");
        }
    }
}

void main () {
    try {
        var p = new Parser ();
        p.parse ("");
    } catch (ParseError e) {
        stderr.printf ("%s\n", e.message);
    }
}
