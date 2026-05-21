// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

f1(1)
// <- entity.name.function.genie
//^ meta.function-call.genie meta.group.genie punctuation.section.group.begin.genie
// ^ constant.numeric.integer.decimal.genie constant.numeric.value.genie
//  ^ meta.function-call.genie punctuation.section.group.end.genie
foo.method(0)
// <- variable.other.genie
// ^ punctuation.accessor.dot.genie
//  ^^^^^^ entity.name.function.genie
//        ^ meta.function-call.genie meta.group.genie punctuation.section.group.begin.genie
//         ^ constant.numeric.integer.decimal.genie constant.numeric.value.genie
//          ^ meta.function-call.genie punctuation.section.group.end.genie
