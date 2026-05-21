def m():string
	return ""

init
	s:string = "hello\n"
	v:string = """verbatim"""
	t:string = @"i=$s $$"
	assert( m() == "" )
