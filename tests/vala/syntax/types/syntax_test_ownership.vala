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

    void run (owned SourceFunc callback) {}
//            ^^^^^ source.vala meta.function.vala meta.function.parameters.vala storage.modifier.ownership.vala

    class Gen {
        private unowned G value;
//      ^^^^^^^ source.vala meta.class.vala meta.class.body.vala meta.block.vala storage.modifier.access.vala
//              ^^^^^^^ source.vala meta.class.vala meta.class.body.vala meta.block.vala storage.modifier.ownership.vala
    }
