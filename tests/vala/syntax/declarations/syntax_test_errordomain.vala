// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    errordomain IOError {
//  ^^^^^^^^^^^ source.vala meta.errordomain.vala storage.type.errordomain keyword.declaration.errordomain.vala
        FAILED,
//      ^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala constant.other.errordomain.vala
    }

    public errordomain DemoError {
        SOME_ERROR
//      ^^^^^^^^^^ source.vala meta.errordomain.body.vala meta.block.vala constant.other.errordomain.vala
    }
