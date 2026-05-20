// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"
// Regression: ownership.vala — foreach (unowned string part in …)

    foreach (unowned string part in "one two three".split (" ")) {
//  ^^^^^^^ source.vala keyword.control.foreach.vala
//          ^ source.vala meta.group.vala punctuation.section.group.begin.vala
//           ^^^^^^^ source.vala storage.modifier.ownership.vala
//                   ^^^^^^ source.vala storage.type.vala
//                          ^^^^ source.vala variable.other.vala
//                               ^^ source.vala keyword.control.vala
//                                                            ^ source.vala meta.function-call.vala meta.group.vala punctuation.section.group.end.vala
//                                                             ^ source.vala meta.group.vala punctuation.section.group.end.vala
    }
