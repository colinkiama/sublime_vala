// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    int method (int arg);
//              ^^^ source.vala meta.function.parameters.vala storage.type.vala
//                    ^ source.vala meta.function.parameters.vala variable.parameter.vala
//                     ^ source.vala meta.function.parameters.vala punctuation.section.parameters.end.vala

    private void func ();
//  ^^^^^^^ source.vala storage.modifier.access.vala

    void f () throws Error;
//                   ^^^^^ source.vala variable.other.vala

    int g (int x)
        requires (x > 0)
//      ^^^^^^^^ source.vala keyword.control.conditional.vala
        ensures (result >= 0);
//      ^^^^^^^ source.vala keyword.control.conditional.vala

    async void fetch () {}
//  ^^^^^ source.vala storage.modifier.vala

    class C {
        ~C () {}
//      ^ source.vala meta.class.body.vala meta.block.vala meta.function.vala entity.name.function.destructor.vala

        C () : base () {}
//      ^ source.vala meta.class.body.vala meta.block.vala meta.function.vala entity.name.function.constructor.vala
//           ^ source.vala meta.class.body.vala meta.block.vala meta.function.vala punctuation.separator.function.vala
//             ^ source.vala meta.class.body.vala meta.block.vala meta.function.vala variable.language.vala
    }
