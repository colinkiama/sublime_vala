// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    new Person ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala

    new Button.with_label ("ok");
//      ^^^^^^ source.vala meta.instance.vala support.type.vala
//            ^ source.vala meta.instance.vala punctuation.accessor.dot.namespace.vala
//             ^^^^^^^^^^ source.vala meta.instance.vala support.type.vala

    new List<string> ();
//  ^^^ source.vala meta.instance.vala keyword.operator.new.vala
