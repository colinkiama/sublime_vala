// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Widget {
        public signal void clicked ();
//      ^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.access.vala
//                         ^^^^^^^ source.vala meta.class.body.vala meta.block.vala entity.name.function.signal.vala
//                                  ^ source.vala meta.class.body.vala meta.block.vala meta.function.parameters.vala punctuation.section.parameters.end.vala
//                                   ^ source.vala meta.class.body.vala meta.block.vala punctuation.terminator.statement.vala
    }
