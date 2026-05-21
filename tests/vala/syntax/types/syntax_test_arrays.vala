// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    int[] arr;
//     ^ source.vala meta.brackets.vala punctuation.section.brackets.begin.vala

    new string[10:uint8];
//                ^^^^^ source.vala meta.instance.vala meta.brackets.vala storage.type.vala

    arr[0];
//     ^ source.vala meta.brackets.vala punctuation.section.brackets.begin.vala

    int stack_buf[3];
//      ^^^^^^^^^ source.vala variable.other.vala
//               ^ source.vala meta.brackets.vala punctuation.section.brackets.begin.vala
//                ^ source.vala meta.brackets.vala constant.numeric.integer.decimal.vala
//                 ^ source.vala punctuation.section.brackets.end.vala
