// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string label { get; construct; }
//                                 ^^^^^^^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala keyword.declaration.function.accessor.construct.vala

        construct {
//      ^^^^^^^^^ source.vala meta.class.body.vala meta.block.vala keyword.context.block.vala
        }

        static construct {
//      ^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.vala
//             ^^^^^^^^^ source.vala meta.class.body.vala meta.block.vala keyword.context.block.vala
        }
    }

    construct {
//  ^^^^^^^^^ source.vala keyword.context.block.vala
    }
