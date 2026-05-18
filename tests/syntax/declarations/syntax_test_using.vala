// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    using Gtk;
//  ^^^^^ source.vala keyword.control.import.vala

    using Foo = Bar;
//  ^^^^^ source.vala keyword.control.import.vala

    using static Gtk.Button;
//  ^^^^^ source.vala keyword.control.import.vala

    using (var r = new Reader ()) {
//  ^^^^^ source.vala keyword.control.using.vala
    }
