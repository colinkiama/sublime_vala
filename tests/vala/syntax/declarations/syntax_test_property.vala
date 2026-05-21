// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; set; }
//      ^^^^^^ source.vala meta.block.vala storage.modifier.access.vala
//                    ^^^^ source.vala meta.block.vala variable.other.vala
//                         ^ source.vala meta.block.vala meta.block.vala punctuation.section.block.begin.vala
//                           ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
//                              ^ source.vala meta.block.vala meta.block.vala punctuation.terminator.statement.vala
//                                ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
//                                     ^ source.vala meta.block.vala meta.block.vala punctuation.section.block.end.vala

        public int count {
            get { }
//          ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
            set { }
//          ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
        }

        public string name {
            set { _name = value; }
//                        ^^^^^ source.vala meta.block.vala meta.block.vala variable.other.vala
        }

        public string label { get; private set; }
//                                 ^^^^^^^ source.vala meta.block.vala meta.block.vala storage.modifier.access.vala
//                                         ^^^ source.vala meta.block.vala meta.block.vala keyword.other.vala
    }
