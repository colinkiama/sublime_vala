// SYNTAX TEST "Vala.sublime-syntax"

/////////////////////////////////////////////////////////////////////
// LINE COMMENTS
/////////////////////////////////////////////////////////////////////

    // blah blah
//  ^^ punctuation.definition.comment.vala
//  ^^^^^^^^^^^^^ comment.line.vala

/////////////////////////////////////////////////////////////////////
// BLOCK COMMENTS
/////////////////////////////////////////////////////////////////////

    /* sdfdsfsdf */
//  ^^ punctuation.definition.comment.begin.vala
//  ^^^^^^^^^^^^^^^ comment.block.vala
//               ^^ punctuation.definition.comment.end.vala

    /*
//  ^^ comment.block.vala punctuation.definition.comment.begin.vala

    thing
//  ^^^^^^ comment.block.vala

    */
//  ^^ comment.block.vala punctuation.definition.comment.end.vala
//    ^ -comment -punctuation

/////////////////////////////////////////////////////////////////////
// DOC COMMENTS
/////////////////////////////////////////////////////////////////////

    /** basic doc comment */
//  ^^^ punctuation.definition.comment.begin.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//                        ^^ punctuation.definition.comment.end.vala


    /** Include newlines<<BR>> */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//                      ^^^^^^ constant.character.escape.vala
//                             ^^ punctuation.definition.comment.end.vala

    /** ''bold'' */
//  ^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//      ^^^^^^^^ markup.bold.vala
//            ^^ punctuation.definition.bold.end.vala
//               ^^ punctuation.definition.comment.end.vala

    /** //italic// */
//  ^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.italic.begin.vala
//      ^^^^^^^^^^ markup.italic.vala
//              ^^ punctuation.definition.italic.end.vala
//                 ^^ punctuation.definition.comment.end.vala

    /** __underline__ */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.underline.begin.vala
//      ^^^^^^^^^^^^^ markup.underline.vala
//                 ^^ punctuation.definition.underline.end.vala
//                    ^^ punctuation.definition.comment.end.vala

    /** ``blockquote`` */
//  ^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.blockquote.begin.vala
//      ^^^^^^^^^^^^^^ markup.quote.vala
//                  ^^ punctuation.definition.blockquote.end.vala
//                     ^^ punctuation.definition.comment.end.vala

    /** ''//__bold italic underlined__//'' */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//        ^^ punctuation.definition.italic.begin.vala
//          ^^ punctuation.definition.underline.begin.vala
//            ^^^^^^^^^^^^^^^^^^^^^^ markup.bold.vala markup.italic.vala markup.underline.vala
//                                  ^^ punctuation.definition.underline.end.vala
//                                    ^^ punctuation.definition.italic.end.vala
//                                      ^^ punctuation.definition.bold.end.vala
//                                         ^^ punctuation.definition.comment.end.vala

    /** ''force <<BR>>newline'' */
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.definition.bold.begin.vala
//      ^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala markup.bold.vala
//              ^^^^^^ comment.block.documentation.vala markup.bold.vala constant.character.escape.vala
//                           ^^ punctuation.definition.bold.end.vala
//                              ^^  punctuation.definition.comment.end.vala

    /** inline {@link thing} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//             ^ punctuation.section.braces.begin.vala
//              ^^^^^ storage.type.vala
//                    ^^^^^ entity.name.section.vala
//                         ^ punctuation.section.braces.end.vala
//                           ^^ punctuation.definition.comment.end.vala

    /** {@inheritDoc} */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^ punctuation.section.braces.begin.vala
//       ^^^^^^^^^^^ storage.type.vala
//                  ^ punctuation.section.braces.end.vala
//                    ^^ punctuation.definition.comment.end.vala

    /**
     * ordered and unordered lists
     *
     *  1. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  # numbered list
//      ^ markup.list.numbered.vala
     *
     *  i. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  I. numbered list
//      ^^ markup.list.numbered.vala
     *
     *  a. alphabetical list
//      ^^ markup.list.numbered.vala
     *
     *  A. alphabetical list
//      ^^ markup.list.numbered.vala
     *
     *  * doted list
//      ^ markup.list.unnumbered.vala
     *
     *  A. alphabetical list
//      ^^ markup.list.numbered.vala
     *    a. alphabetical list
//        ^^ markup.list.numbered.vala
     */

    /**
     * Code blocks
     *
     * {{{
//     ^^^ punctuation.section.braces.begin.vala
     *   static int main (string[] arg) {
     *      return 0;
     *   }
     * }}}
//     ^^^ punctuation.section.braces.end.vala
     *
     */

    /** [[http://google.at|google]] */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                        ^ punctuation.separator.vala
//                               ^^ punctuation.section.brackets.end.vala
//                                  ^^ punctuation.definition.comment.end.vala

    /** [[http://google.at]] */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                        ^^ punctuation.section.brackets.end.vala
//                           ^^ punctuation.definition.comment.end.vala

    /** {{/images/favicon.png}} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                           ^^ punctuation.section.brackets.end.vala
//                              ^^ punctuation.definition.comment.end.vala


    /** {{/images/favicon.png|alt-message}} */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^ punctuation.section.brackets.begin.vala
//                           ^ punctuation.separator.vala
//                                       ^^ punctuation.section.brackets.end.vala
//                                          ^^ punctuation.definition.comment.end.vala

    /**
     * Short description
     *
     * || ''headline'' || ''headline'' ||
//     ^^ punctuation.separator.vala
//        ^^^^^^^^^^^^ markup.bold.vala
//        ^^ punctuation.definition.bold.begin.vala
//                  ^^ punctuation.definition.bold.end.vala
//                     ^^ punctuation.separator.vala
//                        ^^^^^^^^^^^^ markup.bold.vala
//                        ^^ punctuation.definition.bold.begin.vala
//                                  ^^ punctuation.definition.bold.end.vala
//                                     ^^ punctuation.separator.vala
     * || one cell || one cell ||
//     ^^ punctuation.separator.vala
//                 ^^ punctuation.separator.vala
//                             ^^ punctuation.separator.vala
     *
     */

    /**
    * = headline 1 =
//    ^ punctuation.definition.heading.vala
//      ^^^^^^^^^^^ markup.heading.vala
//                 ^ punctuation.definition.heading.vala
    * == healdline 2 ==
//    ^^ punctuation.definition.heading.vala
//       ^^^^^^^^^^^^ markup.heading.vala
//                   ^^ punctuation.definition.heading.vala
    * === healdline 3 ===
//    ^^^ punctuation.definition.heading.vala
//        ^^^^^^^^^^^^ comment.block.documentation.vala markup.heading.vala
//                    ^^^ punctuation.definition.heading.vala
    * ==== healdline 4 ====
//    ^^^^ punctuation.definition.heading.vala
//         ^^^^^^^^^^^^ markup.heading.vala
//                     ^^^^ punctuation.definition.heading.vala
    */

    /** @deprecated v1.0.0 */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^^^^^ storage.type.vala
//                         ^^ punctuation.definition.comment.end.vala

    /** @see other_section */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^ storage.type.vala
