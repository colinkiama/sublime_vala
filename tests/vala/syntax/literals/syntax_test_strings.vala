// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    "hello";
//  ^^^^^^^ source.vala string.quoted.double.vala

    """verbatim""";
//  ^^^^^^^^^^^^^^ source.vala string.quoted.double.raw.vala

    @"template";
//  ^^^^^^^^^^^ source.vala meta.string.vala string.quoted.double.vala

    @"$name";
//    ^ source.vala meta.template-expression.vala punctuation.definition.template-expression.begin.vala
//     ^^^^ source.vala meta.template-expression.vala variable.other.vala

    @"$a * $b = $(a * b)";
//     ^ source.vala meta.template-expression.vala punctuation.definition.template-expression.begin.vala
//      ^ source.vala meta.template-expression.vala variable.other.vala
//          ^ source.vala meta.template-expression.vala punctuation.definition.template-expression.begin.vala
//           ^ source.vala meta.template-expression.vala variable.other.vala
//               ^^ source.vala meta.interpolation.vala punctuation.section.interpolation.begin.vala

    print (@"Plus one day, three hours and five minutes: $future\n");
//                                                       ^ source.vala meta.function-call.vala meta.group.vala meta.template-expression.vala punctuation.definition.template-expression.begin.vala
//                                                        ^^^^^^ source.vala meta.function-call.vala meta.group.vala meta.template-expression.vala variable.other.vala

    @"$(a + b)";
//       ^ source.vala meta.interpolation.vala source.vala.embedded

    'c';
//  ^^^ source.vala string.quoted.single.vala

    var r = /pat/im;
//          ^ source.vala string.regexp.vala punctuation.definition.regex.begin.vala
//           ^^^ source.vala string.regexp.vala
//              ^ source.vala string.regexp.vala punctuation.definition.regex.end.vala
//               ^^ source.vala string.regexp.vala punctuation.definition.regex.end.vala keyword.other.vala
