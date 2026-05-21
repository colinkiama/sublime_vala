// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

    var r = /pat/im
//          ^ punctuation.definition.regex.begin.genie
//           ^^^ meta.string.regexp.genie string.regexp.genie
//              ^ punctuation.definition.regex.end.genie
//               ^^ keyword.other.genie

    var r2 = /foo/x
//           ^ punctuation.definition.regex.begin.genie
//            ^^^ meta.string.regexp.genie string.regexp.genie
//               ^ punctuation.definition.regex.end.genie
//                ^ keyword.other.genie

    /a\.b/
//  ^ punctuation.definition.regex.begin.genie
//   ^ meta.string.regexp.genie string.regexp.genie
//    ^^ constant.character.escape.genie
//       ^ punctuation.definition.regex.end.genie

    /(pat)+/
//  ^ punctuation.definition.regex.begin.genie
//   ^ punctuation.section.group.begin.genie
//        ^ keyword.operator.genie
//         ^ punctuation.definition.regex.end.genie

    f(/pat/)
//    ^ punctuation.definition.regex.begin.genie
//     ^^^ meta.string.regexp.genie string.regexp.genie
//        ^ punctuation.definition.regex.end.genie
