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
//     ^^ constant.character.escape.regexp
//       ^ punctuation.definition.regex.end.genie

    /(pat)+/
//   ^ punctuation.section.group.begin.regexp
//        ^ keyword.operator.quantifier.regexp

    f(/pat/)
//    ^ punctuation.definition.regex.begin.genie
//     ^^^ meta.string.regexp.genie string.regexp.genie
//        ^ punctuation.definition.regex.end.genie
