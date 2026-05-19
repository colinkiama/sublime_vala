// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

def test():string
//^ storage.type.function.genie
//    ^^^^^^^^^^^^^^^^^ entity.name.function.genie
//         ^ punctuation.separator.type.genie
//          ^^^^^^ storage.type.genie

class Foo:Object
//^^^^ storage.type.class.genie
//    ^^^ entity.name.type.class.genie
//       ^ punctuation.separator.class.inheritance.genie
//        ^^^^^^ entity.name.type.class.genie
