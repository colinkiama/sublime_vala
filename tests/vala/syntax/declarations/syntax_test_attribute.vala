// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    [CCode (cname = "foo")]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^ source.vala meta.annotation.vala variable.annotation.vala

    [Simple]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^^ source.vala meta.annotation.vala variable.annotation.vala

    [Description ("The display name")]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^^^^^^^ source.vala meta.annotation.vala variable.annotation.vala

    [DBus (name = "org.example.Service")]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^ source.vala meta.annotation.vala variable.annotation.vala

    [CCode (name = "get_value")]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^ source.vala meta.annotation.vala variable.annotation.vala

    public int value { get; private set; }
//                          ^^^^^^^ source.vala meta.block.vala storage.modifier.access.vala
//                                  ^^^ source.vala meta.block.vala keyword.other.vala
