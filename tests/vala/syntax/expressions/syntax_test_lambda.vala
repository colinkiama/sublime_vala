// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    () => { };
//     ^^ source.vala keyword.declaration.function.arrow.vala

    (a, b) => { };
//   ^ source.vala meta.function.anonymous.vala meta.group.vala variable.parameter.vala

    x => x + 1;
//  ^ source.vala meta.function.anonymous.vala variable.parameter.vala
//    ^^ source.vala meta.function.anonymous.vala keyword.declaration.function.arrow.vala
