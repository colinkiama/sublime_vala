// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    // Parser.skip_identifier accepts every keyword as an identifier, and
    // tests/parser/statement-keyword-as-identifier.vala relies on it.
    // `switch` used to push the switch-expression context, which never
    // popped without a brace and swallowed the rest of the file.
    void keyword_as_identifier () {
        int switch;
        switch = 2;
//      ^^^^^^ source.vala meta.block.vala keyword.other.vala
//             ^ source.vala meta.block.vala keyword.operator.assignment.vala
        assert (switch == 2);
//              ^^^^^^ source.vala meta.group.vala keyword.other.vala
//                         ^ source.vala meta.group.vala punctuation.section.group.end.vala
//                          ^ source.vala meta.block.vala punctuation.terminator.statement.vala
    }
