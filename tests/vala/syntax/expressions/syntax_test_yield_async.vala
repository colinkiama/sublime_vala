// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    yield;
//  ^^^^^ source.vala keyword.other.vala

    yield return 1;
//  ^^^^^^^^^^^^ source.vala keyword.control.return.vala

    async void m () {
        yield foo ();
//      ^^^^^ source.vala keyword.other.vala
    }
