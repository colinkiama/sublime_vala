// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    foreach (var entry in map.entries) {
//  ^^^^^^^ source.vala keyword.control.foreach.vala
//                        ^^^ source.vala meta.group.vala variable.other.vala
//                           ^ source.vala meta.group.vala punctuation.accessor.dot.vala
//                            ^^^^^^^ source.vala meta.group.vala variable.other.vala
    }

    foreach (string key in map.keys) {
//                         ^^^ source.vala meta.group.vala variable.other.vala
//                            ^ source.vala meta.group.vala punctuation.accessor.dot.vala
//                             ^^^^ source.vala meta.group.vala variable.other.vala
    }

    foreach (int value in map.values) {
//                        ^^^ source.vala meta.group.vala variable.other.vala
//                           ^ source.vala meta.group.vala punctuation.accessor.dot.vala
//                            ^^^^^^ source.vala meta.group.vala variable.other.vala
    }

    var it = map.map_iterator ();
//               ^^^^^^^^^^^^ source.vala meta.function-call.vala variable.function.vala
