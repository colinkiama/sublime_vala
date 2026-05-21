// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; construct set; }
//                           ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
//                                ^^^^^^^^^ source.vala meta.block.vala meta.block.vala keyword.context.block.vala
//                                          ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala

        public int construct_only_prop {
            construct {
//          ^^^^^^^^^ source.vala meta.block.vala meta.block.vala keyword.context.block.vala
            }
        }

        public int construct_get_set_prop {
            construct set {
//          ^^^^^^^^^ source.vala meta.block.vala meta.block.vala keyword.context.block.vala
            }
        }
    }
