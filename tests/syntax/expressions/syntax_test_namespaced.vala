// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    GLib.Idle.add ();
//  ^^^^ source.vala support.type.vala
//      ^ source.vala punctuation.accessor.dot.namespace.vala
//       ^^^^ source.vala support.type.vala

    new GLib.MainLoop ();
//      ^^^^ source.vala meta.instance.vala support.type.vala
//          ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//           ^^^^^^^^ source.vala meta.instance.vala support.type.vala
