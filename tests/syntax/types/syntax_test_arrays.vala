// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    int[] arr;
//     ^ source.vala meta.brackets.vala punctuation.section.brackets.end.vala

    new string[10:uint8];
//             ^^ source.vala meta.instance.vala meta.brackets.vala constant.numeric.value.vala

    arr[0];
//     ^ source.vala meta.brackets.vala punctuation.section.brackets.begin.vala
