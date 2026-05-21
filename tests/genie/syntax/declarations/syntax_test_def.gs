// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

def test():string
// <- storage.type.function.genie
//  ^^^^ meta.function.genie entity.name.function.genie
//      ^ meta.function.genie meta.group.genie punctuation.section.group.begin.genie
//       ^ meta.function.genie punctuation.section.group.end.genie
//        ^ punctuation.separator.type.genie
//         ^^^^^^ storage.type.genie
class Foo:Object
// <- storage.type.class.genie
//    ^^^ entity.name.type.class.genie
//       ^ punctuation.separator.class.inheritance.genie
//        ^^^^^^ entity.name.type.class.genie