//           ^^^^^^^^^^^^^ entity.name.section.vala
//                         ^^ punctuation.definition.comment.end.vala

    /** @param name description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^ storage.type.vala
//             ^^^^ variable.parameter.vala
//                              ^^ punctuation.definition.comment.end.vala

    /** @since v1.1.1 */
//  ^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^ storage.type.vala
//                    ^^ punctuation.definition.comment.end.vala

    /** @return description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^ storage.type.vala
//                          ^^ punctuation.definition.comment.end.vala

    /** @throws type description */
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.documentation.vala
//  ^^^ punctuation.definition.comment.begin.vala
//      ^^^^^^^ storage.type.vala
//              ^^^^ entity.name.type.vala
//                               ^^ punctuation.definition.comment.end.vala

/////////////////////////////////////////////////////////////////////
// PRIMITIVE TYPES
/////////////////////////////////////////////////////////////////////

    bool;
//  ^^^^ storage.type.vala

    char; uchar; short; ushort; int; uint; long;
//  ^^^^ storage.type.vala
//        ^^^^^ storage.type.vala
//               ^^^^^ storage.type.vala
//                      ^^^^^^ storage.type.vala
//                              ^^^ storage.type.vala
//                                   ^^^^ storage.type.vala
//                                         ^^^^ storage.type.vala

    ulong; size_t; ssize_t; int8; uint8; int16;
//  ^^^^^ storage.type.vala
//         ^^^^^^ storage.type.vala
//                 ^^^^^^^ storage.type.vala
//                          ^^^^ storage.type.vala
//                                ^^^^^ storage.type.vala
//                                       ^^^^^ storage.type.vala

    uint16; int32; uint32; int64; uint64; unichar;
//  ^^^^^^ storage.type.vala
//          ^^^^^ storage.type.vala
//                 ^^^^^^ storage.type.vala
//                         ^^^^^ storage.type.vala
//                                ^^^^^^ storage.type.vala
//                                        ^^^^^^^ storage.type.vala

    float; double;
//  ^^^^^ storage.type.vala
//         ^^^^^^ storage.type.vala

    string;
//  ^^^^^^ storage.type.vala

    void;
//  ^^^^ storage.type.vala

/////////////////////////////////////////////////////////////////////
// LANGUAGE CONSTANTS
/////////////////////////////////////////////////////////////////////

    true; false; null;
//  ^^^^ constant.language.vala
//        ^^^^^ constant.language.vala
//               ^^^^ constant.language.vala

/////////////////////////////////////////////////////////////////////
// INTEGERS
/////////////////////////////////////////////////////////////////////

    1; 523453245345; -67;
//  ^ constant.numeric.integer.vala
//     ^^^^^^^^^^^^ constant.numeric.integer.vala
//                   ^ keyword.operator.arithmetic.vala
//                    ^^ constant.numeric.integer.vala

/////////////////////////////////////////////////////////////////////
// FLOATS
/////////////////////////////////////////////////////////////////////

    1.2; 3.1446346; 55555555.334;
//  ^^^ constant.numeric.float.vala
//   ^ punctuation.separator.decimal.vala
//       ^^^^^^^^^ constant.numeric.float.vala
//        ^ punctuation.separator.decimal.vala
//                  ^^^^^^^^^^^^ constant.numeric.float.vala
//                          ^ punctuation.separator.decimal.vala

/////////////////////////////////////////////////////////////////////
// STRINGS
/////////////////////////////////////////////////////////////////////

    "string"; "s1""s2";
//  ^ punctuation.definition.string.begin.vala
//  ^^^^^^^^ string.quoted.double.vala
//         ^ punctuation.definition.string.end.vala
//            ^ punctuation.definition.string.begin.vala
//               ^ punctuation.definition.string.end.vala
//                ^ punctuation.definition.string.begin.vala
//                   ^ punctuation.definition.string.end.vala
//            ^^^^^^^^ string.quoted.double.vala

    "\n \t \f \r \t \v \" \p";
//  ^ punctuation.definition.string.begin.vala
//   ^^ constant.character.escape.vala
//      ^^ constant.character.escape.vala
//         ^^ constant.character.escape.vala
//            ^^ constant.character.escape.vala
//               ^^ constant.character.escape.vala
//                  ^^ constant.character.escape.vala
//                     ^^ constant.character.escape.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.vala

    "
//  ^ string.quoted.double.vala punctuation.definition.string.begin.vala
    ";
// <- invalid.illegal.vala
 // <- invalid.illegal.vala
  // <- invalid.illegal.vala
// ^ invalid.illegal.vala
//  ^ invalid.illegal.vala punctuation.definition.string.end.vala
//   ^^ -string -invalid

    """no escapes \n, \t, \\, etc"""
//  ^^^ punctuation.definition.string.begin.vala
//                               ^^^ punctuation.definition.string.end.vala
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.triple.vala

    """
//  ^^^ string.quoted.triple.vala punctuation.definition.string.begin.vala
    over
//  ^^^^^ string.quoted.triple.vala
    multiple lines
//  ^^^^^^^^^^^^^^^ string.quoted.triple.vala
    """;
//  ^^^ string.quoted.triple.vala punctuation.definition.string.end.vala

/** Template strings. */

    @"template string"
//  ^^^^^^^^^^^^^^^^^^ string.quoted.double.vala
//  ^ storage.modifier.string.vala
//   ^ punctuation.definition.string.begin.vala
//                   ^ punctuation.definition.string.end.vala

/** Template strings allow embedded variables. */

    @"$a * $c = 7"
//  ^^ string.quoted.double.vala
//  ^ storage.modifier.string.vala
//   ^ punctuation.definition.string.begin.vala
//    ^^ meta.interpolation.vala
//    ^ punctuation.section.interpolation.begin.vala
//     ^ variable.other.interpolation.vala
//       ^^ string.quoted.double.vala
//         ^^ meta.interpolation.vala 
//         ^ punctuation.section.interpolation.begin.vala
//          ^ variable.other.interpolation.vala
//            ^^^^ string.quoted.double.vala
//               ^ punctuation.definition.string.end.vala

/** Template strings allow embedded expressions. */

    @"$a + $(a * b)"
//  ^^ string.quoted.double.vala
//  ^ storage.modifier.string.vala
//   ^ punctuation.definition.string.begin.vala
//    ^^ meta.interpolation.vala
//    ^ punctuation.section.interpolation.begin.vala
//     ^ variable.other.interpolation.vala
//      ^^^ string.quoted.double.vala
//         ^^^^^^^^ meta.interpolation.vala
//         ^^ punctuation.section.interpolation.begin.vala
//           ^ variable.other.readwrite.vala
//             ^ keyword.operator.arithmetic.vala
//               ^ variable.other.readwrite.vala
//                ^ punctuation.section.interpolation.end.vala
//                 ^ string.quoted.double.vala punctuation.definition.string.end.vala

/////////////////////////////////////////////////////////////////////
// OPERATORS
/////////////////////////////////////////////////////////////////////

    1 + 2; -3.4 - +5; 5++; --7;
