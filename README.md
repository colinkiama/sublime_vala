# Vala Sublime Text Plugin

## Goals

- [X] Improved syntax highlighting with the latest language changes, using [sublime-syntax definitions](https://www.sublimetext.com/docs/syntax.html)
	- [X] Genie syntax highlighting (`Genie.sublime-syntax`, `.gs` files)
- [X] Completions with the latest language changes using [sublime-completions definitions](https://www.sublimetext.com/docs/completions.html)
- [X] Updated code snippets using [sublime-snippet defintions](https://www.sublimetext.com/docs/completions.html#snippets). e.g `prop` should output `public string prop_name { get; set; }` and `propfull` should also `get` and `set` their own scope to define behaviours

## Syntax Highlighting Implementation Progress

This uses the Sublime Text C# syntax definitions as a base so there are fewer things to implement then usual
- [X] Documentation comments (Valadoc)
- [X] Using statement list syntax
- [X] Add tests for Generics
- [X] CCode Attributes
                                                                  
## Credits

Sublime Text C# Syntax definitions: https://github.com/sublimehq/Packages/blob/master/C%23/C%23.sublime-syntax

Vala.sublime-syntax comments and documentation comments syntax: https://github.com/patrickrgaffney/Vala.sublime-syntax

