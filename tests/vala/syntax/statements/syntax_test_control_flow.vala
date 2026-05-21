// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    break;
//  ^^^^^ source.vala keyword.control.break.vala

    continue;
//  ^^^^^^^^ source.vala keyword.control.break.vala

    return;
//  ^^^^^^ source.vala keyword.control.return.vala

    throw e;
//  ^^^^^ source.vala keyword.control.throw.vala

    if (x) { } else { }
//  ^^ source.vala keyword.control.conditional.if.vala

    switch (x) { case 1: break; default: break; }
//  ^^^^^^ source.vala keyword.control.switch.vala