//    ^ keyword.operator.arithmetic.vala
//         ^ keyword.operator.arithmetic.vala
//              ^ keyword.operator.arithmetic.vala
//                ^ keyword.operator.arithmetic.vala
//                     ^^ keyword.operator.arithmetic.vala
//                         ^^ keyword.operator.arithmetic.vala

    1*2; 4 / 5; 5 % 6.1;
//   ^ keyword.operator.arithmetic.vala
//         ^ keyword.operator.arithmetic.vala
//                ^ keyword.operator.arithmetic.vala

    1 != 2; 3 == 4;
//    ^^ keyword.operator.comparison.vala
//            ^^ keyword.operator.comparison.vala

    1<3; 1<=4; 1>4; 4>=1;
//   ^ keyword.operator.comparison.vala
//        ^^ keyword.operator.comparison.vala
//              ^ keyword.operator.comparison.vala
//                   ^^ keyword.operator.comparison.vala

    3 || 4; 4 && 4; !3;
//    ^^ keyword.operator.logical.vala
//            ^^ keyword.operator.logical.vala
//                  ^ keyword.operator.logical.vala

    1|1; 1^1; 1&1; ~1; 1<<1; 1>>1;
//   ^ keyword.operator.bitwise.vala
//        ^ keyword.operator.bitwise.vala
//             ^ keyword.operator.bitwise.vala
//                 ^ keyword.operator.bitwise.vala
//                      ^^ keyword.operator.bitwise.vala
//                            ^^ keyword.operator.bitwise.vala

    1 = 2; 1+=2; 1-=2; 1*=2; 1/=2; 1%=2;
//    ^ keyword.operator.assignment.vala
//          ^^ keyword.operator.assignment.vala
//                ^^ keyword.operator.assignment.vala
//                      ^^ keyword.operator.assignment.vala
//                            ^^ keyword.operator.assignment.vala
//                                  ^^ keyword.operator.assignment.vala

    1|=2; 1&=2; 1^=2; 1<<=2: 1>>=2;
//   ^^ keyword.operator.assignment.vala
//         ^^ keyword.operator.assignment.vala
//               ^^ keyword.operator.assignment.vala
//                     ^^^ keyword.operator.assignment.vala
//                            ^^^ keyword.operator.assignment.vala

    1 == 2 ? 3 : 4; 4 ?? 3;
//    ^^ keyword.operator.comparison.vala
//         ^ keyword.operator.vala
//             ^ keyword.operator.vala
//                    ^^ keyword.operator.vala

    global::thing;
//  ^^^^^^^^ keyword.operator.word.vala
//          ^^^^^ variable.other.readwrite.vala

    ((1 + 1) / 4 ?? 3);
//  ^^^^^^^^^^^^^^^^^^ meta.group.vala
//  ^ punctuation.section.parens.begin.vala
//   ^ meta.group.vala punctuation.section.parens.begin.vala
//   ^^^^^^^ meta.group.vala meta.group.vala
//    ^ meta.group.vala constant.numeric.integer.vala
//      ^ meta.group.vala keyword.operator.arithmetic.vala
//        ^ meta.group.vala constant.numeric.integer.vala
//         ^ meta.group.vala punctuation.section.parens.end.vala
//           ^ keyword.operator.arithmetic.vala
//             ^ constant.numeric.integer.vala
//               ^^ keyword.operator.vala
//                  ^ constant.numeric.integer.vala
//                   ^ punctuation.section.parens.end.vala
//                    ^ punctuation.terminator.vala

    (owned) a; delete a;
//  ^^^^^^^ keyword.operator.word.vala
//          ^ variable.other.readwrite.vala
//             ^^^^^^ keyword.operator.word.vala
//                    ^ variable.other.readwrite.vala

    [ 1, 2, [ 3, 4 ]];
//  ^^^^^^^^^^^^^^^^ meta.annotation.vala
//  ^ punctuation.definition.annotation.begin.vala
//     ^^^^^^^^^ punctuation.separator.annotation.vala
//                 ^ punctuation.definition.annotation.end.vala
//                  ^ invalid.illegal.stray.brace.vala
//                   ^ punctuation.terminator.statement.vala
//  ^^^^^^^^^^^^^^^^^ meta.brackets.vala
//  ^ punctuation.section.brackets.begin.vala
//    ^ constant.numeric.integer.vala
//     ^ punctuation.separator.vala
//       ^ constant.numeric.integer.vala
//        ^ punctuation.separator.vala
//          ^^^^^^^^ meta.brackets.vala meta.brackets.vala
//          ^ punctuation.section.brackets.begin.vala
//            ^ constant.numeric.integer.vala
//             ^ punctuation.separator.vala
//               ^ constant.numeric.integer.vala
//                 ^ punctuation.section.brackets.end.vala
//                  ^ punctuation.section.brackets.end.vala

    sizeof (int); typeof (Gtk.Something);
//  ^^^^^^ keyword.operator.word.vala
//         ^ punctuation.section.group.begin.vala
//          ^^^ storage.type.vala
//             ^ punctuation.section.group.end.vala
//                ^^^^^^ keyword.operator.word.vala
//                      ^ punctuation.section.group.begin.vala
//                       ^^^^^^^^^^^^^ support.type.vala
//                                    ^ punctuation.section.group.end.vala
    var hello = thing is int; var other_thing = my_thing as Gtk.Thing;
//  ^^^ storage.type.variable.vala
//      ^^^^^ variable.other.vala
//            ^ keyword.operator.assignment.variable.vala
//              ^^^^^ variable.other.vala
//                    ^^ keyword.operator.reflection.vala
//                       ^^^ storage.type.vala
//                          ^ punctuation.terminator.statement.vala
//                            ^^^ storage.type.variable.vala
//                                ^^^^^^^^^^^ variable.other.vala
//                                            ^ keyword.operator.assignment.variable.vala
//                                              ^^^^^^^^ variable.other.vala
//                                                       ^^ keyword.operator.reflection.vala
//                                                          ^^^ support.type.vala
//                                                             ^ punctuation.accessor.dot.namespace.vala
//                                                              ^^^^^ support.type.vala
//                                                                   ^ punctuation.terminator.statement.vala


    new int[3,4]; new Person (); new Button.with_label ("click me");
//  ^^^ keyword.operator.word.vala
//      ^^^ storage.type.vala
//         ^^^^^ meta.brackets.vala
//         ^ punctuation.section.brackets.begin.vala
//          ^ constant.numeric.integer.vala
//           ^ punctuation.separator.vala
//            ^ constant.numeric.integer.vala
//             ^ punctuation.section.brackets.end.vala
//                ^^^ keyword.operator.word.vala
//                    ^^^^^^ support.type.vala
//                          ^^ meta.group.vala
//                          ^ punctuation.section.parens.begin.vala
//                           ^ punctuation.section.parens.end.vala
//                              ^^^ keyword.operator.word.vala
//                                  ^^^^^^^^^^^^^^^^^ support.type.vala
//                                                   ^^^^^^^^^^^^ meta.group.vala
//                                                   ^ punctuation.section.parens.begin.vala
//                                                    ^^^^^^^^^^ string.quoted.double.vala
//                                                              ^ punctuation.section.parens.end.vala

