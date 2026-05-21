# Syntax and smoke tests

| Directory | Grammar | Purpose |
|-----------|---------|---------|
| `vala/programs/` | `Vala.sublime-syntax` | Visual smoke tests (`.vala`) |
| `vala/syntax/` | `Vala.sublime-syntax` | Formal syntax tests (`syntax_test_*.vala`) |
| `genie/programs/` | `Genie.sublime-syntax` | Visual smoke tests (`.gs`) |
| `genie/syntax/` | `Genie.sublime-syntax` | Formal syntax tests (`syntax_test_*.gs`; standalone grammar, not `scope:source.vala#…`) |

**Checking highlighting:** Save `Vala.sublime-syntax` or `Genie.sublime-syntax` after edits; Sublime reloads the grammar immediately. Open any `.vala` / `.gs` buffer (including `syntax_test_*` files under `syntax/` or samples under `programs/`) to see the updated scopes.

Assertion format reference: [Syntax definitions → Testing](https://www.sublimetext.com/docs/syntax.html#testing).

---

## Smoke tests (`programs/`)

Open `.vala` / `.gs` files under `programs/` to eyeball highlighting. They are informal samples only (no `SYNTAX TEST` assertions).

**Vala:** `valac tests/vala/programs/foo.vala` (`number_literals.vala` needs **Vala 0.57+** for `0b`/`0o` and hex floats).

**Genie:** every `tests/genie/programs/*.gs` file is valid Genie and compiles with `valac` (tabs for indentation). One exception:

```bash
valac --pkg gee-0.8 tests/genie/programs/collections.gs
```

(`list of` / `dict of` need [libgee](https://wiki.gnome.org/Projects/Libgee).) `collections_array.gs` covers fixed `array of` without extra packages. Binary/octal integer forms are exercised in `syntax_test_numbers.gs`; `number_literals.gs` uses decimal/hex/float for older `valac` releases.

`valac` leaves an extensionless binary next to each source; those paths are **gitignored** (see repo `.gitignore`). To avoid clutter locally, compile out of tree, e.g. `valac -o /tmp/case_when tests/genie/programs/case_when.gs`.

---

## Formal syntax tests (`syntax/`)

These files document expected scopes via `^` / `<-` markers. Open a `syntax_test_*` file in Sublime to confirm highlighting matches the assertions (assertion comment lines use `comment.line.syntax-test-assertion` in Genie).

Requirements:

- Filename must start with `syntax_test_`.
- File lives under `Packages/` (this repo’s `tests/` tree).
- First line: `// SYNTAX TEST "Packages/sublime_vala/<Grammar>.sublime-syntax"` (optional flags; see below).

Each assertion line must begin with the **comment token** from that first line (`//` for Vala and Genie), then a test marker: `^`, `<-`, or `@`.

Assertions always apply to the **most recent non-test line** above them.

---

## Test types (what to use in this package)

### 1. Caret tests (`^`) — **primary choice**

Checks that the scope stack at a given **column** on the code line matches the selector(s) that follow.

```vala
    return x;
//  ^^^^^^ source.vala keyword.control.flow.vala
```

- One `^` = one column. A run of `^^^^` applies the **same** selector to each of those columns (useful for multi-letter keywords).
- Put each `^` directly under the character you care about. For indented code in **Vala** tests, keep `//` at column 0 and pad with spaces after `//` so carets line up (see [Vala indentation](#vala-tests-indented-code)).
- Prefer **full scope paths** on Vala tests (`source.vala meta.block.vala keyword…`) so failures are precise. Genie tests may use shorter selectors when the scope is unambiguous (e.g. `keyword.other.genie`).

**Use for:** keywords, types, literals, punctuation, `meta.*` regions, `invalid.illegal.*`, and any token where you need several columns checked with one selector.

### 2. Arrow tests (`<-`) — **best for Genie indented lines**

Checks scope at the column of the **first `/`** of `//` on the assertion line (not where `<-` sits).

```gs
    when 0,1,2
    // <- keyword.control.when.genie
```

**Use for:** Genie suite bodies (4-space indent): put `//` so `/` sits on the first character of the token. One arrow line = one column; repeat with more lines if you need multiple columns (see `syntax_test_numbers.gs`).

**Vala:** Usually stick to `^` with column-0 `//` and padding; arrow tests work but are less common in existing Vala files.

### 3. Symbol tests (`@`) — **not used here**

```java
  case bar:
//     @@@ local-definition "case bar"
```

Requires the grammar (or an LSP) to emit **symbol** regions (`definition`, `reference`, etc.). `Vala.sublime-syntax` and `Genie.sublime-syntax` do not define symbol indexing for the highlighter, so **`@` tests are not appropriate** in this repo unless symbol scopes are added later.

If you add them, use `// SYNTAX TEST partial-symbols "…"` so you are not forced to annotate every symbol in the file.

### 4. Scope negation (`-selector`)

The assertion can say a scope must **not** be present:

```c
"Hello, World! // not a comment";
// ^ string.quoted.double
//                  ^ string.quoted.double - comment
```

**Use for:** strings/raw strings that contain `//`, template text, or anywhere a substring must not pick up `comment.*`. This package rarely uses negation today; add it when disambiguation matters.

### 5. Invalid / error highlighting

```vala
    1.e10;
//  ^^^^^ source.vala invalid.illegal.numeric-float-decimal.vala
```

**Use for:** malformed literals or stray tokens that should get `invalid.*` scopes.

---

## File-level options (`SYNTAX TEST` line)

| Option | Purpose | This package |
|--------|---------|----------------|
| *(none)* | Default scope tests only | **Yes** — all current tests |
| `partial-symbols` | Only check `@` lines you write; skip exhaustive symbol pass | Only if `@` tests are added |
| `reindent` / `reindent-unchanged` / `reindent-unindented` | Whole-file indent command must not change lines | **No** — grammars have no `indent` rules |

---

## Indentation and alignment

Sublime requires: if an assertion line has leading spaces, they must **match** the leading spaces on the code line under test (“this leading white space must match this”). Use spaces only (no tabs in tests).

### Genie (`syntax_test_*.gs`)

Indented code and assertions share the same indent; `//` can align with the block:

```gs
    assert( a and b )
    //     ^^^ keyword.operator.word.genie
```

- **`^`:** `padding after // = token_column − indent − 2` (for 4-space indent and `//` at columns 4–5).
- **`<-`:** indent so the first `/` is on the token column (`    // <-` when the token starts at column 4).

Assertion lines are scoped as `comment.line.syntax-test-assertion.genie` via `syntax_test_assertion_line` in `Genie.sublime-syntax`.

### Vala tests (indented code)

Vala tests usually keep assertion comments at **column 0** and align carets with spaces after `//`:

```vala
    #if FOOBAR
//  ^ punctuation.definition.preprocessor.vala
//   ^^ keyword.control.preprocessor.if.vala
```

That satisfies the whitespace rule (assertion line has no extra indent vs. a non-indented reference). You may also match indent on both lines like Genie; both styles are valid if columns line up.

---

## What to test (by area)

| Area | Examples in repo | Suggested assertion |
|------|------------------|---------------------|
| Keywords / control flow | `syntax_test_control_flow`, `syntax_test_case_when.gs` | `^` or Genie `<-` on first char |
| Declarations | `syntax_test_class`, `syntax_test_def.gs` | `^` per token; include `meta.*` on Vala |
| Types / ownership | `syntax_test_ownership`, `syntax_test_nullable` | `^` on modifiers and type names |
| Literals | `syntax_test_numbers`, `syntax_test_strings`, `syntax_test_character_literals.gs` | `^` on base/value/suffix; Genie `\x`/`\u` char escapes |
| Strings / templates / regex | `syntax_test_strings` | `^`; use `- comment` if `//` appears inside a string |
| Operators | `syntax_test_binary`, `syntax_test_operators.gs` | `^` on operator tokens |
| Preprocessor | `syntax_test_conditional_compilation` | `^` in `meta.preprocessor` regions |
| Comments / docs | `syntax_test_block`, `syntax_test_documentation` | `^` / `<-` on `punctuation.definition.comment.*` |
| Merge conflicts | `syntax_test_merge_conflicts` | `^` on `*.diff` scopes |
| Genie-only | `uses`, `case`/`when`, `list of` | `^` or `<-`; see Genie indentation above |

Avoid testing every column of long lines unless scopes change mid-token; one well-placed assertion per token or region is enough.

---

## Genie language reference

Local clone: `vala-docs/docs/genie` ([introduction](https://docs.vala.dev/genie/introduction/), [sample-code](https://docs.vala.dev/genie/sample-code/)).
