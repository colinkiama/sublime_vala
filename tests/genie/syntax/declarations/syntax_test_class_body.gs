// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

class Foo:Object
// <- storage.type.class.genie
//    ^^^ entity.name.type.class.genie
//       ^ punctuation.separator.class.inheritance.genie
//        ^^^^^^ entity.name.type.class.genie
    prop name:string
    // <- storage.type.property.genie
         // <- variable.other.member.genie
             // <- punctuation.separator.type.genie
              // <- storage.type.genie
    construct
    // <- storage.type.accessor.genie
    final
    // <- keyword.other.genie
    event clicked()
    // <- keyword.other.genie

	prop readonly bar:string
	// <- storage.type.property.genie
	     // <- storage.modifier.genie
	              // <- variable.other.member.genie
	                 // <- punctuation.separator.type.genie
	                  // <- storage.type.genie

	prop foo:string
		get
		// <- storage.type.accessor.genie
			return "bar"
			// <- keyword.control.return.genie
