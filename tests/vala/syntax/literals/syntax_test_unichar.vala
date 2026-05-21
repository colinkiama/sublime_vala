// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    unichar c;
//  ^^^^^^^ source.vala storage.type.vala
//          ^ source.vala variable.other.vala

    for (int i = 0; s.get_next_char (ref i, out c);) {
//  ^^^ source.vala keyword.control.for.vala
//                   ^ source.vala meta.group.vala punctuation.accessor.dot.vala
//                    ^^^^^^^^^^^^^ source.vala meta.group.vala meta.function-call.vala variable.function.vala
//                                   ^^^ source.vala meta.group.vala meta.function-call.vala meta.group.vala storage.modifier.argument.vala
//                                          ^^^ source.vala meta.group.vala meta.function-call.vala meta.group.vala storage.modifier.argument.vala
    }

    switch (type) {
    case UnicodeType.UPPERCASE_LETTER:
//  ^^^^ source.vala meta.block.vala keyword.control.switch.case.vala
//       ^^^^^^^^^^^ source.vala meta.block.vala support.type.vala
//                  ^ source.vala meta.block.vala punctuation.accessor.dot.namespace.vala
//                   ^^^^^^^^^^^^^^^^ source.vala meta.block.vala constant.other.enum.vala
//                                   ^ source.vala meta.block.vala punctuation.separator.case-statement.vala
    }
