\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NEXT-SCNUThesis}[2025/04/07 v1.0.0 SCNU Thesis Class]
\LoadClass[a4paper,12pt]{report}

\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{geometry}
\geometry{top=1in, bottom=1in, left=1in, right=1in, bindingoffset=0.5cm} % 设置页边距
\RequirePackage{ctex}
\RequirePackage{array}
\RequirePackage{indentfirst}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{tocloft}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{fontspec}
\RequirePackage[colorlinks, linkcolor=black, anchorcolor=black, citecolor=black, urlcolor=black, filecolor=black]{hyperref}
\RequirePackage{gbt7714}
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{xcolor}
\RequirePackage{textcomp}
\RequirePackage{ulem}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage[ruled, vlined]{algorithm2e}
\RequirePackage{algpseudocode}

\setCJKfamilyfont{zhsong}{SIMSUN.TTC}[Path = ./font/]% 覆盖原有zhsong

\newcommand{\song}{\CJKfamily{zhsong}} % 宋体
\newcommand{\fs}{\CJKfamily{zhfs}}      % 仿宋
\newcommand{\kai}{\CJKfamily{zhkai}}      % 楷体
\newcommand{\hei}{\CJKfamily{zhhei}}      % 黑体
\newcommand{\li}{\CJKfamily{zhli}}        % 隶书
\newcommand{\you}{\CJKfamily{zhyou}}      % 幼圆

\setmainfont{Times New Roman}

\AtBeginDocument{\zihao{-4}} % 确保正文字号为小四号
\setstretch{1.25} % 1.25倍行距