/////////////////////////////////////////////////////////////////////
// LAMBDAS
/////////////////////////////////////////////////////////////////////

    () => {};
//  ^^ meta.function.parameters.vala
//  ^ punctuation.section.group.begin.vala
//   ^ punctuation.section.group.end.vala
//     ^^ storage.type.function.arrow.vala
//        ^^ meta.function.vala
//        ^ punctuation.section.braces.begin.vala
//         ^ punctuation.section.braces.end.vala

/** Matches parameters and commas. */

    (a, b, c) => {};
//  ^^^^^^^^^ meta.function.parameters.vala
//  ^ punctuation.section.group.begin.vala
//   ^ variable.parameter.vala
//    ^ punctuation.separator.vala
//      ^ variable.parameter.vala
//       ^ punctuation.separator.vala
//         ^ variable.parameter.vala
//          ^ punctuation.section.group.end.vala
//            ^^ storage.type.function.arrow.vala
//               ^^ meta.function.vala
//               ^ punctuation.section.braces.begin.vala
//                ^ punctuation.section.braces.end.vala

/** Parameter direction keywords. */

    (out a, ref b, c) => {/*...*/};
//  ^^^^^^^^^^^^^^^^^ meta.function.parameters.vala
//  ^ punctuation.section.group.begin.vala
//   ^^^ keyword.control.vala
//       ^ variable.parameter.vala
//        ^ punctuation.separator.vala
//          ^^^ keyword.control.vala
//              ^ variable.parameter.vala
//               ^ punctuation.separator.vala
//                 ^ variable.parameter.vala
//                  ^ punctuation.section.group.end.vala
//                    ^^ storage.type.function.arrow.vala
//                       ^^^^^^^^^ meta.function.vala
//                       ^ punctuation.section.braces.begin.vala
//                               ^ punctuation.section.braces.end.vala

/////////////////////////////////////////////////////////////////////
// MEMBER ACCESS
/////////////////////////////////////////////////////////////////////

    var other_thing_chain = thing.other_thing;
//  ^^^ storage.type.variable.vala
//      ^^^^^^^^^^^^^^^^^ variable.other.vala
//                        ^ keyword.operator.assignment.variable.vala
//                          ^^^^^ variable.other.vala
//                               ^ punctuation.accessor.dot.vala
//                                ^^^^^^^^^^^ variable.other.vala
//                                           ^ punctuation.terminator.statement.vala

/** Allows chaining of member access. */

    var thing_chain = thing.m1.m2.m3;
//  ^^^^^ variable.other.readwrite.vala
//       ^ punctuation.accessor.dot.vala
//        ^^ variable.other.member.vala
//          ^ punctuation.accessor.dot.vala
//           ^^ variable.other.member.vala
//             ^ punctuation.accessor.dot.vala
//              ^^ variable.other.member.vala

/** Allows `this` keyword. */

    this.other_thing;
//  ^^^^ variable.language.vala
//      ^ punctuation.accessor.dot.vala
//       ^^^^^^^^^^^ variable.other.member.vala

/** Works on any expressions. */

    ( some_thing ).something_else;
//  ^^^^^^^^^^^^^^ meta.group.vala
//  ^ punctuation.section.parens.begin.vala
//    ^^^^^^^^^^ variable.other.readwrite.vala
//               ^ punctuation.section.parens.end.vala
//                ^ punctuation.accessor.dot.vala
//                 ^^^^^^^^^^^^^^ variable.other.member.vala

/** Pointer member access. */

    ptr->member;
//  ^^^ variable.other.readwrite.vala
//     ^^ punctuation.accessor.arrow.vala
//       ^^^^^^ variable.other.member.vala

/** Pointer access on any expression. */

    (*thing)->member;
//  ^^^^^^^^ meta.group.vala
//  ^ punctuation.section.parens.begin.vala
//   ^ keyword.operator.arithmetic.vala
//    ^^^^^ variable.other.readwrite.vala
//         ^ meta.group.vala punctuation.section.parens.end.vala
//          ^^ punctuation.accessor.arrow.vala
//            ^^^^^^ variable.other.member.vala

/** Access via element indicies. */

    thing[2]; thing[1:2];
//  ^^^^^ variable.other.readwrite.vala
//       ^^^ meta.brackets.vala
//       ^ punctuation.section.brackets.begin.vala
//        ^ constant.numeric.integer.vala
//         ^ punctuation.section.brackets.end.vala
//            ^^^^^ variable.other.readwrite.vala
//                 ^^^^^ meta.brackets.vala
//                 ^ punctuation.section.brackets.begin.vala
//                  ^ constant.numeric.integer.vala
//                   ^ keyword.operator.vala
//                    ^ constant.numeric.integer.vala
//                     ^ punctuation.section.brackets.end.vala

/////////////////////////////////////////////////////////////////////
// STATEMENTS
/////////////////////////////////////////////////////////////////////

/** Jump / flow statements. */

    break; continue; return; throw; yield;
//  ^^^^^ keyword.control.flow.vala
//         ^^^^^^^^ keyword.control.flow.vala
//                   ^^^^^^ keyword.control.flow.vala
//                           ^^^^^ keyword.control.flow.vala
//                                  ^^^^^ keyword.control.flow.vala

/** Selection statements. */

if (x) {
// ^^^ meta.group.vala
// ^ punctuation.section.group.begin.vala
//  ^ variable.other.vala
//   ^ punctuation.section.group.end.vala
//     ^ meta.block.vala punctuation.section.block.begin.vala
    y ();
} else if (xy) {
//^^^^^^^ keyword.control.conditional.elseif.vala
//        ^^^^ meta.group.vala
//        ^ punctuation.section.group.begin.vala
//         ^^ variable.other.vala
//           ^ punctuation.section.group.end.vala
//             ^ meta.block.vala punctuation.section.block.begin.vala
    yy ();
} else {
//^^^^^ keyword.control.conditional.else.vala
//     ^ meta.block.vala punctuation.section.block.begin.vala
    z ();
}

switch (x) {
//^^^^ keyword.control.flow.switch.vala
//     ^^^ meta.group.vala
//     ^ punctuation.section.group.begin.vala
//      ^ variable.other.vala
//       ^ punctuation.section.group.end.vala
//         ^ meta.block.vala punctuation.section.block.begin.vala
    case 1:
//^^^^^^^^^ meta.block.vala
//  ^^^^ keyword.control.switch.case.vala
//       ^ meta.number.integer.decimal.vala constant.numeric.value.vala
//        ^ punctuation.separator.case-statement.vala
        a ()
        break;
//^^^^^^^^^^^^ meta.block.vala
//      ^^^^^ keyword.other.vala
//           ^ punctuation.terminator.statement.vala
    default:
//^^^^^^^^^^ meta.block.vala
//  ^^^^^^^ keyword.control.switch.case.vala
//         ^ punctuation.separator.case-statement.vala
        b ();
}



/** While-loop statements. */

    do; while;
//  ^^ keyword.control.loop.vala
//      ^^^^^ keyword.control.loop.vala

