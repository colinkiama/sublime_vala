// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    public abstract string speak ();
//  ^^^^^^ source.vala storage.modifier.access.vala
//         ^^^^^^^^ source.vala storage.modifier.vala
//                  ^^^^^^ source.vala storage.type.vala
//                         ^^^^^ source.vala meta.function.vala entity.name.function.vala
//                               ^ source.vala meta.function.parameters.vala punctuation.section.parameters.begin.vala
//                                ^ source.vala meta.function.parameters.vala punctuation.section.parameters.end.vala

    public override string speak () {
//  ^^^^^^ source.vala storage.modifier.access.vala
//         ^^^^^^^^ source.vala support.type.vala
//                  ^^^^^^ source.vala storage.type.vala
//                         ^^^^^ source.vala meta.function.vala entity.name.function.vala
//                               ^ source.vala meta.function.parameters.vala punctuation.section.parameters.begin.vala
//                                ^ source.vala meta.function.parameters.vala punctuation.section.parameters.end.vala
//                                  ^ source.vala meta.block.vala punctuation.section.block.begin.vala
    }
