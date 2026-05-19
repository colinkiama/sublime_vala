// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

    a:int = 0xdeadbeef
//      ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.base.vala
//        ^^^^^^^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.value.vala

    0b1010
//  ^^ source.vala constant.numeric.integer.binary.vala constant.numeric.base.vala
//    ^^^^ source.vala constant.numeric.integer.binary.vala constant.numeric.value.vala