/** foreach statements. */

    foreach (int a in int_array) {/*....*/}
//  ^^^^^^^ keyword.control.loop.vala
//          ^ punctuation.section.group.begin.vala
//           ^^^ storage.type.vala
//               ^ variable.other.readwrite.vala
//                 ^^ keyword.operator.word.vala
//                    ^^^^^^^^^ variable.other.readwrite.vala
//                             ^ punctuation.section.group.end.vala
//                               ^^^^^^^^^^ meta.block.vala
//                               ^ punctuation.section.block.begin.vala
//                                        ^ punctuation.section.block.end.vala

/** User-type foreach loop variables. */

    foreach (Json.Node item in obj.array) {/*...*/}
//  ^^^^^^^ keyword.control.loop.vala
//          ^ punctuation.section.group.begin.vala
//           ^^^^^^^^^ support.type.vala
//                     ^^^^ variable.other.readwrite.vala
//                          ^^ keyword.operator.word.vala
//                             ^^^ variable.other.readwrite.vala
//                                ^ punctuation.accessor.dot.vala
//                                 ^^^^^ variable.other.member.vala
//                                      ^ punctuation.section.group.end.vala
//                                        ^^^^^^^^^ meta.block.vala
//                                        ^ punctuation.section.block.begin.vala
//                                                ^ punctuation.section.block.end.vala

/** Ownership modifiers in forreach loops. */

    foreach (unowned string name in obj.members) {/*...*/}
//  ^^^^^^^ keyword.control.loop.vala
//         ^ punctuation.section.group.begin.vala
//          ^^^^^^^ storage.modifier.vala
//                  ^^^^^^ storage.type.vala
//                         ^^^^ variable.other.readwrite.vala
//                              ^^ keyword.operator.word.vala
//                                 ^^^ variable.other.readwrite.vala
//                                    ^ punctuation.accessor.dot.vala
//                                     ^^^^^^^ variable.other.member.vala
//                                            ^ punctuation.section.group.end.vala
//                                             ^^^^^^^^^ meta.block.vala
//                                             ^ punctuation.section.block.begin.vala
//                                                     ^ punctuation.section.block.end.vala

/** Type inference in foreach initializer. */

    foreach (var init_expr in initializer) {/*...*/}
//  ^^^^^^^ keyword.control.loop.vala
//          ^ punctuation.section.group.begin.vala
//           ^^^ storage.type.vala
//               ^^^^^^^^^ variable.other.readwrite.vala
//                         ^^ keyword.operator.word.vala
//                            ^^^^^^^^^^^ variable.other.readwrite.vala
//                                       ^ punctuation.section.group.end.vala
//                                         ^^^^^^^^^ meta.block.vala
//                                         ^ punctuation.section.block.begin.vala
//                                                 ^ punctuation.section.block.end.vala

/** Variable definitions. */

    float percentile = 1.75; const double MU_BOHR = 927;
//  ^^^^^ storage.type.vala
//        ^^^^^^^^^^ variable.other.readwrite.vala
//                   ^ keyword.operator.assignment.vala
//                     ^^^^ constant.numeric.float.vala
//                           ^^^^^ storage.modifier.vala
//                                 ^^^^^^ storage.type.vala
//                                        ^^^^^^^ variable.other.readwrite.vala
//                                                ^ keyword.operator.assignment.vala
//                                                  ^^^ constant.numeric.integer.vala

/** Local variable definitions. */

    var block = new Block (source_reference);
//  ^^^ storage.type.vala
//      ^^^^^ variable.other.readwrite.vala
//            ^ keyword.operator.assignment.vala
//              ^^^ keyword.operator.word.vala
//                  ^^^^^ support.type.vala
//                        ^^^^^^^^^^^^^^^^^^ meta.group.vala
//                        ^ punctuation.section.parens.begin.vala
//                         ^^^^^^^^^^^^^^^^ variable.other.readwrite.vala
//                                         ^ punctuation.section.parens.end.vala

/** C-Style for loop. */

    for (int i = 0; i <= 255; i++) {/*...*/}
//  ^^^ keyword.control.loop.vala
//      ^ punctuation.section.group.begin.vala
//       ^^^ storage.type.vala
//           ^ variable.other.readwrite.vala
//             ^ keyword.operator.assignment.vala
//               ^ constant.numeric.integer.vala
//                ^ punctuation.terminator.vala
//                  ^ variable.other.readwrite.vala
//                    ^^ keyword.operator.comparison.vala
//                       ^^^ constant.numeric.integer.vala
//                          ^ punctuation.terminator.vala
//                            ^ variable.other.readwrite.vala
//                             ^^ keyword.operator.arithmetic.vala
//                               ^ punctuation.section.group.end.vala
//                                 ^^^^^^^^^ meta.block.vala
//                                 ^ punctuation.section.block.begin.vala
//                                         ^ punctuation.section.block.end.vala

/** C-Style for loop with user type. */

    for (File pos = file; pos != null; pos = pos.get_parent ()) {/***/}
//  ^^^ keyword.control.loop.vala
//      ^ punctuation.section.group.begin.vala
//       ^^^^ support.type.vala
//            ^^^ variable.other.readwrite.vala
//                ^ keyword.operator.assignment.vala
//                  ^^^^ variable.other.readwrite.vala
//                      ^ punctuation.terminator.vala
//                        ^^^ variable.other.readwrite.vala
//                            ^^ keyword.operator.comparison.vala
//                               ^^^^ constant.language.vala
//                                   ^ punctuation.terminator.vala
//                                     ^^^ variable.other.readwrite.vala
//                                         ^ keyword.operator.assignment.vala
//                                           ^^^ variable.other.readwrite.vala
//                                              ^ punctuation.accessor.dot.vala
//                                               ^^^^^^^^^^^^ meta.function-call.vala
//                                               ^^^^^^^^^^ variable.function.vala
//                                                         ^ punctuation.section.parens.begin.vala
//                                                          ^^ punctuation.section.parens.end.vala
//                                                           ^ punctuation.section.group.end.vala
//                                                             ^^^^^^^ meta.block.vala
//                                                             ^ punctuation.section.block.begin.vala
//                                                                   ^ punctuation.section.block.end.vala

/** Ownership modifiers in for loops. */

    for (owned int i = 0; i < 5; i++) {/*...*/}
//  ^^^ keyword.control.loop.vala
//      ^ punctuation.section.group.begin.vala
//       ^^^^^ storage.modifier.vala
//             ^^^ storage.type.vala
//                 ^ variable.other.readwrite.vala
//                   ^ keyword.operator.assignment.vala
//                     ^ constant.numeric.integer.vala
//                      ^ punctuation.terminator.vala
//                        ^ variable.other.readwrite.vala
//                          ^ keyword.operator.comparison.vala
//                            ^ constant.numeric.integer.vala
//                             ^ punctuation.terminator.vala
//                               ^ variable.other.readwrite.vala
//                                ^^ keyword.operator.arithmetic.vala
//                                  ^ punctuation.section.group.end.vala
//                                    ^^^^^^^^^ meta.block.vala
//                                    ^ punctuation.section.block.begin.vala
//                                            ^ punctuation.section.block.end.vala

