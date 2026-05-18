// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    1 + 2;
//    ^ source.vala keyword.operator.vala

    1 == 2;
//     ^^ source.vala keyword.operator.vala

    3 || 4;
//     ^^ source.vala keyword.operator.vala

    1 ?? 2;
//     ^^ source.vala keyword.operator.vala

    1 == 2 ? 3 : 4;
//         ^ source.vala keyword.operator.ternary.vala

    a in b;
//   ^^ source.vala variable.other.vala
