// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

class Widget:Object
// <- storage.type.class.genie
//    ^^^^^^ entity.name.type.class.genie
//          ^ punctuation.separator.class.inheritance.genie
//           ^^^^^^ entity.name.type.class.genie
    def resize(w:int,h:int):void
    // <- storage.type.function.genie
    //  ^^^^^^ entity.name.function.genie
    //        ^ meta.function.genie meta.group.genie punctuation.section.group.begin.genie
    //         ^ variable.parameter.genie
    //          ^ punctuation.separator.type.genie
    //           ^^^ storage.type.genie
    //              ^ punctuation.separator.parameter.genie
    //               ^ variable.parameter.genie
    //                ^ punctuation.separator.type.genie
    //                 ^^^ storage.type.genie
    //                    ^ meta.function.genie meta.group.genie punctuation.section.group.end.genie
    //                     ^ punctuation.separator.type.genie
    //                      ^^^^ storage.type.genie
