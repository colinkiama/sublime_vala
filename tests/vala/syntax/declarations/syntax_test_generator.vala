// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    abstract class Generator<G> {
//  ^^^^^^^^ source.vala storage.modifier.vala
//           ^^^^^ source.vala storage.type.class keyword.declaration.class.vala
//                 ^^^^^^^^^ source.vala meta.class.vala entity.name.class.vala
//                          ^ source.vala meta.class.vala meta.generic.vala punctuation.definition.generic.begin.vala
//                           ^ source.vala meta.class.vala meta.generic.vala variable.parameter.type.vala
//                            ^ source.vala meta.class.vala meta.generic.vala punctuation.definition.generic.end.vala
        protected async void generate () {
//      ^^^^^^^^^ source.vala meta.block.vala storage.modifier.access.vala
//                ^^^^^ source.vala meta.block.vala storage.modifier.vala
        }

        protected async void feed (G value) {
            yield feed (value);
//          ^^^^^ source.vala keyword.other.vala
//                ^^^^ source.vala meta.function-call.vala variable.function.vala
        }
    }
