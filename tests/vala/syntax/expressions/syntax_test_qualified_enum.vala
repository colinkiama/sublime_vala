// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    Bus.own_name (BusType.SESSION, BusNameOwnerFlags.NONE);
//  ^^^ source.vala meta.function-call.vala support.type.vala
//     ^ source.vala meta.function-call.vala punctuation.accessor.dot.namespace.vala
//      ^^^^^^^^ source.vala meta.function-call.vala variable.function.vala
//                ^^^^^^^ source.vala support.type.vala
//                       ^ source.vala punctuation.accessor.dot.namespace.vala
//                        ^^^^^^^ source.vala constant.other.enum.vala
//                                 ^^^^^^^^^^^^^^^^^ source.vala support.type.vala
//                                                  ^ source.vala punctuation.accessor.dot.namespace.vala
//                                                   ^^^^ source.vala constant.other.enum.vala

    Status s = Status.OK;
//  ^^^^^^ source.vala support.type.vala
//             ^^^^^^ source.vala support.type.vala
//                   ^ source.vala punctuation.accessor.dot.namespace.vala
//                    ^^ source.vala constant.other.enum.vala

    GLib.Priority.DEFAULT;
//  ^^^^ source.vala support.type.vala
//      ^ source.vala punctuation.accessor.dot.namespace.vala
//       ^^^^^^^^ source.vala support.type.vala
//               ^ source.vala punctuation.accessor.dot.namespace.vala
//                ^^^^^^^ source.vala constant.other.enum.vala

    A.B.C.D.E.CONSTANT;
//  ^ source.vala support.type.vala
//   ^ source.vala punctuation.accessor.dot.namespace.vala
//    ^ source.vala support.type.vala
//     ^ source.vala punctuation.accessor.dot.namespace.vala
//      ^ source.vala support.type.vala
//       ^ source.vala punctuation.accessor.dot.namespace.vala
//        ^ source.vala support.type.vala
//         ^ source.vala punctuation.accessor.dot.namespace.vala
//          ^ source.vala support.type.vala
//           ^ source.vala punctuation.accessor.dot.namespace.vala
//            ^ source.vala constant.other.enum.vala
