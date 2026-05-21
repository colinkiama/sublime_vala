// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    GLib.Idle.add ();
//  ^^^^ source.vala support.type.vala
//      ^ source.vala punctuation.accessor.dot.namespace.vala
//       ^^^^ source.vala support.type.vala

    new GLib.MainLoop ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala
//      ^^^^ source.vala meta.instance.vala support.type.vala
//          ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//           ^^^^^^^^ source.vala meta.instance.vala support.type.vala

    GLib.MainLoop loop = new GLib.MainLoop ();
//  ^^^^ source.vala support.type.vala
//      ^ source.vala punctuation.accessor.dot.namespace.vala
//       ^^^^^^^^ source.vala support.type.vala
//                      ^ source.vala
//                       ^^^ source.vala meta.instance.vala keyword.operator.new.vala
//                           ^^^^ source.vala meta.instance.vala support.type.vala
//                               ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//                                ^^^^^^^^ source.vala meta.instance.vala support.type.vala

    FileUtils.get_contents (path, out content);
//  ^^^^^^^^^ source.vala meta.function-call.vala support.type.vala
//           ^ source.vala meta.function-call.vala punctuation.accessor.dot.namespace.vala
//            ^^^^^^^^^^^^ source.vala meta.function-call.vala variable.function.vala
