// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    dynamic Object obj;
//  ^^^^^^^ source.vala storage.modifier.vala

    obj.method ();
//  ^^^ source.vala variable.other.vala
//     ^ source.vala punctuation.accessor.dot.vala
//      ^^^^^^ source.vala meta.function-call.vala variable.function.vala

    obj.signal.emit ();
//      ^^^^^^ source.vala keyword.other.vala
//            ^ source.vala punctuation.accessor.dot.vala
//             ^^^^ source.vala meta.function-call.vala variable.function.vala
