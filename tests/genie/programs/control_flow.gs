init
	if false
		assert_not_reached()
	else
		assert( true )

	for i:int = 0 to 3
		assert( i < 4 )

	case 1
		when 1
		default
