// SYNTAX TEST "Packages/sublime_vala/Genie.sublime-syntax"

    "hello"
    //<- punctuation.definition.string.begin.genie
     //<- string.quoted.double.genie
          //<- punctuation.definition.string.end.genie

    ""
    //<- punctuation.definition.string.begin.genie
     //<- punctuation.definition.string.end.genie

    "hello\n"
    //<- punctuation.definition.string.begin.genie
          //<- constant.character.escape.genie
            //<- punctuation.definition.string.end.genie

    """verbatim"""
    //<- punctuation.definition.string.begin.genie
       //<- string.quoted.double.raw.genie
              //<- punctuation.definition.string.end.genie

    @"tpl"
    //<- punctuation.definition.string.begin.genie
      //<- meta.string.genie string.quoted.double.genie
         //<- punctuation.definition.string.end.genie

    @"$name"
    //<- punctuation.definition.string.begin.genie
      //<- punctuation.definition.template-expression.begin.genie
       //<- meta.template-expression.genie variable.other.genie
           //<- punctuation.definition.string.end.genie

    @"i=$s $$"
    //<- punctuation.definition.string.begin.genie
      //<- punctuation.definition.template-expression.begin.genie
       //<- meta.template-expression.genie variable.other.genie
          //<- constant.character.escape.genie
            //<- punctuation.definition.string.end.genie

    @"$(a)"
    //<- punctuation.definition.string.begin.genie
      //<- punctuation.section.interpolation.begin.genie
          //<- punctuation.definition.string.end.genie

    d["key"]
      //<- punctuation.definition.string.begin.genie
       //<- string.quoted.double.genie
          //<- punctuation.definition.string.end.genie
