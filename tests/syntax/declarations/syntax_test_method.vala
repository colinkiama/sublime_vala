// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    int method (int arg);
//                ^^^ source.vala meta.function.parameters.vala storage.type.vala

    private void func ();
//  ^^^^^^^ source.vala storage.modifier.access.vala

    void f () throws Error;
//               ^^^^^^ source.vala support.type.vala

    int g (int x)
        requires (x > 0)
//      ^^^^^^^^ source.vala keyword.control.conditional.vala
        ensures (result >= 0);
//      ^^^^^^^ source.vala keyword.control.conditional.vala

    async void fetch () {}
//  ^^^^^ source.vala storage.modifier.vala

    class C {
        ~C () {}
//      ^ source.vala meta.function.vala entity.name.function.destructor.vala

        C () : base () {}
//      ^ source.vala meta.function.vala entity.name.function.constructor.vala
//           ^^^^ source.vala meta.function.vala variable.language.vala
    }
