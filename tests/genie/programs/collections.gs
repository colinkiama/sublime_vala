// list/dict need libgee: valac --pkg gee-0.8 collections.gs

uses Gee

init
	var o = new list of string
	if o isa Object
		print( "list is Object" )
	var d = new dict of string,int
	d["one"] = 1
	assert( d["one"] == 1 )
