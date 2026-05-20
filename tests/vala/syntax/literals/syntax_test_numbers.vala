// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"
// Scopes match forms verified in tests/vala/programs/number_literals.vala

    42;
//  ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala

    100u;
//  ^^^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//      ^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    1000L;
//  ^^^^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//       ^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    23LL;
//  ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//    ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    42UL;
//  ^^^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//      ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    0xFF;
//  ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.base.vala
//    ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.value.vala

    0xdeadbeefLL;
//  ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.base.vala
//    ^^^^^^^^^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.value.vala
//              ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.suffix.vala

    0b1010;
//  ^^ source.vala constant.numeric.integer.binary.vala constant.numeric.base.vala
//    ^^^^ source.vala constant.numeric.integer.binary.vala constant.numeric.value.vala

    0o755;
//  ^^ source.vala constant.numeric.integer.octal.vala constant.numeric.base.vala
//    ^^^ source.vala constant.numeric.integer.octal.vala constant.numeric.value.vala

    022;
//  ^ source.vala constant.numeric.integer.octal.vala constant.numeric.base.vala
//   ^^ source.vala constant.numeric.integer.octal.vala constant.numeric.value.vala

    23.42F;
//  ^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala
//       ^ source.vala constant.numeric.float.decimal.vala constant.numeric.suffix.vala

    47.11;
//  ^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala

    23.42e+12d;
//  ^^^^^^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala
//            ^ source.vala constant.numeric.float.decimal.vala constant.numeric.suffix.vala

    47.11E-4f;
//  ^^^^^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala
//           ^ source.vala constant.numeric.float.decimal.vala constant.numeric.suffix.vala

    1.0e10;
//  ^^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala

    1.e10;
//  ^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//   ^ source.vala invalid.illegal.numeric-float-decimal.vala invalid.illegal.stray-punctuation.vala

    0x1.8p3;
//  ^^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.base.vala
//    ^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.vala
//     ^ source.vala constant.numeric.float.hexadecimal.vala punctuation.separator.decimal.vala
//      ^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.vala
//       ^^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.exponent.vala

    0x1.fP1F;
//  ^^^^^^^ source.vala constant.numeric.float.hexadecimal.vala

    0x0.8P1;
//  ^^^^^^^ source.vala constant.numeric.float.hexadecimal.vala

    0xab.cdp20;
//  ^^^^^^^^^^ source.vala constant.numeric.float.hexadecimal.vala

    0x47.11p9;
//  ^^^^^^^^^ source.vala constant.numeric.float.hexadecimal.vala
