// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        construct {
//      ^^^^^^^^^ source.vala keyword.context.block.vala
        }
    }

    construct {
//  ^^^^^^^^^ source.vala keyword.context.block.vala
    }
