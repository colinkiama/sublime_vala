// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

    var o = new list of string
    //          ^^^^ storage.type.collection.genie
    //               ^^ keyword.other.of.genie
    //                  ^^^^^^ storage.type.genie
    var d = new dict of string,int
    //          ^^^^ storage.type.collection.genie
    //               ^^ keyword.other.of.genie
    //                  ^^^^^^ storage.type.genie
    //                        ^ punctuation.separator.genie
    //                         ^^^ storage.type.genie
    d["one"] = 1
    //^ punctuation.definition.string.begin.genie
    // ^^^ string.quoted.double.genie
    //    ^ punctuation.definition.string.end.genie
    if o isa Object
    //   ^^^ keyword.operator.type.genie
    if a is not b
    //   ^^^^^^ keyword.operator.relational.genie
