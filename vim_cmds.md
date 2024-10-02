
---

### Vim Search & Replace

- `*` — Search for the word under the cursor.
- `n` — Move forward to the next match.
- `Shift + N` — Move backward to the previous match.
- `ciw` — Change inside word, then use `n` to go to the next occurrence and `.` to repeat the change.
- `:%s/old_word/new_word/g` — Replace all occurrences of `old_word` with `new_word` globally in the file.
- `:%s/old_word/new_word/gc` — Replace globally with confirmation for each occurrence (`Y` for yes, `N` for no).

### Yank, Copy, and Paste

- `Y` — Yank (copy) the current line.
- `v + iw` — Visually highlight the current word, then `y` to yank and `p` to paste.
- `reg` — View Vim registers.
- `"<number>p` — Paste from a specific register.
- `"<number>y` — Yank into a specific register (e.g., `"7y`).
- `"+` — Copy to the system clipboard (Linux).

### Macros

- `q + <register>` — Start recording a macro (e.g., `qh` to record in register `h`).
- `q` — Stop recording the macro.
- `@<register>` — Replay the macro (e.g., `@h`).
- `5@<register>` — Replay the macro 5 times (e.g., `5@h`).

### Saving and Exiting

- `ZZ` — Quickly save and exit.
- `zq` — Exit without saving.

### Visual Mode and Block Editing

- `vib/viB` — Select everything inside `()` or `{}`.
- `ci(` — Change everything inside parentheses.
- `Ctrl + V` then `I` — Enter visual block mode to edit multiple lines, add text at the start.
- `gv` then `A` — Append text to the end of selected lines (even with different lengths).

### Case and Insertion

- `~` — Toggle case of the current character.
- `g~iw` — Toggle case for the entire word.
- `g~it` — Toggle case for a character inside a block (like HTML elements).

### Indentation and Navigation

- `gg=G` — Re-indent the entire file.
- `%` — Jump between matching parentheses `()`, braces `{}`, and brackets `[]`.
- `Ctrl + z` — Put Vim in the background.
- `fg` — Return to Vim from the background.
  
### Sessions

- `:mksession session.vim` — Save a session.
- `:source session.vim` — Restore a session.

### URL and File Opening

- `gx` — Open a URL in a browser.
- `gf` — Open a file under the cursor.

### Marks and Navigation

- `ma` — Mark a location.
- `'a` — Jump to the marked location.
- `M + A` — Jump to a mark globally and return to the previous location.
- `12G` — Jump to line 12.
- `J` — Join lines (with a space).
- `gJ` — Join lines (without spaces).
- `7k` — Move up 7 lines.

### Miscellaneous

- `:!jq .` — Pretty-print JSON.
- `:!sort` — Sort the content.
- `o` — Switch the selection direction.
- `%` — Jump between matching parentheses `()`, braces `{}`, or brackets `[]`.
- `i/a` — Select inside (`i`) or outside (`a`) text objects.

---

