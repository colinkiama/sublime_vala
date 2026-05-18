// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
        public string name { get; set; }
//        ^^^^^^ source.vala storage.modifier.access.vala
//                      ^^^^ source.vala meta.property.vala variable.other.member.vala
//                            ^^^ source.vala meta.property.vala meta.block.vala keyword.declaration.function.accessor.get.vala
//                                 ^^^ source.vala meta.property.vala meta.block.vala keyword.declaration.function.accessor.set.vala

        public int count {
            get { }
//          ^^^ source.vala meta.property.vala meta.block.vala keyword.declaration.function.accessor.get.vala
            set { }
//          ^^^ source.vala meta.property.vala meta.block.vala keyword.declaration.function.accessor.set.vala
        }
    }
