# problem-answer-note
A template for class assignment.

## How to use?
Place `hw.sty` and your main tex file in the same dictionary. Use the package `hw`.
```latex
\usepackage{hw}
```
This package(`hw`) defined two environment and some convinent command.

### Compile
Here is a compile example.
```bash
xelatex main
biber main
xelatex main
xelatex main
```

If you're in `bash`, you can also compile with
```bash
./compile.sh
```

### `problem` environment
```latex
\begin{problem}
    %input
\end{problem}
```
The `problem` environment will make a section title `\textsc{Problem. *}`, where `*` is the auto-step number indicating the order of problems(or qustions, whatever).
### `note` environment
After the `problem` environment you can write
```latex
\begin{note}
    %input
\end{note}
```
As same as it's name, it can note something you like.

### Other Useful Commands
`\subsecion`: Make sure you use `\subsecion` in the `problem` environment. It can provides subsection title such as (1), (2), (3).
`\alphsection`: Similar to `\subsection`, but provides (a), (b), (c).
`\var[something]`: Fix font error from package `amsmath`(or maybe `amssymb`), if you