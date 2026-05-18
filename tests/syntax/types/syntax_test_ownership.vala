// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    owned string s;
//  ^^^^^ source.vala storage.modifier.ownership.vala

    unowned Foo f;
//  ^^^^^^^ source.vala storage.modifier.ownership.vala

    weak Bar? b;
//  ^^^^ source.vala storage.modifier.ownership.vala

    dynamic Object o;
//  ^^^^^^^ source.vala storage.modifier.vala

    (owned) x;
//   ^^^^^ source.vala storage.modifier.ownership.vala
