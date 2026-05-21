// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    var circumference = 2 * Math.PI * radius;
//                          ^^^^ source.vala support.type.vala
//                              ^ source.vala punctuation.accessor.dot.namespace.vala
//                               ^^ source.vala constant.other.enum.vala

    Math.sin (Math.PI / 2);
//  ^^^^ source.vala meta.function-call.vala support.type.vala
//      ^ source.vala meta.function-call.vala punctuation.accessor.dot.namespace.vala
//       ^^^ source.vala meta.function-call.vala variable.function.vala
//            ^^^^ source.vala meta.function-call.vala support.type.vala
//                ^ source.vala meta.function-call.vala punctuation.accessor.dot.namespace.vala
//                 ^^ source.vala meta.function-call.vala meta.group.vala constant.other.enum.vala

    assert (PI > 3.0);
//          ^^ source.vala constant.other.vala

    stdout.printf ("%g", PI);
//                       ^^ source.vala constant.other.vala
