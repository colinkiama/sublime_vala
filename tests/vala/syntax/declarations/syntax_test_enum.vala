// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    enum Color {
//  ^^^^ source.vala meta.enum.vala storage.type.enum keyword.declaration.enum.vala
        RED,
//      ^^^ source.vala meta.enum.body.vala meta.block.vala constant.other.enum.vala
    }

    public enum Status : int {}
//  ^^^^^^ source.vala storage.modifier.access.vala

    [Flags]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^ source.vala meta.annotation.vala variable.annotation.vala
    public enum Options {
        READ = 1 << 0,
//      ^^^^ source.vala meta.enum.body.vala meta.block.vala constant.other.enum.vala
    }
