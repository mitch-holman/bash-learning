# Bash Learning Log — 21-Day Course

## Day 1: Shebang, Variables, `echo`
**Status:** Complete

### Concepts Covered
- The shebang line (`#!/bin/bash`) tells the OS which interpreter to run the script with
- Variables: assign with `=` (no spaces), access the value with `$`
- `echo` is bash's print statement — outputs to the terminal
- Double-quote variables (`"$var"`) to prevent word-splitting when values contain spaces

### Key Insights
- Without `$` you name the box; with `$` you open it
- The shebang points to a path (`/bin/bash`), not just a shell name
- Unquoted variables with spaces get split into separate words by bash

### Script
`day01-variables.sh` (see repo)

---

## Day 1 Recap Quiz (Session 2 warmup)
**Date:** 2026-05-22
**Score:** 3/3

1. What does the shebang line do? ✅
2. What's the difference between `echo name` and `echo $name`? ✅
3. Why wrap a variable in double quotes? ✅

---

## Day 2: File I/O — Reading and Writing Files
**Status:** Complete

### Concepts Covered
- `>` — write to a file (creates or overwrites)
- `>>` — append to a file (adds to the end, keeps existing content)
- `cat` — read and print a file's contents to the terminal

### Key Insights
- One arrow `>` replaces; two arrows `>>` means "more — add to the end"
- Always quote file path variables (`"$tempfile"`) to handle spaces safely

### Script
`day02-file-io.sh`

---

### Quiz Questions for Day 3 Warmup
1. What's the difference between `>` and `>>`?
2. What command would you use to read and print the contents of a file?
3. If you use `>` twice on the same file, what happens to the first write?

---

## Day 2 Recap Quiz
**Date:** 2026-05-24
**Score:** 3/3

1. What's the difference between `>` and `>>`? ✅
2. What command reads and prints a file? ✅
3. If you use `>` twice, what's left in the file? ✅

---

## Day 3: Command Substitution `$()` and Arithmetic `$(( ))`
**Status:** Complete

### Concepts Covered
- `$()` — command substitution: runs a command and stores its output in a variable
- `$(( ))` — arithmetic: does integer math inside double parentheses
- Common commands to substitute: `date`, `whoami`, `pwd`

### Key Insights
- `$()` captures command output; `$(( ))` evaluates math expressions
- Bash arithmetic is **integers only** — decimals are dropped (`10 / 3 = 3`)
- Variable names use underscores `_` not hyphens `-` (hyphens break bash)
- `$` opens the box — `#` and other characters do not

### Common Mistakes to Watch
- `echo "location"` prints the word "location" — need `echo "$location"`
- `three-weeks` is invalid — use `three_weeks`
- `echo "#var"` — `#` is not `$`

### Script
`day03-command-substitution.sh`

---

### Quiz Questions for Day 4 Warmup
1. What does `$()` do?
2. What's the syntax for doing math in bash?
3. What's wrong with this variable name: `my-var`?

---

## Day 3 Recap Quiz
**Date:** 2026-05-25
**Score:** 3/3

1. What does `$()` do? ✅
2. What's the syntax for doing math in bash? ✅
3. What's wrong with `my-var`? ✅

---

## Day 4: Conditionals — `if/elif/else`
**Status:** Complete

### Concepts Covered
- `if [ condition ]; then` — runs block if condition is true
- `elif [ condition ]; then` — checked if previous condition was false
- `else` — fallback if no conditions matched
- `fi` — closes the if block (if backwards)
- Number comparisons: `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`
- String comparisons: `=` and `!=`

### Key Insights
- Spaces inside `[ ]` are required — `[ "$var" -gt 5 ]` not `["$var" -gt 5]`
- Bash checks conditions top to bottom and stops at the first true one
- Always quote variables in conditions: `"$var"` not `$var`
- `else` must be on its own line — not `else echo "something"`

### Common Mistakes to Watch
- `temperature = 65` is wrong — no spaces around `=` when assigning
- `&variable` doesn't open the box — it's `$variable`
- Missing space after `[` or before `]` will break the condition
- `else echo "x"` — `else` needs its own line

### Script
`day04-conditionals.sh`

---

### Quiz Questions for Day 5 Warmup
1. What keyword closes an `if` block in bash?
2. What operator checks if one number is greater than or equal to another?
3. What's wrong with this: `if ["$score" -gt 50]; then`?
