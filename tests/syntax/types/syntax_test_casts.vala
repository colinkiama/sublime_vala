// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    x is int;
//    ^^ source.vala keyword.operator.vala

    x as string;
//    ^^ source.vala keyword.operator.vala

    sizeof (int);
//  ^^^^^^ source.vala keyword.operator.vala

    typeof (Foo);
//  ^^^^^^ source.vala keyword.operator.vala
