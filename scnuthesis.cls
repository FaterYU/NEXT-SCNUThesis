\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scnuthesis}[2023/10/01 v1.0.0 SCNU Thesis Class]
\LoadClass[a4paper,12pt]{report}

\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{geometry}
\RequirePackage{ctex}
\RequirePackage{array}
\RequirePackage{indentfirst}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{tocloft}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{gbt7714}


% \newcommand{\tnr}{\timesnewroman}       % Times New Roman
\newcommand{\song}{\CJKfamily{zhsong}} % 宋体
\newcommand{\fs}{\CJKfamily{zhfs}}      % 仿宋
\newcommand{\kai}{\CJKfamily{zhkai}}      % 楷体
\newcommand{\hei}{\CJKfamily{zhhei}}      % 黑体
\newcommand{\li}{\CJKfamily{zhli}}        % 隶书
\newcommand{\you}{\CJKfamily{zhyou}}      % 幼圆

\setmainfont{Times New Roman}

\newcommand{\studentid}[1]{\def\@studentid{#1}}
\newcommand{\majorclass}[1]{\def\@majorclass{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\def\@studentid{}
\def\@majorclass{}
\def\@supervisor{}

\renewcommand{\maketitle}{%
  \begin{center}
    {\zihao{-0} \hei \bfseries 毕 \quad 业\quad 论\quad 文 \par}
    \vspace{2em}
    {\zihao{-0} \hei \bfseries 论文封面由学校统一印制 \par}
  \end{center}
    \vfill
  \begin{center}
    {\zihao{2}  \bfseries \@title \par}
    \vspace{4em} % 调整标题下方间距

    \begin{tabular}{@{}>{\centering\arraybackslash}p{5cm}@{}>{\centering\arraybackslash}p{8cm}@{}}
    {\zihao{3} \fs \bfseries 学生姓名}   & 
      {\zihao{3} \song \makebox[8cm][c]{\@author} \par \nointerlineskip \hrule width 8cm height 0.4pt} \\[1.2em]
    {\zihao{3} \fs \bfseries 学\qquad 号} & 
      {\zihao{3} \song \makebox[8cm][c]{\@studentid} \par \nointerlineskip \hrule width 8cm height 0.4pt} \\[1.2em]
    {\zihao{3} \fs \bfseries 专业班级}    & 
      {\zihao{3} \song \makebox[8cm][c]{\@majorclass} \par \nointerlineskip \hrule width 8cm height 0.4pt} \\[1.2em]
    {\zihao{3} \fs \bfseries 指导老师}    & 
      {\zihao{3} \song \makebox[8cm][c]{\@supervisor} \par \nointerlineskip \hrule width 8cm height 0.4pt} \\[1.2em]
    {\zihao{3} \fs \bfseries 完成日期}    & 
      {\zihao{3} \song \makebox[8cm][c]{\@date} \par \nointerlineskip \hrule width 8cm height 0.4pt} \\[1.2em]
  \end{tabular}
  \end{center}
  \thispagestyle{empty}
  \clearpage
}

\newcommand{\keywordsen}[1]{\gdef\@keywordsen{#1}}
\newenvironment{abstracten}{
  \clearpage
  \begin{center}
    {\zihao{-2} \bfseries  ABSTRACT} \\[1em]
  \end{center}
  \hspace{12pt}
  \zihao{-4}
  \setlength{\parindent}{24pt}
  \ignorespaces
  \setlength{\parskip}{1em}
  \addcontentsline{toc}{chapteren}{\zihao{-4}  ABSTRACT}
}{
  \par
  \vspace{1em}
  \noindent
  {\zihao{-4} \bfseries  Key Words:}
  {\zihao{-4}  \@keywordsen}
  \pagenumbering{Roman} % 罗马数字页码
  \setcounter{page}{1} % 重置页码
  \clearpage
}

\newcommand{\keywordszh}[1]{\gdef\@keywordszh{#1}}
\newenvironment{abstractzh}{
  \clearpage
  \begin{center}
    {\zihao{-2} \bfseries \song 摘\quad 要} \\[1em]
  \end{center}
  \hspace{12pt}
  \zihao{-4} \song
  \setlength{\parindent}{24pt}
  \ignorespaces
  \setlength{\parskip}{1em}
  \addcontentsline{toc}{chapterzh}{\zihao{-4} \song 摘\quad 要}
}{
  \par
  \vspace{1em}
  \noindent
  {\zihao{-4} \bfseries \song 关键词\quad ：}
  {\zihao{-4} \song \@keywordszh}
  \clearpage
}

\renewcommand\thesection{\arabic{chapter}.\arabic{section}} % 章节编号格式
\renewcommand\thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}} % 小节编号格式
\renewcommand\thesubsubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}} % 小小节编号格式

% ====== chapter 标题居中 ======
\titleformat{\chapter}[display] % 针对 \chapter 命令
  {\centering \zihao{-2}  \bfseries} % 居中 + 三号黑体加粗
  {\chaptertitlename\ \thechapter} % 标签格式（如“第1章”）
  {20pt} % 标签与标题间距
  {\zihao{-2}  \bfseries} % 标题字体

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
  {0\baselineskip} % 段前间距（1行）
  {1\baselineskip} % 段后间距

% ---------- 目录标题格式 ----------
\renewcommand{\contentsname}{\hfill\bfseries\Large \zihao{-2} \hei \bfseries 目\quad 录\hfill}   
\renewcommand{\cftaftertoctitle}{\hfill}

% ---------- 中文章节目录条目配置 ----------
\titlecontents{chapterzh}[0pt] % 层级名称
  {\addvspace{6pt} \zihao{-4} \song} % 整体格式（小四号宋体）
  {\contentslabel[\hspace*{1.5em}第\thecontentslabel 章\hspace*{1.5em}]{4.5em}} % 标签格式（如"第1章"）
  {} 
  {\titlerule*[0.5pc]{.}\contentspage} % 引导线 + 页码（点线引导）
  [\addvspace{3pt}] % 条目间距

% ---------- 英文章节目录条目配置 ----------
\titlecontents{chapteren}[0pt]
  {\addvspace{6pt} \zihao{-4}}
  {\contentslabel[\hspace*{1.5em}Chapter~\thecontentslabel\hspace*{1.5em}]{6em}} % 标签格式（如"Chapter 1"）
  {}
  {\titlerule*[0.5pc]{.}\contentspage}
  [\addvspace{3pt}]

% ---------- 章节命令定义 ----------
\newcommand{\chapterzh}[1]{%
  \chapter*{#1}
  \addcontentsline{toc}{chapterzh}{#1} % 添加中文目录条目
  \markboth{#1}{} % 页眉标记（按需调整）
  \addtocounter{chapter}{1} % 章节计数器加1
  \setcounter{section}{0} % 重置小节计数器
}

\newcommand{\chapteren}[1]{%
  \chapter*{#1}
  \addcontentsline{toc}{chapteren}{#1} % 添加英文目录条目
  \markboth{#1}{}
  \addtocounter{chapter}{1} % 章节计数器加1
  \setcounter{section}{0} % 重置小节计数器
}

% ---------- 生成目录命令 ----------
\newcommand{\toc}{
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
\renewcommand{\bibname}{\zihao{-2}  REFERENCES} % 参考文献标题
\newcommand{\reference}[1]{%
  \clearpage
  \addcontentsline{toc}{chapteren}{\zihao{-4}  REFERENCES} % 添加参考文献目录条目
  \setstretch{1.5} % 1.5倍行距
  \setlength{\parindent}{0pt} % 段首不缩进
  \bibliography{#1}
}

\renewcommand{\appendix}{%
  \setcounter{chapter}{0} % 重置章节计数器
  \setcounter{section}{0} % 重置小节计数器
  \renewcommand{\thesection}{.\arabic{section}} % 设置附录小节编号格式
  \clearpage
  \addcontentsline{toc}{chapteren}{\zihao{-4}  APPENDIX} % 添加附录目录条目
  \begin{center}
    {\zihao{-2}  \bfseries APPENDIX} % 附录标题
    \vspace{1em}
  \end{center}
  }

\newcommand{\acknowledgements}{%
  \clearpage
  \addcontentsline{toc}{chapterzh}{\zihao{-4}  ACKNOWLEDGEMENTS} % 添加致谢目录条目
  \begin{center}
    {\zihao{-2}  \bfseries ACKNOWLEDGEMENTS} % 致谢标题
    \vspace{1em}
  \end{center}
  \zihao{-4}
  \setlength{\parindent}{2em} % 段首缩进
  \setlength{\parskip}{1em} % 段间距
}

\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}} % 图编号格式
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}} % 表编号格式
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}} % 公式编号格式
\renewcommand{\thefootnote}{\arabic{footnote}} % 脚注编号格式
\renewcommand{\figurename}{\zihao{5} Fig.} % 图标题格式
\renewcommand{\tablename}{\zihao{5} Table} % 表标题格式