\newcommand{\studentid}[1]{\def\@studentid{#1}}
\newcommand{\institute}[1]{\def\@institute{#1}}
\newcommand{\major}[1]{\def\@major{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\def\@studentid{}
\def\@institute{}
\def\@major{}
\def\@supervisor{}

% 页眉
\pagestyle{fancy}
\fancyhead[C]{\@title}
\fancyhead[L]{}
\fancyhead[R]{}
\fancypagestyle{plain}{
  \pagestyle{fancy}
}

\renewcommand{\maketitle}{%
    \quad\vspace{1.8em}
  \begin{center}
    \begin{figure}[htbp]
        \centering
        \includegraphics[width=0.95\linewidth]{fig/scnu_thesis_logo.eps}
    \end{figure}
    {\zihao{-1} \song \bfseries 本科毕业论文（设计） \par}
    % \vspace{2em}
    % {\zihao{-0} \hei \bfseries 论文封面由学校统一印制 \par}
  \end{center}
    % \vfill
    \vspace{8em}
  \begin{center}
    % {\zihao{2}  \bfseries \@title \par}
    % \vspace{8em} % 调整标题下方间距

    \begin{tabular}{@{}>{\centering\arraybackslash}p{2.5cm}@{}>{\centering\arraybackslash}p{8cm}@{}}
    {\zihao{4} \song 论文题目：}   & 
    {\zihao{4} \song 
        \parbox[c]{8cm}{\centering \@title} 
        \par\vspace{0.2em}\nointerlineskip\hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 指导老师：}    & 
      {\zihao{4} \song \makebox[8cm][c]{\@supervisor} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 学生姓名：}   & 
      {\zihao{4} \song \makebox[8cm][c]{\@author} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 学\qquad 号：} & 
      {\zihao{4} \song \makebox[8cm][c]{\@studentid} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 学\qquad 院：}    & 
      {\zihao{4} \song \makebox[8cm][c]{\@institute} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 专\qquad 业：}    & 
      {\zihao{4} \song \makebox[8cm][c]{\@major} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    {\zihao{4} \song 毕业时间：}    & 
      {\zihao{4} \song \makebox[8cm][c]{\@date} \par \vspace{0.2em} \nointerlineskip \hrule width 8cm height 0.4pt} \\[1em]
    \end{tabular}
  \end{center}
  \thispagestyle{empty}
  \clearpage
}

\newcommand{\keywordsen}[1]{\gdef\@keywordsen{#1}}
\newenvironment{abstracten}{
  \clearpage
  \phantomsection
  \begin{center}
    {\zihao{-2} \bfseries  ABSTRACT} \\[1em]
  \end{center}
  \setlength{\parindent}{4em}
  \par
  \addcontentsline{toc}{chapter}{\zihao{-4}  ABSTRACT}
  \begin{spacing}{1.5}
      % 正文字号设置并刷新字体属性
      \zihao{-4}\selectfont
      % 忽略环境开始后的空白
      \ignorespaces
      % \setlength{\parskip}{1em}
}{
  \end{spacing}
  \par
  \vspace{1em}
  \noindent
  {\zihao{-4} \bfseries  Key Words:}
  {\zihao{-4}  \@keywordsen}
  \pagenumbering{Roman} % 罗马数字页码
  \setcounter{page}{1} % 重置页码
}

\newcommand{\keywordszh}[1]{\gdef\@keywordszh{#1}}
\newenvironment{abstractzh}{
  \clearpage
  \phantomsection
  \begin{center}
    {\zihao{-2} \bfseries \hei 摘\quad 要} \\[1em]
  \end{center}
  \zihao{-4} \song
  \setlength{\parindent}{2\ccwd}
  \par
  \addcontentsline{toc}{chapter}{\zihao{-4} \song 摘\quad 要}
  \begin{spacing}{1.5}
      % 正文字号设置并刷新字体属性
      \zihao{-4} \song \selectfont
      % 忽略环境开始后的空白
      \ignorespaces
      % \setlength{\parskip}{1em}
}{
  \end{spacing}
  \par
  \vspace{1em}
  \noindent
  {\zihao{-4} \bfseries \hei 关键词\quad ：}
  {\zihao{-4} \song \@keywordszh}
}

\renewcommand\thesection{\arabic{chapter}.\arabic{section}} % 章节编号格式
\renewcommand\thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}} % 小节编号格式
\renewcommand\thesubsubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}} % 小小节编号格式

% ====== chapter 标题居中 ======
\titleformat{\chapter}[display] % 针对 \chapter 命令
  {\centering \zihao{-2} \hei \bfseries} % 居中 + 小二号黑体加粗
  {}
  % {\chaptertitlename\ \thechapter} % 标签格式（如“第1章”）
  {0pt} % 标签与标题间距
  {\zihao{-2}  \bfseries} % 标题字体

\titlespacing*{\chapter}{0pt}{-50pt}{20pt}

% ====== section 标题左对齐 ======
\titleformat{\section}
  {\raggedright \zihao{4}} % 左对齐 + 四号黑体加粗
  {\thesection} % 标签（如“1.1”）
  {1em} % 标签与标题间距
  {} % 标题内容格式

% 设置 section 段前空两行
\titlespacing{\section}
  {0pt} % 左缩进
  {1\baselineskip} % 段前间距（2行）
  {1\baselineskip} % 段后间距

% ====== subsection 标题左对齐 ======
\titleformat{\subsection}
  {\raggedright \zihao{-4}} % 左对齐 + 小四号黑体加粗
  {\thesubsection} % 标签（如“1.1.1”）
  {1em} % 标签与标题间距
  {} % 标题内容格式

% 设置 subsection 段前空一行
\titlespacing{\subsection}
  {0pt} % 左缩进
  {1\baselineskip} % 段前间距（1行）
  {0\baselineskip} % 段后间距

% ====== subsubsection 标题左对齐 ======
\titleformat{\subsubsection}
  {\raggedright \zihao{-4}} % 左对齐 + 小四号黑体加粗
  {\thesubsubsection} % 标签（如“1.1.1.1”）
  {1em} % 标签与标题间距
  {} % 标题内容格式


% ---------- 目录标题格式 ----------
\renewcommand{\contentsname}{\vspace*{-50pt}{\hfill \zihao{-2} \bfseries Contents \hfill}}
% \renewcommand{\cftaftertoctitle}{\hfill}


% ---------- 目录条目格式 ----------
% \renewcommand{\cftchapfont}{\zihao{-4} \song} % 章节标题格式
\renewcommand{\cftsecfont}{\zihao{-4} \song} % 小节标题格式
\renewcommand{\cftsubsecfont}{\zihao{-4} \song} % 小小节标题格式
% ---------- 目录缩进设置 ----------
% \renewcommand{\cftchapindent}{0pt} % 章节缩进
\renewcommand{\cftsecindent}{2.5em} % 小节缩进
\renewcommand{\cftsubsecindent}{5em} % 小小节缩进
% ---------- 目录页码格式 ----------
% \renewcommand{\cftchappagefont}{\zihao{-4} \song} % 章节页码格式
\renewcommand{\cftsecpagefont}{\zihao{-4} \song} % 小节页码格式
\renewcommand{\cftsubsecpagefont}{\zihao{-4} \song} % 小小节页码格式
% ---------- 目录引导线格式 ----------
% \renewcommand{\cftchapleader}{\titlerule*[0.25pc]{.}} % 章节引导线格式
\renewcommand{\cftsecleader}{\titlerule*[0.25pc]{.}} % 小节引导线格式
\renewcommand{\cftsubsecleader}{\titlerule*[0.25pc]{.}} % 小小节引导线格式
% ---------- 目录条目间距 ----------
% \renewcommand{\cftbeforechapskip}{0pt} % 章节条目间距
\renewcommand{\cftbeforesecskip}{0pt} % 小节条目间距
\renewcommand{\cftbeforesubsecskip}{0pt} % 小小节条目间距

% ---------- 章节目录条目配置 ----------
\titlecontents{chapter}[0pt] % 层级名称
  {\zihao{-4} \song} % 整体格式（小四号宋体）
  {} % 标签格式
  {} 
  {\titlerule*[0.25pc]{.}\contentspage} % 引导线 + 页码（点线引导）
  % [\addvspace{0pt}] % 条目间距
% % ---------- 小节目录条目配置 ----------
% \titlecontents{section}[1.5em] % 层级名称
%   {\zihao{-4} \song} % 整体格式（小四号宋体）
%   {\thecontentslabel \quad} % 标签格式
%   {1em} 
%   {\titlerule*[0.5pc]{.}\contentspage} % 引导线 + 页码（点线引导）
%   % [\addvspace{0pt}] % 条目间距
% % ---------- 小小节目录条目配置 ----------
% \titlecontents{subsection}[3.5em] % 层级名称
%   {\zihao{-4} \song} % 整体格式（小四号宋体）
%   {\thecontentslabel \quad} % 标签格式
%   {}
%   {\titlerule*[0.5pc]{.}\contentspage} % 引导线 + 页码（点线引导）
%   % [\addvspace{0pt}] % 条目间距

% ---------- 生成目录命令 ----------
\newcommand{\toc}{
  \clearpage
  \begingroup
  \singlespacing
  \setstretch{1.25} % 1.25倍行距
  \tableofcontents
  \endgroup
  \clearpage
  \setcounter{page}{1} % 重置页码
  \pagenumbering{arabic} % 阿拉伯数字页码
  \setcounter{chapter}{0} % 重置章节计数器
}


% ---------- 参考文献命令 ----------
\bibliographystyle{gbt7714-numerical}
\renewcommand{\bibname}{
    \vspace*{1em}
    {\zihao{-2}  REFERENCES}
} % 参考文献标题
\newcommand{\reference}[1]{%
  \clearpage
  \begingroup
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
  \setstretch{1.5} % 1.5倍行距
  \setlength{\parindent}{0pt} % 段首不缩进
  \addcontentsline{toc}{chapter}{\zihao{-4}  REFERENCES} % 添加参考文献目录条目
  \phantomsection
  \bibliography{#1}
  \endgroup
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

\renewcommand{\appendix}{%
  \setcounter{chapter}{0} % 重置章节计数器
  \setcounter{section}{0} % 重置小节计数器
  \setcounter{subsection}{0}
  \setcounter{subsubsection}{0}
  \setcounter{secnumdepth}{3}
  \renewcommand{\thesection}{\Alph{section}} % 设置附录小节编号格式
  \renewcommand\thesubsection{\Alph{section}.\arabic{subsection}} % 小节编号格式
  \renewcommand\thesubsubsection{\Alph{section}.\arabic{subsection}.\arabic{subsubsection}} % 小小节编号格式
  \renewcommand{\thefigure}{\thesection.\arabic{figure}}
  \renewcommand{\thetable}{\thesection.\arabic{table}}
  \makeatletter
  \@addtoreset{figure}{section}
  \@addtoreset{table}{section}
  \makeatother
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\zihao{-4}  APPENDIX} % 添加附录目录条目
  \begin{center}
    {\zihao{-2}  \bfseries APPENDIX} % 附录标题
    \vspace{1em}
  \end{center}
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
  }

\newcommand{\acknowledgements}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\zihao{-4}  ACKNOWLEDGEMENTS} % 添加致谢目录条目
  \begin{center}
    {\zihao{-2}  \bfseries ACKNOWLEDGEMENTS} % 致谢标题
    \vspace{1em}
  \end{center}
  \zihao{-4} \song
  \setlength{\parindent}{2\ccwd} % 段首缩进
  \par
  \setlength{\parskip}{0.2em} % 段间距
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}} % 图编号格式
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}} % 表编号格式
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}} % 公式编号格式
\renewcommand{\thefootnote}{\arabic{footnote}} % 脚注编号格式
\renewcommand{\figurename}{\zihao{5} Fig.} % 图标题格式
\renewcommand{\tablename}{\zihao{5} Table} % 表标题格式

\makeatletter % 允许修改带 @ 的宏
% 重定义 \@makecaption 命令
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\zihao{5} #1\quad#2}
  \ifdim \wd\@tempboxa >\hsize
    {\zihao{5} #1\quad#2\par} % 标题过长时换行
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}% 居中标题
  \fi
  \vskip\belowcaptionskip
}
\makeatother % 恢复 @ 符号的默认行为
