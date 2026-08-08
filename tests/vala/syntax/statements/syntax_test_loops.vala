// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    while (c) { }
//  ^^^^^ source.vala keyword.control.while.vala

    for (int i = 0; i < n; i++) { }
//  ^^^ source.vala keyword.control.for.vala

    foreach (var x in list) { }
//  ^^^^^^^ source.vala keyword.control.foreach.vala

    foreach (var index => int value in list) { }
//           ^^^ source.vala storage.type.variable.vala
//               ^^^^^ source.vala variable.other.vala
//                     ^^ source.vala keyword.operator.vala
//                        ^^^ source.vala storage.type.vala
//                            ^^^^^ source.vala variable.other.vala
//                                  ^^ source.vala keyword.control.vala

    foreach (int value in list) {
        value;
    }

    // The for header's iterator clause is a comma-separated statement list and
    // may contain parentheses of its own; it used to be left unparsed, so the
    // first inner `)` ended the header.
    void for_iterator_clause () {
        for (uint dim = 1; array_type != null;
             dim++, array_type = ((Api.Array) array_type).data_type)
//              ^^ source.vala meta.group.vala keyword.operator.vala
//                ^ source.vala meta.group.vala punctuation.separator.sequence.vala
//                                                                 ^ source.vala meta.group.vala punctuation.section.group.end.vala
        {
            work ();
        }
    }

    // An initializer that is a call has parens of its own too - the explicit
    // var declaration used to swallow the `=` and leave the `(` unopened.
    void for_call_initializer () {
        for (unichar c = next_char (); c != '\0'; c = next_char ()) {
//                     ^ source.vala meta.group.vala keyword.operator.assignment.variable.loop.vala
//                       ^^^^^^^^^ source.vala meta.group.vala meta.function-call.vala variable.function.vala
//                                                               ^ source.vala meta.group.vala meta.function-call.vala meta.group.vala punctuation.section.group.end.vala
//                                                                ^ source.vala meta.group.vala punctuation.section.group.end.vala
            work ();
        }
    }
