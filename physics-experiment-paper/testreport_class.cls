%本文档稍作修改自https://blog.csdn.net/qq_60753714/article/details/135888038，作者@H.145

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{testreport_class}

\LoadClass[12pt,a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[left=2.5cm,right = 2.5cm, top = 2.5cm, bottom = 2.5cm]{geometry}
\RequirePackage{url}
\RequirePackage[heading=true, scheme=plain, punct=plain]{ctex}
\RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{listings} % 代码框
%\usepackage{listings}%代码框显示数学符号\begin{lstlisting}[mathescape]
\RequirePackage{framed} % listing中的分页问题
\RequirePackage{calc} % 等比例缩放
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{titletoc}
\RequirePackage{cite}
\RequirePackage[colorlinks,urlcolor=blue,linkcolor=blue,anchorcolor=blue,citecolor=blue]{hyperref}
\RequirePackage{setspace}%引言行距
\RequirePackage{etoolbox} % 删除 References 标题
% 首行缩进
\RequirePackage{indentfirst}
\renewcommand*{\baselinestretch}{1.625}%行间距
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\mcm@oldtabular\tabular
\let\mcm@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
	\renewcommand{\arraystretch}{1.5}%
	\mcm@oldtabular}%
{\mcm@endoldtabular\egroup}
% 每行缩进两个汉字
\setlength\parindent{2em}


% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{titletoc}
% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx}
\RequirePackage{float}
% 表格
\RequirePackage{array}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs}
%% multirow 支持在表格中跨行
\RequirePackage{multirow}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=2pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=2pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=2pt}

% 自定义页面风格
\RequirePackage{fancyhdr}
\fancypagestyle{bianyi}{
	\fancyhead{}
	\renewcommand\headrulewidth{0pt}
	\fancyfoot{}
	\fancyfoot[R]{\songti\zihao{5}\thepage}
}

% 设置粗体
% \setCJKfamilyfont{song}[AutoFakeBold]{SimSun} 	%如使用win系统编译,使用此行
\setCJKfamilyfont{song}[AutoFakeBold]{Noto Serif CJK SC}	%如使用其他系统,自行安装Noto Serif系列字体后使用此行

\newcommand*{\bfsongti}{\CJKfamily{song}}
\setCJKfamilyfont{hei}[AutoFakeBold]{SimHei}
\newcommand*{\bfheiti}{\CJKfamily{hei}}

% \setmainfont{Times New Roman}	% 如果需要times new roman，取消注释。这在linux系统上会报字体缺失错误，需要自行安装。

%自定义小标题样式
\ctexset{
    section={
        format +=\bfsongti \zihao{4} \raggedright ,
        name={,、\ \quad},
        number=\chinese{section},
        aftername =\hspace{0pt},
    },
    subsection={
        format +=\normalfont \zihao{-4} \raggedright , % 使用普通字体，防止加粗
        name={, \quad},
        number=\arabic{section}.\arabic{subsection},
        aftername =\hspace{0pt },
    },
    subsubsection={
        format +=\normalfont \zihao{-4} \raggedright , % 使用普通字体，防止加粗
        name={, \quad},
        number=\arabic{section}.\arabic{subsection}.\arabic{subsubsection},
        aftername =\hspace{0pt },
    }
}

% 重定义 \section 等命令
\let\oldsection\section
\renewcommand{\section}[1]{%
  \oldsection{#1} % 调用原有的 \section 命令
  \vspace{-0.5em}   % 添加垂直空间
}
\let\oldsubsection\subsection
\renewcommand{\subsection}[1]{%
  \vspace{-0.5em}
  \oldsubsection{#1} % 调用原有的 \section 命令
  \vspace{-0.5em}   % 添加垂直空间
}
\let\oldsubsubsection\subsubsection
\renewcommand{\subsubsection}[1]{%
  \vspace{-0.5em}
  \oldsubsubsection{#1} % 调用原有的 \section 命令
  \vspace{-0.5em}   % 添加垂直空间
}

%自定义大标题和作者样式
\renewcommand{\maketitle}{
    \begin{center}
        {\normalfont \CJKfamily{song}\bfseries \zihao{-2} {\@title}} \\[0.1em]  % 标题: 使用 \@title
        {\zihao{-4}\kaishu\@author}
		{\zihao{-4}\kaishu\@date} \\[0.1em]            % 作者: 使用 \@author

    \end{center}
    \vspace{0.1em}
}

% 设置浮动体的标题
\RequirePackage{caption}
% 定制列表环境
\RequirePackage{enumitem}
% 图表标题
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfive}{\zihao{5}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfive}, % 图的字体, 宋体五
	position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\DeclareCaptionFont{minusfive}{\zihao{5}}
\DeclareCaptionFont{bfsong}{\bfsongti}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={bfsong,minusfive}, % 表的字体, 宋体五
	position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}


% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}

\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftsecdotsep}{1.5} 
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}
\renewcommand{\cftsecfont}{\bfseries\zihao{-4}\songti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\small\ttfamily},
	numbers=none,
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=3,
}

\renewcommand\normalsize{\zihao{-4}\selectfont}

\newenvironment{abstruct}{\par\noindent\normalfont \CJKfamily{song}\bfseries \zihao{-4}{摘要：}\normalfont}{\vspace{-1.3em}}

\renewcommand\refname{}

\makeatletter
\patchcmd{\thebibliography}{\section*{\refname}}{}{}{}
\makeatother