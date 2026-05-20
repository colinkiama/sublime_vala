// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
//  ^^^^^ source.vala storage.type.class keyword.declaration.class.vala

    public class Bar {
//  ^^^^^^ source.vala storage.modifier.access.vala

    abstract class Baz {
//  ^^^^^^^^ source.vala storage.modifier.vala

    partial class Qux {
//  ^^^^^^^ source.vala storage.modifier.vala

    public class Node : Object {
        public int value;
    }
//  ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala punctuation.section.block.end.vala

    class Node : Object {
//               ^^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.class.vala

    class Child : Parent {
//                ^^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.class.vala

    class Service : GLib.Object {
//                  ^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.class.vala
//                      ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.class.vala
//                       ^^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.class.vala

    class Test.Async : GLib.Object {
//        ^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala support.type.vala
//            ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala punctuation.accessor.dot.namespace.vala
//             ^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala entity.name.class.vala

    class One.Two.Three.NameN : Object {
//        ^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala support.type.vala
//           ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala punctuation.accessor.dot.namespace.vala
//            ^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala support.type.vala
//               ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala punctuation.accessor.dot.namespace.vala
//                ^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala support.type.vala
//                     ^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala punctuation.accessor.dot.namespace.vala
//                      ^^^^^ source.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala meta.block.vala entity.name.class.vala
