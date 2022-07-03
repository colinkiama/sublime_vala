# Vala Sublime Text Plugin

## Goals

- [ ] Improved syntax highlighting with the latest language changes, using [sublime-syntax definitions](https://www.sublimetext.com/docs/syntax.html)
	- [ ] Genie syntax highlighting
- [ ] Completions with the latest language changes using [sublime-completions definitions](https://www.sublimetext.com/docs/completions.html)
- [ ] Updated code snippets using [sublime-snippet defintions](https://www.sublimetext.com/docs/completions.html#snippets). e.g `prop` should output `public string prop_name { get; set; }` and `propfull` should also `get` and `set` there own scope to define behaviours
- [ ] Include a Lazy build system that uses [`valac`](https://wiki.gnome.org/Projects/Vala/Tutorial#Compile_and_Run) to build a program using all the `.vala` files the current directory and subdirectories, to a `build/` folder
	- [ ] A "default lazy Compile to C" Build option
	- [ ] Have custom build settings that allow compiler args to be configured like packages to include, compile methods etc. 
	- [ ] Option to Run compiled program
