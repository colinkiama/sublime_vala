// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    Bus.own_name (BusType.SESSION, BusNameOwnerFlags.NONE);
//  ^^^ source.vala variable.other.vala
//     ^ source.vala punctuation.accessor.dot.vala
//      ^^^^^^^^ source.vala variable.function.vala
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
