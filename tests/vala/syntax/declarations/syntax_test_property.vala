// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; set; }
//      ^^^^^^ source.vala meta.class.body.vala meta.block.vala storage.modifier.access.vala
//                    ^^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala variable.other.member.vala
//                         ^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala punctuation.section.block.begin.vala
//                           ^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala keyword.declaration.function.accessor.get.vala
//                              ^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala punctuation.terminator.vala
//                                ^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala keyword.declaration.function.accessor.set.vala
//                                     ^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala punctuation.section.block.end.vala

        public int count {
            get { }
//          ^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala keyword.declaration.function.accessor.get.vala
            set { }
//          ^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala keyword.declaration.function.accessor.set.vala
        }

        public string name {
            set { _name = value; }
//                        ^^^^^ source.vala meta.class.body.vala meta.block.vala meta.property.vala meta.block.vala meta.function.vala meta.block.vala variable.language.vala
        }
    }
