// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    "hello";
//  ^^^^^^^ source.vala string.quoted.double.vala

    """verbatim""";
//  ^^^^^^^^^^^^^^ source.vala string.quoted.double.raw.vala

    @"template";
//  ^^^^^^^^^^^ source.vala meta.string.vala string.quoted.double.vala

    @"$name";
//    ^^^^^ source.vala meta.string.vala string.quoted.double.vala variable.other.vala

    @"$(a + b)";
//       ^ source.vala meta.interpolation.vala punctuation.section.interpolation.begin.vala

    'c';
//  ^^^ source.vala string.quoted.single.vala

    var r = /pat/im;
//          ^^^^^^^^ source.vala string.regexp.vala
