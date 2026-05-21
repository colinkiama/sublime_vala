// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

init
	a:char = 'a'
	  // <- storage.type.genie
	//        ^ constant.character.literal.genie
	b:char = '\n'
	//        ^ constant.character.escape.genie
	c:char = '\x41'
	//        ^ constant.character.escape.genie
	d:char = '\u00e9'
	//        ^ constant.character.escape.genie
