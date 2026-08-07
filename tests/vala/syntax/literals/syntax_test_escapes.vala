// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"
// Escape sequences accepted by Vala.Scanner: \' \" \\ \0 \b \f \n
// \r \t \v \$ \uXXXX \xHH, plus verbatim template strings (@"""...""").

    "tab\there";
//      ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "quote\"end";
//        ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "back\\slash";
//       ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "nul\0end";
//      ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "dollar\$end";
//         ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "single\'end";
//         ^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "uni\u00e9end";
//      ^^^^^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "hex\x41end";
//      ^^^^ source.vala string.quoted.double.vala constant.character.escape.vala

    "bad\qend";
//      ^ source.vala string.quoted.double.vala invalid.illegal.lone-escape.vala

    '\0';
//  ^^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^^ source.vala meta.string.vala string.quoted.single.vala constant.character.escape.vala

    '\'';
//  ^^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^^ source.vala meta.string.vala string.quoted.single.vala constant.character.escape.vala

    '\\';
//  ^^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^^ source.vala meta.string.vala string.quoted.single.vala constant.character.escape.vala

    '\u00e9';
//  ^^^^^^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^^^^^^ source.vala meta.string.vala string.quoted.single.vala constant.character.escape.vala

    '\x41';
//  ^^^^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^^^^ source.vala meta.string.vala string.quoted.single.vala constant.character.escape.vala

    'a';
//  ^^^ source.vala meta.string.vala string.quoted.single.vala
//   ^ source.vala meta.string.vala string.quoted.single.vala constant.character.literal.vala

    '\q';
//  ^^^^ source.vala invalid.illegal.lone-escape.vala

    @"""plain""";
//  ^^^^^^^^^^^^ source.vala meta.string.vala string.quoted.double.raw.vala

    @"""hi $name""";
//  ^^^^ source.vala meta.string.vala string.quoted.double.raw.vala
//         ^ source.vala meta.template-expression.vala punctuation.definition.template-expression.begin.vala
//          ^^^^ source.vala meta.template-expression.vala variable.other.vala

    @"""sum $(a + b)""";
//          ^^ source.vala meta.interpolation.vala punctuation.section.interpolation.begin.vala
//            ^ source.vala meta.interpolation.vala source.vala.embedded

    @"""a $$ b""";
//        ^^ source.vala meta.string.vala string.quoted.double.raw.vala constant.character.escape.vala
