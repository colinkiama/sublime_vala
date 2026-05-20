// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    public virtual signal void sig () {
//  ^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.access.vala
//                 ^^^^^^ source.vala meta.class.body.vala meta.block.vala keyword.declaration.signal.vala
//                               ^^^ source.vala meta.class.body.vala meta.block.vala entity.name.function.signal.vala
//                                    ^ source.vala meta.class.body.vala meta.block.vala meta.function.parameters.vala punctuation.section.parameters.end.vala
        stdout.printf ("ok");
//      ^^^^^^ source.vala meta.class.body.vala meta.block.vala support.type.vala
    }

    public override void sig () {
//  ^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.access.vala
//         ^^^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.vala
//                  ^^^^ source.vala meta.class.body.vala meta.block.vala storage.type.vala
//                       ^^^ source.vala meta.class.body.vala meta.block.vala meta.function.vala entity.name.function.vala
//                           ^ source.vala meta.class.body.vala meta.block.vala meta.function.parameters.vala punctuation.section.parameters.begin.vala
//                            ^ source.vala meta.class.body.vala meta.block.vala meta.function.parameters.vala punctuation.section.parameters.end.vala
    }
