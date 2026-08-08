// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    struct Point {
//  ^^^^^^ source.vala storage.type.struct keyword.declaration.struct.vala

    public struct S {
//  ^^^^^^ source.vala storage.modifier.access.vala

    ref struct R {
//  ^^^ source.vala meta.block.vala meta.block.vala storage.modifier.vala

    // Parser.parse_struct_declaration accepts any identifier, and the GLib
    // bindings lean on it: `public struct int { … }` with a real method body.
    public struct int {
//                ^^^ source.vala entity.name.struct.vala
        public static bool try_parse (string str, out int result = null) {
//                         ^^^^^^^^^ source.vala meta.function.vala entity.name.function.vala
            if (str == null) {
                result = 0;
            } else {
//            ^^^^ source.vala keyword.control.conditional.else.vala
                result = 1;
            }
            return true;
        }
    }
