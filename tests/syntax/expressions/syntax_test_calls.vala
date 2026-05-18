// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    foo ();
//  ^^^ source.vala meta.function-call.vala variable.function.vala

    bar (1, 2);
//  ^^^ source.vala meta.function-call.vala variable.function.vala

    obj.method ();
//     ^^^^^^ source.vala meta.function-call.vala variable.function.vala
