// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    /** basic doc comment */
//  ^^^^^^^^^^^^^^^^^^^^^^^ source.vala comment.block.documentation.vala

    /** ''bold'' */
//      ^^ source.vala comment.block.documentation.vala markup.bold.vala punctuation.definition.bold.begin.vala

    /** //italic// */
//      ^^ source.vala comment.block.documentation.vala markup.italic.vala punctuation.definition.italic.begin.vala

    /** {@link thing} */
//       ^^^^^^^^^^^^^^ comment.block.documentation.vala

    /** @deprecated v1.0 */
//      ^^^^^^^^^^^ source.vala comment.block.documentation.vala storage.type.vala
