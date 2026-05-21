delegate DelegateType(a:int):bool

def f1(a:int):bool
	return a > 0

init
	assert( f1(1) )
