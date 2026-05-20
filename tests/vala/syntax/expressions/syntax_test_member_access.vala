// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    obj.field;
//  ^^^ source.vala variable.other.vala
//     ^ source.vala punctuation.accessor.dot.vala
//      ^^^^^ source.vala variable.other.vala

    entry.key;
    entry.value;
//  ^^^^^ source.vala variable.other.vala
//       ^ source.vala punctuation.accessor.dot.vala
//        ^^^^^ source.vala variable.other.vala
//             ^ source.vala punctuation.terminator.statement.vala

    my_async.say.begin ();
//  ^^^^^^^^ source.vala variable.other.vala

    this.field;
//  ^^^^ source.vala variable.language.vala

    base.method ();
//  ^^^^ source.vala variable.language.vala

    root.child?.value;
//              ^^^^^ source.vala variable.other.vala

    ptr->member;
//     ^^ source.vala punctuation.accessor.arrow.vala

    GLib.global::Symbol;
//  ^^^^ source.vala support.type.vala
