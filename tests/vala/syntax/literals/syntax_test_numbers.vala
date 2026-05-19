// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    42;
//  ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala

    100u;
//  ^^^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//      ^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    23LL;
//  ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.value.vala
//    ^^ source.vala constant.numeric.integer.decimal.vala constant.numeric.suffix.vala

    0xFF;
//  ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.base.vala
//    ^^ source.vala constant.numeric.integer.hexadecimal.vala constant.numeric.value.vala

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

    23.42e+12d;
//  ^^^^^^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala
//            ^ source.vala constant.numeric.float.decimal.vala constant.numeric.suffix.vala

    1.e10;
//  ^^^^^ source.vala constant.numeric.float.decimal.vala constant.numeric.value.vala

    0x1.8p3;
//    ^^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.base.vala
//      ^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.vala
//       ^ source.vala constant.numeric.float.hexadecimal.vala punctuation.separator.decimal.vala
//        ^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.vala
//         ^^ source.vala constant.numeric.float.hexadecimal.vala constant.numeric.value.exponent.vala

    0x0.8P1;
//  ^^^^^^^ source.vala constant.numeric.float.hexadecimal.vala
