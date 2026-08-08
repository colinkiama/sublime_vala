// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"
// Enum/errordomain bodies may contain member declarations after the
// value list's terminating ';' (Parser.parse_enum_declaration /
// parse_errordomain_declaration accept SEMICOLON then parse_declaration
// until CLOSE_BRACE). Regression test for gee/timsort.vala-style TokenType
// enums with a to_string () method.

    public enum TokenType {
        NONE,
//      ^^^^ source.vala meta.enum.body.vala meta.block.vala constant.other.enum.vala
        ABSTRACT;
//      ^^^^^^^^ source.vala meta.enum.body.vala meta.block.vala constant.other.enum.vala
//              ^ source.vala meta.enum.body.vala meta.block.vala punctuation.terminator.statement.vala

        public unowned string to_string () {
//      ^^^^^^ source.vala meta.enum.body.vala meta.block.vala storage.modifier.access.vala
//                            ^^^^^^^^^ source.vala meta.enum.body.vala meta.block.vala entity.name.function.vala
            switch (this) {
//          ^^^^^^ source.vala meta.enum.body.vala meta.block.vala meta.block.vala keyword.control.switch.vala
            case ABSTRACT: return "abstract";
//          ^^^^ source.vala meta.enum.body.vala meta.block.vala meta.block.vala keyword.control.switch.case.vala
//               ^^^^^^^^ source.vala meta.enum.body.vala meta.block.vala meta.block.vala constant.other.vala
//                         ^^^^^^ source.vala meta.enum.body.vala meta.block.vala meta.block.vala keyword.control.return.vala
            }
        }
    }
//  ^ source.vala punctuation.section.block.end.vala

    public errordomain DemoError {
        SOME_ERROR;
//      ^^^^^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala constant.other.errordomain.vala
//                ^ source.vala meta.errordomain.body.vala meta.block.vala punctuation.terminator.statement.vala

        public string describe () {
//      ^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala storage.modifier.access.vala
//                    ^^^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala entity.name.function.vala
            return "some error";
//          ^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala meta.block.vala keyword.control.return.vala
        }
    }
//  ^ source.vala punctuation.section.block.end.vala
