// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Widget {
        public signal void clicked ();
//        ^^^^^^ source.vala storage.modifier.access.vala
//               ^^^^^^ source.vala keyword.declaration.signal.vala
    }
