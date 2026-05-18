// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    bool x;
//  ^^^^ source.vala storage.type.vala

    int i; string s; void v; float f; double d;
//  ^^^ source.vala storage.type.vala
//      ^^^^^^ source.vala storage.type.vala
//             ^^^^ source.vala storage.type.vala

    int8 i8; uint8 u8; size_t sz; unichar u;
//  ^^^^ source.vala storage.type.vala
