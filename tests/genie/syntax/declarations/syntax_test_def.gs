// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

def test():string
// <- storage.type.function.genie
//  ^^^^ entity.name.function.genie
//      ^ meta.function.genie meta.group.genie punctuation.section.group.begin.genie
//       ^ meta.function.genie meta.group.genie punctuation.section.group.end.genie
//        ^ punctuation.separator.type.genie
//         ^^^^^^ storage.type.genie

def f1(a:int):bool
// <- storage.type.function.genie
//  ^^ entity.name.function.genie
//    ^ meta.function.genie meta.group.genie punctuation.section.group.begin.genie
//     ^ variable.parameter.genie
//      ^ punctuation.separator.type.genie
//       ^^^ storage.type.genie
//          ^ meta.function.genie meta.group.genie punctuation.section.group.end.genie
//           ^ punctuation.separator.type.genie
//            ^^^^ storage.type.genie

def fetch():void raises IOError
// <- storage.type.function.genie
//  ^^^^^ entity.name.function.genie
//       ^ meta.function.genie meta.group.genie punctuation.section.group.begin.genie
//        ^ meta.function.genie meta.group.genie punctuation.section.group.end.genie
//         ^ punctuation.separator.type.genie
//          ^^^^ storage.type.genie
//               ^^^^^^ keyword.other.genie
//                      ^^^^^^ support.type.genie
