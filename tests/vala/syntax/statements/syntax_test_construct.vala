// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string label { get; construct; }
//                                 ^^^^^^^^^ source.vala meta.property.vala keyword.declaration.function.accessor.construct.vala

        construct {
//      ^^^^^^^^^ source.vala meta.block.vala keyword.context.block.vala
        }

        static construct {
//      ^^^^^^ source.vala meta.block.vala storage.modifier.vala
//             ^^^^^^^^^ source.vala meta.block.vala keyword.context.block.vala
        }

        class construct {
//      ^^^^^ source.vala meta.block.vala storage.type.class keyword.declaration.class.vala
//            ^^^^^^^^^ source.vala meta.block.vala keyword.context.block.vala
        }
    }

    construct {
//  ^^^^^^^^^ source.vala keyword.context.block.vala
    }
