// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    [CCode (cname = "foo")]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^ source.vala meta.annotation.vala variable.annotation.vala

    [Simple]
//  ^ source.vala meta.annotation.vala punctuation.definition.annotation.begin.vala
//   ^^^^^^ source.vala meta.annotation.vala variable.annotation.vala
