// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    void process (ref int value, out string label, params string[] extras) {
//                ^^^ source.vala meta.function.parameters.vala storage.modifier.parameter.vala
//                         ^^^ source.vala meta.function.parameters.vala variable.parameter.vala
//                               ^^^ source.vala meta.function.parameters.vala storage.modifier.parameter.vala
//                                                 ^^^^^^^ source.vala meta.function.parameters.vala storage.modifier.parameter.vala
    }

    void greet (string name = "world") {
//                     ^^^^ source.vala meta.function.parameters.vala variable.parameter.vala
    }
