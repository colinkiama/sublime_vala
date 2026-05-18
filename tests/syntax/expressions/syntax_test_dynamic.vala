// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    dynamic Object obj;
//  ^^^^^^^ source.vala storage.modifier.vala

    obj.method ();
//     ^^^^^^ source.vala meta.function-call.vala variable.function.vala

    obj.signal.emit ();
//              ^^^^ source.vala meta.function-call.vala variable.function.vala
