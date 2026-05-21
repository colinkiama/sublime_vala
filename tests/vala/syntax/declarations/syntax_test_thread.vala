// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    ThreadFunc<bool> run = () => {
//  ^^^^^^^^^^ source.vala support.type.vala
//            ^ source.vala punctuation.definition.generic.begin.vala
//             ^^^^ source.vala storage.type.vala
//                 ^ source.vala punctuation.definition.generic.end.vala
    };

    new Thread<bool> ("thread-example", run);
//      ^^^^^^ source.vala meta.instance.vala support.type.vala
//            ^ source.vala meta.instance.vala meta.generic.vala punctuation.definition.generic.begin.vala
//             ^^^^ source.vala meta.instance.vala meta.generic.vala storage.type.vala
//                 ^ source.vala meta.instance.vala meta.generic.vala punctuation.definition.generic.end.vala

    GLib.Idle.add ((owned) callback);
//                  ^^^^^ source.vala storage.modifier.ownership.vala
