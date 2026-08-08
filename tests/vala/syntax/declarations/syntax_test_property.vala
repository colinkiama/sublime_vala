// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; set; }
//      ^^^^^^ source.vala meta.class.body.vala storage.modifier.access.vala
//                    ^^^^ source.vala meta.property.vala variable.other.member.vala
//                         ^ source.vala meta.property.vala meta.block.vala punctuation.section.block.begin.vala
//                           ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.get.vala
//                              ^ source.vala meta.property.vala punctuation.terminator.vala
//                                ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.set.vala
//                                     ^ source.vala meta.property.vala meta.block.vala punctuation.section.block.end.vala

        public int count {
            get { }
//          ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.get.vala
            set { }
//          ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.set.vala
        }

        public string name {
            set { _name = value; }
//                        ^^^^^ source.vala meta.property.vala variable.other.vala
        }

        public string label { get; private set; }
//                                 ^^^^^^^ source.vala meta.property.vala storage.modifier.access.vala
//                                         ^^^ source.vala meta.property.vala keyword.declaration.function.accessor.set.vala
    }

    // A field initializer is not a property accessor block. The `{` used to
    // open one, and the first nested element's `}` closed it again, leaving
    // every later brace off by one.
    class Options {
        const OptionEntry[] entries = {
//                                  ^ source.vala meta.class.body.vala keyword.operator.assignment.variable.vala
//                                    ^ source.vala meta.class.body.vala punctuation.section.block.begin.vala
            { "profile", 0, OptionArg.CALLBACK, (void*) parse_profile, "help", "P" },
//          ^ source.vala meta.class.body.vala punctuation.section.block.begin.vala
//                                                                                 ^ source.vala meta.class.body.vala punctuation.section.block.end.vala
        };
//      ^ source.vala meta.class.body.vala punctuation.section.block.end.vala
//       ^ source.vala meta.class.body.vala punctuation.terminator.statement.vala
    }
