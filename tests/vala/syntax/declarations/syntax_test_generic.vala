// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    string run<T> () {}
//            ^ source.vala meta.function.vala meta.generic.vala punctuation.definition.generic.begin.vala
//             ^ source.vala meta.function.vala meta.generic.vala variable.parameter.type.vala
//              ^ source.vala meta.function.vala meta.generic.vala punctuation.definition.generic.end.vala

    List<string> list;
//      ^ source.vala meta.generic.vala punctuation.definition.generic.begin.vala
//       ^^^^^^ source.vala meta.generic.vala storage.type.vala
//             ^ source.vala meta.generic.vala punctuation.definition.generic.end.vala

    public class Box<T> {
//  ^^^^^^ source.vala storage.modifier.access.vala
//         ^^^^^ source.vala storage.type.class keyword.declaration.class.vala
//               ^^^ source.vala entity.name.class.vala
//                  ^ source.vala meta.generic.vala punctuation.definition.generic.begin.vala
//                   ^ source.vala meta.generic.vala variable.parameter.type.vala
//                    ^ source.vala meta.generic.vala punctuation.definition.generic.end.vala
    }

    public class Pair<A, B> {
//               ^^^^ source.vala entity.name.class.vala
//                   ^ source.vala meta.generic.vala punctuation.definition.generic.begin.vala
//                    ^ source.vala meta.generic.vala variable.parameter.type.vala
//                     ^ source.vala meta.generic.vala punctuation.separator.type.vala
//                       ^ source.vala meta.generic.vala variable.parameter.type.vala
//                        ^ source.vala meta.generic.vala punctuation.definition.generic.end.vala
    }

    new HashTable<string, string> ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala
//      ^^^^^^^^^ source.vala meta.instance.vala support.type.vala
//               ^ source.vala meta.instance.vala meta.generic.vala punctuation.definition.generic.begin.vala
//                ^^^^^^ source.vala meta.instance.vala meta.generic.vala storage.type.vala
//                      ^ source.vala meta.instance.vala meta.generic.vala punctuation.separator.type.vala
//                        ^^^^^^ source.vala meta.instance.vala meta.generic.vala storage.type.vala
//                              ^ source.vala meta.instance.vala meta.generic.vala punctuation.definition.generic.end.vala
//                                ^ source.vala meta.instance.vala meta.group.vala punctuation.section.group.begin.vala
//                                 ^ source.vala meta.instance.vala meta.group.vala punctuation.section.group.end.vala

    // Generic method declaration inside a class body: the type parameters
    // belong to the method name, not to a return type.
    public class Sorter {
//               ^^^^^^ source.vala entity.name.class.vala

        public static void sort<G> (List<G> list) {
//                         ^^^^ source.vala meta.function.vala entity.name.function.vala
//                             ^ source.vala meta.function.vala meta.generic.vala punctuation.definition.generic.begin.vala
//                              ^ source.vala meta.function.vala meta.generic.vala variable.parameter.type.vala
//                               ^ source.vala meta.function.vala meta.generic.vala punctuation.definition.generic.end.vala
//                                 ^ source.vala meta.function.parameters.vala punctuation.section.parameters.begin.vala
//                                              ^ source.vala meta.function.parameters.vala punctuation.section.parameters.end.vala
        }
//      ^ source.vala punctuation.section.block.end.vala
    }

    // A type suffix on a generic local declaration (`List<G>? l = …`) must
    // still read as a declaration - the `?` used to be taken for a ternary
    // operator and left the generic context on the stack.
    void nullable_generic_local () {
        unowned List<G>? l = head.find (data);
//                     ^ source.vala meta.function.vala meta.block.vala storage.type.nullable.vala
//                       ^ source.vala meta.function.vala meta.block.vala variable.other.vala
//                         ^ source.vala meta.function.vala meta.block.vala keyword.operator.assignment.variable.vala
        Gee.List<G>[] a = b;
//                 ^ source.vala meta.function.vala meta.block.vala meta.brackets.vala punctuation.section.brackets.begin.vala
//                  ^ source.vala meta.function.vala meta.block.vala meta.brackets.vala punctuation.section.brackets.end.vala
//                    ^ source.vala meta.function.vala meta.block.vala variable.other.vala
    }
