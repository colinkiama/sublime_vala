// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    delegate void Handler ();
//  ^^^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.type keyword.declaration.function.vala

    public delegate int Compare (int a);
//  ^^^^^^ source.vala storage.modifier.access.vala

    // Parser.parse_delegate_declaration accepts a throws clause
    class WithDelegates {
        public delegate string ExtractableCheckId (GLib.Type type) throws GLib.Error;
//                                                                 ^^^^^^ source.vala keyword.control.exception.vala
//                                                                        ^^^^ source.vala support.type.vala
//                                                                                  ^ source.vala punctuation.terminator.vala
    }
