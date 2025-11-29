# physics-experiment-paper
This template is writed only for Chinese experiment paper.
本模板为中文实验论文而写.

## 字体适配
```
% \setCJKfamilyfont{song}[AutoFakeBold]{SimSun} 	%如使用win系统编译,使用此行
\setCJKfamilyfont{song}[AutoFakeBold]{Noto Serif CJK SC}	%如使用其他系统,自行安装Noto Serif系列字体后使用此行
```
如需获取字体，前往[Noto-CJK](https://github.com/notofonts/noto-cjk)查找NotoSerifCJKsc，下载并安装一系列OTF字体即可。

## 如何使用
### 编译
本模板自带一份示例文档`main.tex`，编译时可以在`bash`中运行`./compile.sh`或者
```bash
xelatex main
bibtex main
xelatex main
xelatex main
```

### 组成
将`testreport_class.cls`放在与主文档同一目录下，文档类使用`testreport_class`，即
```latex
\documentclass{testreport_class}
```

`testreport_class`类基于`article`文档类，命令均通用。主文档在正文`\maketitle`之后用`abstruct`环境手动插入摘要，`\section{*}`与`\subsection{*}`正常使用即可，`\section{*}`会编译出正确的中文序号。

图片插入与公式插入等已在`example.tex`中提及。

可以在`testreport_class.cls`文件自定义格式等。

### 引用
文档交叉引用使用`bibtex`与`cite`宏包，修改`ref.bib`后用`\cite{*}`等命令即可正确引用。由于复旦物理系实验要求使用上标，可以使用`\textsuperscript{\cite{*}}`完成引用。

文档正文区最末插入参考文献表，如
```latex
\section{参考文献}
\begin{spacing}{1}
    \nocite{*}    %用来显示所有的参考文献
    \bibliographystyle{unsrt}       %本条命令定义了文献引用格式，一般不用修改
    \bibliography{ref}
\end{spacing}
```