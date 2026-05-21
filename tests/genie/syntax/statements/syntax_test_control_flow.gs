// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

init
	if false
		assert_not_reached()
		//<- entity.name.function.genie
	else
		assert( true )
		//<- entity.name.function.genie

	for i:int = 0 to 3
		assert( i < 4 )
		//<- entity.name.function.genie
