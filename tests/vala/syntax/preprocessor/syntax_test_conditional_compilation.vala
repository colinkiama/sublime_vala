// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    #if FOOBAR
//  ^ punctuation.definition.preprocessor.vala
//   ^^ keyword.control.preprocessor.if.vala
//      ^^^^^^ constant.other.preprocessor.symbol.vala

    #elif FOO
//  ^ punctuation.definition.preprocessor.vala
//   ^^^^ keyword.control.preprocessor.elif.vala
//        ^^^ constant.other.preprocessor.symbol.vala

    #else
//  ^ punctuation.definition.preprocessor.vala
//   ^^^^ keyword.control.preprocessor.else.vala

    #endif
//  ^ punctuation.definition.preprocessor.vala
//   ^^^^^ keyword.control.preprocessor.endif.vala

    #if ! NOFOO && (FOOBAR || FOO)
//  ^ punctuation.definition.preprocessor.vala
//   ^^ keyword.control.preprocessor.if.vala
//     ^ keyword.operator.preprocessor.negation.vala
//       ^^^^^ constant.other.preprocessor.symbol.vala
//             ^^ keyword.operator.preprocessor.vala
//                ^ punctuation.section.preprocessor.vala
//                 ^^^^^^ constant.other.preprocessor.symbol.vala
//                        ^^ keyword.operator.preprocessor.vala
//                           ^^^ constant.other.preprocessor.symbol.vala
//                              ^ punctuation.section.preprocessor.vala

#if ( FOOBAR || FOO || BAR ) && (FOOBAR == FOO && FOO == BAR)
//    ^^^^^^ constant.other.preprocessor.symbol.vala
//              ^^^ constant.other.preprocessor.symbol.vala
//                     ^^^ constant.other.preprocessor.symbol.vala
//                               ^^^^^^ constant.other.preprocessor.symbol.vala
//                                         ^^^ constant.other.preprocessor.symbol.vala
//                                                ^^^ constant.other.preprocessor.symbol.vala

    message ("FOOBAR == FOO == BAR");
//           ^^^^^^^^^^^^^^^^^^^^^^ source.vala string.quoted.double.vala
