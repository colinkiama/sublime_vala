// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    obj.field;
//      ^^^^^ source.vala variable.other.vala

    this.field;
//  ^^^^ source.vala variable.language.vala

    base.method ();
//  ^^^^ source.vala variable.language.vala

    ptr->member;
//    ^^ source.vala punctuation.accessor.arrow.vala

    GLib.global::Symbol;
//  ^^^^ source.vala support.type.vala
