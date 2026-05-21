// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    float x = 1.0;
//        ^ source.vala variable.other.vala

    const int MAX = 100;
//  ^^^^^ source.vala storage.modifier.vala
//            ^^^ source.vala constant.other.vala

    const string APP_NAME = "demo";
//  ^^^^^ source.vala storage.modifier.vala
//               ^^^^^^^^ source.vala constant.other.vala

    var y = compute ();
//  ^^^ source.vala storage.type.variable.vala
