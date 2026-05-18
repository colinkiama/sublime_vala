// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    -x; !y; ~z;
//  ^ source.vala keyword.operator.vala

    n++;
//   ^^ source.vala keyword.operator.vala

    ptr->field;
//     ^^ source.vala punctuation.accessor.arrow.vala