/////////////////////////////////////////////////////////////////////
// METHOD CALLS
/////////////////////////////////////////////////////////////////////

    something ();
//  ^^^^^^^^^^^ meta.function-call.vala
//  ^^^^^^^^^ variable.function.vala
//           ^ punctuation.section.parens.begin.vala
//            ^ punctuation.section.parens.end.vala

    /* Expressions in parameters. */

    some (thing, 1 * global::else);
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.vala
//  ^^^^ variable.function.vala
//      ^ punctuation.section.parens.begin.vala
//       ^^^^^ variable.other.readwrite.vala
//            ^ punctuation.separator.sequence.vala
//              ^ constant.numeric.integer.vala
//                ^ keyword.operator.arithmetic.vala
//                  ^^^^^^^^ keyword.operator.word.vala
//                          ^^^^ variable.other.readwrite.vala
//                              ^ punctuation.section.parens.end.vala

    /* Struct members. */

    t.method (); a.b.c.d ().e (); a. b ();
//  ^ variable.other.readwrite.vala
//   ^ punctuation.accessor.dot.vala
//    ^^^^^^^^ meta.function-call.vala
//    ^^^^^^ variable.function.vala
//          ^ punctuation.section.parens.begin.vala
//           ^ punctuation.section.parens.end.vala
//              ^ variable.other.readwrite.vala
//               ^ punctuation.accessor.dot.vala
//                ^ variable.other.member.vala
//                 ^ punctuation.accessor.dot.vala
//                  ^ variable.other.member.vala
//                   ^ punctuation.accessor.dot.vala
//                    ^^^ meta.function-call.vala
//                    ^ variable.function.vala
//                     ^ punctuation.section.parens.begin.vala
//                      ^ punctuation.section.parens.end.vala
//                       ^ punctuation.accessor.dot.vala
//                        ^^^ meta.function-call.vala
//                        ^ variable.function.vala
//                         ^ punctuation.section.parens.begin.vala
//                          ^ punctuation.section.parens.end.vala
//                             ^ variable.other.readwrite.vala
//                              ^ punctuation.accessor.dot.vala
//                                ^^^ meta.function-call.vala
//                                ^ variable.function.vala
//                                 ^ punctuation.section.parens.begin.vala
//                                  ^ punctuation.section.parens.end.vala

    /* Pointer members. */

    t->method (); a->b->c->d ()->e (); a-> b ();
//  ^ variable.other.readwrite.vala
//   ^^ punctuation.accessor.arrow.vala
//     ^^^^^^^^ meta.function-call.vala
//     ^^^^^^ variable.function.vala
//           ^ punctuation.section.parens.begin.vala
//            ^ punctuation.section.parens.end.vala
//               ^ variable.other.readwrite.vala
//                ^^ punctuation.accessor.arrow.vala
//                  ^ variable.other.member.vala
//                   ^^ punctuation.accessor.arrow.vala
//                     ^ variable.other.member.vala
//                      ^^ punctuation.accessor.arrow.vala
//                        ^^^ meta.function-call.vala
//                        ^ variable.function.vala
//                         ^ punctuation.section.parens.begin.vala
//                          ^ punctuation.section.parens.end.vala
//                           ^^ punctuation.accessor.arrow.vala
//                             ^^^ meta.function-call.vala
//                             ^ variable.function.vala
//                              ^ punctuation.section.parens.begin.vala
//                               ^ punctuation.section.parens.end.vala
//                                  ^ variable.other.readwrite.vala
//                                   ^^ punctuation.accessor.arrow.vala
//                                      ^^^ meta.function-call.vala
//                                      ^ variable.function.vala
//                                       ^ punctuation.section.parens.begin.vala
//                                        ^ punctuation.section.parens.end.vala

/////////////////////////////////////////////////////////////////////
// METHODS
/////////////////////////////////////////////////////////////////////

    int method_name (int arg);
//  ^^^ storage.type.vala
//      ^^^^^^^^^^^ meta.function.vala entity.name.function.vala
//                 ^ punctuation.section.parens.begin.vala
//                  ^^^^^^^ meta.function.parameters.vala
//                  ^^^ storage.type.vala
//                      ^^^ variable.parameter.vala
//                         ^ punctuation.section.parens.end.vala

/** Handles access modifiers. */

    private void func ();
//  ^^^^^^^ storage.modifier.vala
//          ^^^^ storage.type.vala
//               ^^^^ meta.function.vala entity.name.function.vala
//                   ^ punctuation.section.parens.begin.vala
//                    ^ punctuation.section.parens.end.vala

/** Handles nullable checks on return type. */

    public string? m ();
//  ^^^^^^ storage.modifier.vala
//         ^^^^^^ storage.type.vala
//               ^ keyword.operator.vala
//                 ^ meta.function.vala entity.name.function.vala
//                  ^ punctuation.section.parens.begin.vala
//                   ^ punctuation.section.parens.end.vala

/** Handles fully-qualified names for methods. */

    void Gtk.draw_shape ();
//  ^^^^ storage.type.vala
//       ^^^^^^^^^^^^^^ meta.function.vala entity.name.function.vala
//                     ^ punctuation.section.parens.begin.vala
//                      ^ punctuation.section.parens.end.vala

/** Handles directional parameter qualifiers. */

    void thing (out int i, ref int j);
//  ^^^^ storage.type.vala
//       ^^^^^ meta.function.vala entity.name.function.vala
//            ^ punctuation.section.parens.begin.vala
//             ^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.vala
//             ^^^ keyword.control.vala
//                 ^^^ storage.type.vala
//                     ^ variable.parameter.vala
//                      ^ punctuation.separator.vala
//                        ^^^ keyword.control.vala
//                            ^^^ storage.type.vala
//                                ^ variable.parameter.vala
//                                 ^ punctuation.section.parens.end.vala

/** Handles nullable parameter types. */

    void? thing (ref string? s);
//  ^^^^ storage.type.vala
//      ^ keyword.operator.vala
//        ^^^^^ meta.function.vala entity.name.function.vala
//             ^ punctuation.section.parens.begin.vala
//              ^^^^^^^^^^^^^ meta.function.parameters.vala
//              ^^^ keyword.control.vala
//                  ^^^^^^ storage.type.vala
//                        ^ keyword.operator.vala
//                          ^ variable.parameter.vala
//                           ^ punctuation.section.parens.end.vala

/** Handles user types for parameters. */

    void f (Gtk.Thing s, int i);
//  ^^^^ storage.type.vala
//       ^ meta.function.vala entity.name.function.vala
//        ^ punctuation.section.parens.begin.vala
//         ^^^^^^^^^^^^^^^^^^ meta.function.parameters.vala
//         ^^^^^^^^^ support.type.vala
//                   ^ variable.parameter.vala
//                    ^ punctuation.separator.vala
//                      ^^^ storage.type.vala
//                          ^ variable.parameter.vala
//                           ^ punctuation.section.parens.end.vala

/** Handles user return types. */

    public Gtk.Thing? gg ();
