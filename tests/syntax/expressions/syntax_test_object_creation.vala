// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    new Person ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala

    new Button.with_label ("ok");
//      ^^^^^^ source.vala meta.instance.vala support.type.vala
//            ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//             ^^^^^^^^^^ source.vala meta.instance.vala entity.name.function.constructor.vala

    new Gtk.Button.from_stock ("ok");
//      ^^^ source.vala meta.instance.vala support.type.vala
//         ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//          ^^^^^^ source.vala meta.instance.vala support.type.vala
//                ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//                 ^^^^^^^^^^ source.vala meta.instance.vala entity.name.function.constructor.vala

    new List<string> ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala

    Object (name: "Ada");
//  ^^^^^^ source.vala meta.gobject-construction.vala support.type.vala
//         ^^^^ source.vala meta.gobject-construction.vala variable.parameter.construct.vala
//             ^ source.vala meta.gobject-construction.vala punctuation.separator.key-value.parameter.vala

    public Person (string name) {
        Object (name: name, age: 1);
//      ^^^^^^ source.vala meta.gobject-construction.vala support.type.vala
//             ^^^^ source.vala meta.gobject-construction.vala variable.parameter.construct.vala
//                        ^^^ source.vala meta.gobject-construction.vala variable.parameter.construct.vala
    }

    public Point.rectangular (double x, double y) {
        this (x, y);
//      ^^^^ source.vala variable.language.vala
        this.polar (1.0, 0.5);
//      ^^^^ source.vala variable.language.vala
//          ^ source.vala punctuation.accessor.dot.vala
//           ^^^^^ source.vala entity.name.function.constructor.vala
    }
