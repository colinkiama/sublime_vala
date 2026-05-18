// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    string run<T> () {}
//             ^ source.vala meta.function.vala meta.generic.vala punctuation.definition.generic.end.vala

    List<string> list;
//      ^^^^^^ source.vala meta.generic.vala storage.type.vala

    class Box<T> {
//           ^ source.vala meta.class.vala entity.name.class.vala
    }
