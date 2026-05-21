// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

string[] sample_keys () {
    return new string[] { "1", "2" };
}

    foreach (string key in sample_keys ()) {
//  ^^^^^^^ source.vala keyword.control.foreach.vala
//          ^ source.vala meta.group.vala punctuation.section.group.begin.vala
//           ^^^^^^ source.vala storage.type.vala
//                  ^^^ source.vala variable.other.vala
//                      ^^ source.vala keyword.control.vala
//                         ^^^^^^^^^^^ source.vala variable.function.vala
//                                     ^ source.vala meta.function-call.vala meta.group.vala punctuation.section.group.begin.vala
//                                      ^ source.vala meta.function-call.vala meta.group.vala punctuation.section.group.end.vala
//                                       ^ source.vala meta.group.vala punctuation.section.group.end.vala
//                                         ^ source.vala meta.block.vala punctuation.section.block.begin.vala
    }

    foreach (string part in "one two three".split (" ")) {
//          ^ source.vala meta.group.vala punctuation.section.group.begin.vala
//                                                    ^ source.vala meta.function-call.vala meta.group.vala punctuation.section.group.end.vala
//                                                     ^ source.vala meta.group.vala punctuation.section.group.end.vala
    }
