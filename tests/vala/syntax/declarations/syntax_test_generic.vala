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
