// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    namespace MyApp {
//  ^^^^^^^^^ source.vala meta.namespace.vala storage.type.namespace.vala
    }

    namespace Outer.Inner {
//              ^^^^^ source.vala meta.namespace.vala entity.name.namespace.vala
    }

    namespace MyApp {
        namespace Models {
//      ^^^^^^^^^ source.vala meta.namespace.vala meta.namespace.vala storage.type.namespace.vala
            public class User : Object {
            }
        }
    }
