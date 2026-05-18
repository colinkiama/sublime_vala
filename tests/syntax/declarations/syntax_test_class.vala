// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    class Foo {
//  ^^^^^ source.vala meta.class.vala storage.type.class keyword.declaration.class.vala

    public class Bar {
//  ^^^^^^ source.vala storage.modifier.access.vala

    abstract class Baz {
//  ^^^^^^^^ source.vala storage.modifier.vala

    partial class Qux {
//  ^^^^^^^ source.vala storage.modifier.vala

    class Child : Parent {
//                ^^^^^^ source.vala meta.class.vala entity.other.inherited-class.vala
