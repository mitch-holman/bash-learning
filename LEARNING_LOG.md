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
