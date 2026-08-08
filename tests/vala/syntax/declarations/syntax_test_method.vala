// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    int method (int arg);
//              ^^^ source.vala meta.function.parameters.vala storage.type.vala
//                    ^ source.vala meta.function.parameters.vala variable.parameter.vala
//                     ^ source.vala meta.function.parameters.vala punctuation.section.parameters.end.vala

    private void func ();
//  ^^^^^^^ source.vala storage.modifier.access.vala

    void f () throws Error;
//            ^^^^^^ source.vala meta.function.vala keyword.control.exception.vala
//                   ^^^^^ source.vala meta.function.vala support.type.vala

    void parse (string input) throws ParseError {
//                            ^^^^^^ source.vala meta.function.vala keyword.control.exception.vala
//                                   ^^^^^^^^^^ source.vala meta.function.vala support.type.vala
        if (input == null) {}
//      ^^ source.vala meta.function.vala meta.block.vala keyword.control.conditional.if.vala
    }

    int g (int x)
        requires (x > 0)
//      ^^^^^^^^ source.vala keyword.control.conditional.vala
        ensures (result >= 0);
//      ^^^^^^^ source.vala keyword.control.conditional.vala

    async void fetch () {}
//  ^^^^^ source.vala storage.modifier.vala

    public static inline int abs (int x) {
//                ^^^^^^ source.vala storage.modifier.vala
    }

    public inline int clamp (int value, int min, int max) {
//         ^^^^^^ source.vala storage.modifier.vala
    }

    class C {
        ~C () {}
//      ^^ source.vala meta.block.vala entity.name.function.destructor.vala

        C () : base () {}
//      ^ source.vala meta.block.vala entity.name.function.constructor.vala
//        ^^ source.vala meta.block.vala
//             ^^^^ source.vala meta.block.vala variable.language.vala

        public AdvancedSample::AdvancedSample (string name) {}
//             ^^^^^^^^^^^^^^ source.vala meta.class.body.vala meta.block.vala support.type.vala
//                           ^^ source.vala meta.class.body.vala meta.block.vala punctuation.accessor.double-colon.namespace.vala
//                             ^^^^^^^^^^^^^^ source.vala meta.class.body.vala meta.block.vala entity.name.function.constructor.vala
    }

    class Parser {
        public void parse (string input) throws ParseError {
            if (input == null) {
            }
        }
    }
//  ^ source.vala meta.block.vala punctuation.section.block.end.vala

    // The class body is a real member-declaration context (it used to fall
    // through to main's generic brace handler whenever a space separated the
    // class name from its brace).
    class BodyChecks {
//        ^^^^^^^^^^ source.vala entity.name.class.vala
        [CCode (cname = "gvRenderData")]
#if SOME_DEFINE
        public int with_directive ();
//                 ^^^^^^^^^^^^^^ source.vala meta.class.body.vala meta.function.vala entity.name.function.vala
#endif

        // brace on the line after the parameter list
        public BodyChecks (string name,
                           int count)
        {
//      ^ source.vala meta.class.body.vala meta.function.vala meta.block.vala punctuation.section.block.begin.vala
            this.name = name;
//               ^^^^ source.vala meta.function.vala meta.block.vala variable.other.vala
        }
    }
