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

    // a member access on the enum value itself must not swallow the rest of
    // the line - it used to leave the qualified-path context on the stack
    signature.append_keyword (Vala.BinaryOperator.IN.to_string ());
//                            ^^^^ source.vala meta.group.vala support.type.vala
//                                ^ source.vala meta.group.vala punctuation.accessor.dot.namespace.vala
//                                 ^^^^^^^^^^^^^^ source.vala meta.group.vala support.type.vala
//                                               ^ source.vala meta.group.vala punctuation.accessor.dot.namespace.vala
//                                                ^^ source.vala meta.group.vala constant.other.enum.vala
//                                                  ^ source.vala meta.group.vala punctuation.accessor.dot.vala
//                                                   ^^^^^^^^^ source.vala meta.group.vala meta.function-call.vala variable.function.vala
//                                                             ^ source.vala meta.group.vala meta.function-call.vala meta.group.vala punctuation.section.group.begin.vala
//                                                              ^ source.vala meta.group.vala meta.function-call.vala meta.group.vala punctuation.section.group.end.vala
//                                                               ^ source.vala meta.group.vala punctuation.section.group.end.vala
//                                                                ^ source.vala punctuation.terminator.statement.vala

    // the nullable member accessor must work the same way
    Vala.BinaryOperator.IN?.to_string ();
//                      ^^ source.vala constant.other.enum.vala
//                        ^ source.vala punctuation.accessor.null-safe.vala
//                         ^ source.vala punctuation.accessor.dot.vala
//                          ^^^^^^^^^ source.vala meta.function-call.vala variable.function.vala
