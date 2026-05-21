// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    demo.sig.connect (() => {});
//       ^^^ source.vala variable.other.vala
//          ^ source.vala punctuation.accessor.dot.vala
//           ^^^^^^^ source.vala meta.function-call.vala variable.function.vala

    demo.sig.connect_after (() => {});
//       ^^^ source.vala variable.other.vala
//          ^ source.vala punctuation.accessor.dot.vala
//           ^^^^^^^^^^^^^ source.vala meta.function-call.vala variable.function.vala

    widget.clicked.emit ();
//         ^^^^^^^ source.vala variable.other.vala
//                ^ source.vala punctuation.accessor.dot.vala
//                 ^^^^ source.vala meta.function-call.vala variable.function.vala
