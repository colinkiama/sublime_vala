// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    while (c) { }
//  ^^^^^ source.vala keyword.control.while.vala

    for (int i = 0; i < n; i++) { }
//  ^^^ source.vala keyword.control.for.vala

    foreach (var x in list) { }
//  ^^^^^^^ source.vala keyword.control.foreach.vala

    foreach (var index => int value in list) { }
//           ^^^ source.vala storage.type.variable.vala
//               ^^^^^ source.vala variable.other.vala
//                     ^^ source.vala keyword.operator.vala
//                        ^^^ source.vala storage.type.vala
//                            ^^^^^ source.vala variable.other.vala
//                                  ^^ source.vala keyword.control.vala

    foreach (int value in list) {
        value;
    }
//          ^^^^^ source.vala variable.other.vala
//                ^^^^^ source.vala variable.other.vala
