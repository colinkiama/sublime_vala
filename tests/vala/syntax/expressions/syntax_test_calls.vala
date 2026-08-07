// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    foo ();
//  ^^^ source.vala meta.function-call.vala variable.function.vala

    bar (1, 2);
//  ^^^ source.vala meta.function-call.vala variable.function.vala

    obj.method ();
//  ^^^ source.vala variable.other.vala
//     ^ source.vala punctuation.accessor.dot.vala
//      ^^^^^^ source.vala meta.function-call.vala variable.function.vala

    // Calls with explicit type arguments. The argument list has to be consumed
    // by the generic rule; leaving it behind produced a stray-brace error on
    // the closing paren (gee/timsort.vala in the Vala tree).
    sort<G> (list, compare);
//  ^^^^ source.vala meta.function-call.vala variable.function.vala

    TimSort.sort<G> (list, compare);
//  ^^^^^^^ source.vala meta.function-call.vala support.type.vala
//         ^ source.vala meta.function-call.vala punctuation.accessor.dot.namespace.vala
//          ^^^^ source.vala meta.function-call.vala variable.function.vala
