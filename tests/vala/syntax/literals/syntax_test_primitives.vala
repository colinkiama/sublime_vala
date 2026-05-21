// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    bool b;
//  ^^^^ source.vala storage.type.vala

    int i;
//  ^^^ source.vala storage.type.vala
//      ^ source.vala variable.other.vala

    string s;
//  ^^^^^^ source.vala storage.type.vala
//         ^ source.vala variable.other.vala

    void v;
//  ^^^^ source.vala storage.type.vala
//       ^ source.vala variable.other.vala

    float f;
//  ^^^^^ source.vala storage.type.vala
//        ^ source.vala variable.other.vala

    double d;
//  ^^^^^^ source.vala storage.type.vala
//         ^ source.vala variable.other.vala