//  ^^^^^^ storage.modifier.vala
//         ^^^^^^^^^ support.type.vala
//                  ^ keyword.operator.vala
//                    ^^ meta.function.vala entity.name.function.vala
//                      ^ punctuation.section.parens.begin.vala
//                       ^ punctuation.section.parens.end.vala

/** Handles variable-length arguments. */

    void method_with_varargs (int x, ...);
//  ^^^^ storage.type.vala
//       ^^^^^^^^^^^^^^^^^^^ meta.function.vala entity.name.function.vala
//                          ^ punctuation.section.parens.begin.vala
//                           ^^^^^^^^^^ meta.function.parameters.vala
//                           ^^^ storage.type.vala
//                               ^ variable.parameter.vala
//                                ^ punctuation.separator.vala
//                                  ^^^ keyword.operator.vala
//                                     ^ punctuation.section.parens.end.vala

/** Handles default values for parameters. */

    void f (int x, string s = "hello", double z = 0.5);
//  ^^^^ storage.type.vala
//       ^ meta.function.vala entity.name.function.vala
//        ^ punctuation.section.parens.begin.vala
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.vala
//         ^^^ storage.type.vala
//             ^ variable.parameter.vala
//              ^ punctuation.separator.vala
//                ^^^^^^ storage.type.vala
//                       ^ variable.parameter.vala
//                         ^ keyword.operator.assignment.vala
//                           ^^^^^^^ string.quoted.double.vala
//                                  ^ punctuation.separator.vala
//                                    ^^^^^^ storage.type.vala
//                                           ^ variable.parameter.vala
//                                             ^ keyword.operator.assignment.vala
//                                               ^^^ constant.numeric.float.vala
//                                                  ^ punctuation.section.parens.end.vala

/** Handles throws keyword and builtin types. */

    void f () throws int;
//  ^^^^ storage.type.vala
//       ^ meta.function.vala entity.name.function.vala
//        ^ punctuation.section.parens.begin.vala
//         ^ punctuation.section.parens.end.vala
//           ^^^^^^ keyword.control.exception.vala
//                  ^^^ storage.type.vala

/** Handles throwing multiple errors. */

    void f () throws int, string;
//  ^^^^ storage.type.vala
//       ^ meta.function.vala entity.name.function.vala
//        ^ punctuation.section.parens.begin.vala
//         ^ punctuation.section.parens.end.vala
//           ^^^^^^ keyword.control.exception.vala
//                  ^^^ storage.type.vala
//                     ^ punctuation.separator.vala
//                       ^^^^^^ storage.type.vala

/** Handles throwing user errors. */

    int f () throws Gtk.SomeErr, UserError;
//  ^^^ storage.type.vala
//      ^ meta.function.vala entity.name.function.vala
//       ^ punctuation.section.parens.begin.vala
//        ^ punctuation.section.parens.end.vala
//          ^^^^^^ keyword.control.exception.vala
//                 ^^^^^^^^^^^ support.type.vala
//                            ^ punctuation.separator.vala
//                              ^^^^^^^^^ support.type.vala

/** Handles "requires" contract. */

    int f (int x) requires (x > 0 && x < 10);
//  ^^^ storage.type.vala
//      ^ meta.function.vala entity.name.function.vala
//       ^ punctuation.section.parens.begin.vala
//        ^^^ meta.function.parameters.vala storage.type.vala
//            ^ meta.function.parameters.vala variable.parameter.vala
//             ^ meta.function.parameters.vala punctuation.section.parens.end.vala
//               ^^^^^^^^ keyword.control.conditional.vala
//                        ^ punctuation.section.parens.begin.vala
//                         ^ variable.other.readwrite.vala
//                           ^ keyword.operator.comparison.vala
//                             ^ constant.numeric.integer.vala
//                               ^^ keyword.operator.logical.vala
//                                  ^ variable.other.readwrite.vala
//                                    ^ keyword.operator.comparison.vala
//                                      ^^ constant.numeric.integer.vala
//                                        ^ punctuation.section.parens.end.vala

/** Handles multiple "requires" contracts. */

    int f (int x) requires (x > 0) requires (x < 10);
//  ^^^ storage.type.vala
//      ^ meta.function.vala entity.name.function.vala
//       ^ punctuation.section.parens.begin.vala
//        ^^^ meta.function.parameters.vala storage.type.vala
//            ^ meta.function.parameters.vala variable.parameter.vala
//             ^ meta.function.parameters.vala punctuation.section.parens.end.vala
//               ^^^^^^^^ keyword.control.conditional.vala
//                        ^ punctuation.section.parens.begin.vala
//                         ^ variable.other.readwrite.vala
//                           ^ keyword.operator.comparison.vala
//                             ^ constant.numeric.integer.vala
//                              ^ punctuation.section.parens.end.vala
//                                ^^^^^^^^ keyword.control.conditional.vala
//                                         ^ punctuation.section.parens.begin.vala
//                                          ^ variable.other.readwrite.vala
//                                            ^ keyword.operator.comparison.vala
//                                              ^^ constant.numeric.integer.vala
//                                                ^ punctuation.section.parens.end.vala

/** Handles "ensures" contract. */

    int f (int x) ensures (x > 0 && x < 10);
//  ^^^ storage.type.vala
//      ^ meta.function.vala entity.name.function.vala
//       ^ punctuation.section.parens.begin.vala
//        ^^^ meta.function.parameters.vala storage.type.vala
//            ^ meta.function.parameters.vala variable.parameter.vala
//             ^ meta.function.parameters.vala punctuation.section.parens.end.vala
//               ^^^^^^^ keyword.control.conditional.vala
//                       ^ punctuation.section.parens.begin.vala
//                        ^ variable.other.readwrite.vala
//                          ^ keyword.operator.comparison.vala
//                            ^ constant.numeric.integer.vala
//                              ^^ keyword.operator.logical.vala
//                                 ^ variable.other.readwrite.vala
//                                   ^ keyword.operator.comparison.vala
//                                     ^^ constant.numeric.integer.vala
//                                       ^ punctuation.section.parens.end.vala

/** Handles multiple "ensures" contracts. */

    int f (int x) ensures (x > 0) ensures (x < 10);
//  ^^^ storage.type.vala
//      ^ meta.function.vala entity.name.function.vala
//       ^ punctuation.section.parens.begin.vala
//        ^^^ meta.function.parameters.vala storage.type.vala
//            ^ meta.function.parameters.vala variable.parameter.vala
//             ^ meta.function.parameters.vala punctuation.section.parens.end.vala
//               ^^^^^^^ keyword.control.conditional.vala
//                       ^ punctuation.section.parens.begin.vala
//                        ^ variable.other.readwrite.vala
//                          ^ keyword.operator.comparison.vala
//                            ^ constant.numeric.integer.vala
//                             ^ punctuation.section.parens.end.vala
//                               ^^^^^^^ keyword.control.conditional.vala
//                                       ^ punctuation.section.parens.begin.vala
//                                        ^ variable.other.readwrite.vala
//                                          ^ keyword.operator.comparison.vala
//                                            ^^ constant.numeric.integer.vala
//                                              ^ punctuation.section.parens.end.vala

