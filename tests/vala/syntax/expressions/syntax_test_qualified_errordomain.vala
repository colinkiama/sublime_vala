// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    throw new DemoError.SOME_ERROR ("msg");
//            ^^^^^^^^^ source.vala support.type.vala
//                     ^ source.vala punctuation.accessor.dot.namespace.vala
//                      ^^^^^^^^^^ source.vala constant.other.errordomain.vala

    throw new ParseError.INVALID_TOKEN ("null input");
//            ^^^^^^^^^^ source.vala support.type.vala
//                      ^ source.vala punctuation.accessor.dot.namespace.vala
//                       ^^^^^^^^^^^^^ source.vala constant.other.errordomain.vala

    if (e is DemoError.SOME_ERROR) {}
//           ^^^^^^^^^ source.vala support.type.vala
//                    ^ source.vala punctuation.accessor.dot.namespace.vala
//                     ^^^^^^^^^^ source.vala constant.other.errordomain.vala
