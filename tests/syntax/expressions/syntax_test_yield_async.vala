// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    yield;
//  ^^^^^ source.vala keyword.other.vala

    yield return 1;
//  ^^^^^ source.vala keyword.other.vala

    async void work () {
//  ^^^^^ source.vala storage.modifier.vala
        yield foo ();
//      ^^^^^ source.vala keyword.other.vala
    }
