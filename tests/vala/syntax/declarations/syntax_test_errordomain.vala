// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    errordomain IOError {
//  ^^^^^^^^^^^ source.vala meta.errordomain.vala storage.type.errordomain keyword.declaration.errordomain.vala
        FAILED,
//      ^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala constant.other.errordomain.vala
    }

    public errordomain DemoError {
        SOME_ERROR
//      ^^^^^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala constant.other.errordomain.vala
    }

    // Parser.parse_errordomain_declaration allows member declarations after
    // the value list. The initializer used to swallow the terminating `;`,
    // so everything below it stayed scoped as error codes.
    errordomain Foo {
        BAD = 23;
//          ^ source.vala meta.errordomain.body.vala keyword.operator.assignment.vala
//              ^ source.vala meta.errordomain.body.vala punctuation.terminator.statement.vala

        public static Foo from_string (string error) {
//             ^^^^^^ source.vala meta.errordomain.body.vala storage.modifier.vala
//                        ^^^^^^^^^^^ source.vala meta.errordomain.body.vala meta.function.vala entity.name.function.vala
            return new Foo.BAD ("BAD");
        }
    }

    // ... and a body that is nothing but members, with no value list at all
    // (GLib's Gio-2.0-custom.vala does this).
    public errordomain DBusError {
        [CCode (error_pos = 0.8)]
        public static void set_dbus_error (string name) throws GLib.DBusError;
//             ^^^^^^ source.vala meta.errordomain.body.vala storage.modifier.vala
//                         ^^^^^^^^^^^^^^ source.vala meta.errordomain.body.vala meta.function.vala entity.name.function.vala
    }