/** Putting it all together, over multiple lines. */

    double method_name (int x, double d, string s = "default") throws Gtk.SpecialError;
//  ^^^^^^ storage.type.vala
//         ^^^^^^^^^^^ meta.function.vala entity.name.function.vala
//                    ^ punctuation.section.parens.begin.vala
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.vala
//                     ^^^ storage.type.vala
//                         ^ variable.parameter.vala
//                          ^ punctuation.separator.vala
//                            ^^^^^^ storage.type.vala
//                                   ^ variable.parameter.vala
//                                    ^ punctuation.separator.vala
//                                      ^^^^^^ storage.type.vala
//                                             ^ variable.parameter.vala
//                                               ^ keyword.operator.assignment.vala
//                                                 ^^^^^^^^^ string.quoted.double.vala
//                                                          ^ punctuation.section.parens.end.vala

//^^^^^^^^^^^^ meta.method.vala
//      ^^^^^^ invalid.illegal.vala
//             ^^^ variable.other.vala
//                ^ punctuation.accessor.dot.vala
//                 ^^^^^^^^^^^^ variable.other.vala
//      ^^^^^^ keyword.control.exception.vala
//             ^^^^^^^^^^^^^^^^ support.type.vala
        requires (x > 0 && x < 10)
//      ^^^^^^^^ keyword.control.conditional.vala
//               ^ punctuation.section.parens.begin.vala
//                ^ variable.other.readwrite.vala
//                  ^ keyword.operator.comparison.vala
//                    ^ constant.numeric.integer.vala
//                      ^^ keyword.operator.logical.vala
//                         ^ variable.other.readwrite.vala
//                           ^ keyword.operator.comparison.vala
//                             ^^ constant.numeric.integer.vala
//                               ^ punctuation.section.parens.end.vala
        requires (d >= 0.0 && x == 5)
//      ^^^^^^^^ keyword.control.conditional.vala
//               ^ punctuation.section.parens.begin.vala
//                ^ variable.other.readwrite.vala
//                  ^^ keyword.operator.comparison.vala
//                     ^^^ constant.numeric.float.vala
//                        ^ punctuation.section.parens.end.vala
        ensures (result >= 0.0 && x == 5);
//      ^^^^^^^ keyword.control.conditional.vala
//              ^ punctuation.section.parens.begin.vala
//               ^^^^^^ variable.language.vala
//                      ^^ keyword.operator.comparison.vala
//                         ^^^ constant.numeric.float.vala
//                            ^ punctuation.section.parens.end.vala
//                             ^ punctuation.terminator.vala

/////////////////////////////////////////////////////////////////////
// NAMESPACES
/////////////////////////////////////////////////////////////////////

/** Matches keywords and assigns meta scopes **/

    namespace Ns1 { /* c */ }
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//  ^^^^^^^^^^^^^^ meta.namespace.vala
//                ^ punctuation.section.block.begin.vala
//                          ^ punctuation.section.block.end.vala
//                ^^^^^^^^^^^ meta.namespace.vala meta.block.vala

/** Allows nesting namespaces **/

    namespace Ns1 {
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//                ^ meta.block.vala punctuation.section.block.begin.vala
//  ^^^^^^^^^^^^^^^^ meta.namespace.vala
        namespace Ns2 { /* c */ }
//      ^^^^^^^^^ storage.type.vala
//                ^^^ entity.name.namespace.vala
//      ^^^^^^^^^^^^^^ meta.namespace.vala meta.block.vala meta.namespace.vala
//                    ^ punctuation.section.block.begin.vala
//                              ^ punctuation.section.block.end.vala
//                    ^^^^^^^^^^^ meta.namespace.vala meta.block.vala meta.namespace.vala meta.block.vala
    }
//  ^ meta.namespace.vala meta.block.vala punctuation.section.block.end.vala
//   ^ -meta

/** Allows subclass syntax instead of nesting blocks **/

    namespace Ns1.Ns2 { /* c */ }
//  ^^^^^^^^^ storage.type.vala
//            ^^^ entity.name.namespace.vala
//               ^ punctuation.accessor.dot.vala
//                ^^^ entity.name.namespace.vala 
//  ^^^^^^^^^^^^^^^^^^ meta.namespace.vala
//                    ^ punctuation.section.block.begin.vala
//                    ^^^^^^^^^^^ meta.namespace.vala meta.block.vala 

/** Allows field declarations */

    namespace Ns1 {
        string s = "string";
//      ^^^^^^ storage.type.vala
//             ^ variable.other.readwrite.vala
//               ^ keyword.operator.assignment.vala
//                 ^^^^^^^^ string.quoted.double.vala
//                         ^ punctuation.terminator.vala

        my_string a = "g";
//      ^^^^^^^^^ support.type.vala
//                ^ variable.other.readwrite.vala
//                  ^ keyword.operator.assignment.vala
//                    ^^^ string.quoted.double.vala
//                       ^ punctuation.terminator.vala

        public int ns_int;
//      ^^^^^^ storage.modifier.vala
//             ^^^ storage.type.vala
//                 ^^^^^^ variable.other.readwrite.vala
//                       ^ punctuation.terminator.vala

        private char c;
//      ^^^^^^^ storage.modifier.vala
//              ^^^^ storage.type.vala
//                   ^ variable.other.readwrite.vala
//                    ^ punctuation.terminator.vala

        string s2 = global::other_string;
//      ^^^^^^ storage.type.vala
//             ^^ variable.other.readwrite.vala
//                ^ keyword.operator.assignment.vala
//                  ^^^^^^^^ keyword.operator.word.vala
//                          ^^^^^^^^^^^^ variable.other.readwrite.vala
//                                      ^ punctuation.terminator.vala
        const string S = 3;
//      ^^^^^ storage.modifier.vala
//            ^^^^^^ storage.type.vala
//                   ^ variable.other.readwrite.vala
//                     ^ keyword.operator.assignment.vala
//                       ^ constant.numeric.integer.vala
//                        ^ punctuation.terminator.vala

        public const Scratch.Widgets.HeaderBar S = 3;
//      ^^^^^^ storage.modifier.vala
//             ^^^^^ storage.modifier.vala
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^ support.type.vala
//                                             ^ variable.other.readwrite.vala
//                                               ^ keyword.operator.assignment.vala
//                                                 ^ constant.numeric.integer.vala
//                                                  ^ punctuation.terminator.vala
    }

/////////////////////////////////////////////////////////////////////
// USING STATEMENT
/////////////////////////////////////////////////////////////////////

    using Gtk;
//  ^^^^^^ keyword.control.import.vala
//        ^^^ support.type.vala
//           ^ punctuation.terminator.vala

/** Allows a list in one statement, including namespace identifiers */

    using Gtk, Scratch.Services;
//  ^^^^^^ keyword.control.import.vala
//        ^^^ support.type.vala
//           ^ punctuation.separator.vala
//             ^^^^^^^^^^^^^^^^ support.type.vala
//                             ^ punctuation.terminator.vala
