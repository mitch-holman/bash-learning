# Bash Course — Concepts Recap

## Day 1: Shebang, Variables, `echo`

### Shebang
The first line of every script. Tells the OS which interpreter to use.
```bash
#!/bin/bash
```

### Variables
Assign with `=` (no spaces around it). Access the value with `$`.
```bash
name="Mitch"   # put a value in the box
echo "$name"   # open the box and print what's inside
```
- Without `$` — you're referring to the name of the box
- With `$` — you're opening the box and getting the value out

### `echo`
Bash's print statement. Outputs text to the terminal.
```bash
echo "Hello, world!"
echo "$name"
```

### Quoting
Always wrap variables in double quotes to prevent word-splitting when values contain spaces.
```bash
echo "$name"    # safe
echo $name      # works until the value has spaces
```

---

## Day 2: File I/O — Reading and Writing Files

### Write to a file `>`
Creates the file if it doesn't exist. **Overwrites** if it does.
```bash
echo "Hello" > myfile.txt
```

### Append to a file `>>`
Adds to the **end** of the file. Keeps existing content.
```bash
echo "World" >> myfile.txt
```

### Read a file `cat`
Prints the contents of a file to the terminal.
```bash
cat myfile.txt
```

### Quick reference
| Symbol | Action |
|--------|--------|
| `>` | Write (overwrites) |
| `>>` | Append (adds to end) |
| `cat` | Read and print |

---

## Day 3: Command Substitution and Arithmetic

### Command Substitution `$()`
Runs a command and stores its output in a variable.
```bash
today=$(date)
user=$(whoami)
location=$(pwd)
echo "Today is $today"
```

### Arithmetic `$(( ))`
Does integer math inside double parentheses.
```bash
result=$((5 + 3))   # 8
result=$((10 / 3))  # 3 — integers only, decimal dropped
```

Operators: `+`, `-`, `*`, `/`

### Watch out for
- Variable names use `_` not `-`: `my_var` ✅ `my-var` ❌
- `$` opens the box — not `#` or anything else
- Bash arithmetic is integers only — no decimals
