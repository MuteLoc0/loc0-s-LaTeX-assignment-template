# loc0-s-LaTeX-assignment-template
Recorded some common assignment templates summarized in LaTeX learning.

## How to use?

After downloading the source code, place the `.sty` file of the template you want to use in the same directory as the main `tex` file and use the package (usually the name of the file).

For the **problem-answer-note** template, ` hw.sty` is the template package, and `compile.sh` is the compile script that runs on the bash command line. The default main document name is "main".

It is available for `main.tex` files at compile,

```bash
./compile.sh
```

Remember to change compiled script file **permissions**,

```bash
chmod 755 compile.sh
```

