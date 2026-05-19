def m():string
	return ""

init
	s = "hello\n"
	v = """verbatim"""
	t = @"i=$s $$"
	assert( m() == "" )
