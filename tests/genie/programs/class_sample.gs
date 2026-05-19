class Test:Object
	prop foo:string
	prop readonly bar:string
		get
			return "bar"

init
	var a = new Test()
	assert( a.foo == "" )
