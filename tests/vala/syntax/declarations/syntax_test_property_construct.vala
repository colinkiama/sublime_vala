// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; construct set; }
//                           ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.get.vala
//                              ^ source.vala meta.property.vala punctuation.terminator.vala
//                                ^^^^^^^^^^^^^ source.vala meta.property.vala keyword.declaration.function.accessor.construct.vala
//                                             ^ source.vala meta.property.vala punctuation.terminator.vala

        public int construct_only_prop {
            construct {
//          ^^^^^^^^^ source.vala meta.property.vala keyword.declaration.function.accessor.construct.vala
            }
        }

        public int construct_get_set_prop {
            construct set {
//          ^^^^^^^^^^^^^ source.vala meta.property.vala keyword.declaration.function.accessor.set.vala
            }
        }
    }
