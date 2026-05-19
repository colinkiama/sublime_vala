// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    using Gtk;
//  ^^^^^ source.vala keyword.control.import.vala
//        ^^^ source.vala entity.name.namespace.vala

    using Gee;
//        ^^^ source.vala entity.name.namespace.vala

    using Foo = Bar;
//  ^^^^^ source.vala keyword.control.import.vala
//        ^^^ source.vala variable.other.namespace.vala
//            ^ source.vala keyword.operator.assignment.vala
//              ^^^ source.vala entity.name.namespace.vala

    using static Gtk.Button;
//  ^^^^^ source.vala keyword.control.import.vala

    using (var r = new Reader ()) {
//  ^^^^^ source.vala keyword.control.using.vala
    }
