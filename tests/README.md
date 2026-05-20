# Syntax and smoke tests

| Directory | Grammar | Purpose |
|-----------|---------|---------|
| `vala/programs/` | `Vala.sublime-syntax` | Visual smoke tests (`.vala`) |
| `vala/syntax/` | `Vala.sublime-syntax` | Formal syntax tests (`syntax_test_*.vala`) |
| `genie/programs/` | `Genie.sublime-syntax` | Visual smoke tests (`.gs`) |
| `genie/syntax/` | `Genie.sublime-syntax` | Formal syntax tests (`syntax_test_*.gs`) |

Run in Sublime Text: **Tools → Developer → Run Syntax Tests**.

Compile smoke programs with `valac` (e.g. `tests/vala/programs/nullable_arrays.vala`). `number_literals.vala` needs **Vala 0.57+** for `0b`/`0o` integers and hexadecimal floats; Homebrew’s 0.56 package only covers the decimal and hex-integer sections.
