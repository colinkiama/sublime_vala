// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    x is int;
//       ^^^ source.vala variable.other.vala

    x as string;
//       ^^^^^^ source.vala variable.other.vala

    sizeof (int);
//  ^^^^^^ source.vala keyword.operator.vala

    typeof (Foo);
//  ^^^^^^ source.vala keyword.operator.vala
