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
  \phantomsection
  \begin{center}
    {\zihao{-2} \bfseries  ABSTRACT} \\[1em]
  \end{center}
  \hspace{12pt}
  \zihao{-4}
  \setlength{\parindent}{24pt}
  \ignorespaces
  \setlength{\parskip}{1em}
  \addcontentsline{toc}{chapter}{\zihao{-4}  ABSTRACT}
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
  \phantomsection
  \begin{center}
    {\zihao{-2} \bfseries \hei 摘\quad 要} \\[1em]
  \end{center}
  \hspace{12pt}
  \zihao{-4} \song
  \setlength{\parindent}{24pt}
  \ignorespaces
  \setlength{\parskip}{1em}
  \addcontentsline{toc}{chapter}{\zihao{-4} \song 摘\quad 要}
}{
  \par
  \vspace{1em}
  \noindent
  {\zihao{-4} \bfseries \hei 关键词\quad ：}
  {\zihao{-4} \song \@keywordszh}
  \clearpage
}

\renewcommand\thesection{\arabic{chapter}.\arabic{section}} % 章节编号格式
\renewcommand\thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}} % 小节编号格式
\renewcommand\thesubsubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}} % 小小节编号格式

% ====== chapter 标题居中 ======
\titleformat{\chapter}[display] % 针对 \chapteren 命令
  {\centering \zihao{-2} \hei \bfseries} % 居中 + 小二号黑体加粗
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

% ====== subsubsection 标题左对齐 ======
\titleformat{\subsubsection}
  {\raggedright \zihao{-4}} % 左对齐 + 小四号黑体加粗
  {\thesubsubsection} % 标签（如“1.1.1.1”）
  {1em} % 标签与标题间距
  {} % 标题内容格式


% ---------- 目录标题格式 ----------
\renewcommand{\contentsname}{\hfill\bfseries\Large \zihao{-2} \hei \bfseries 目\quad 录\hfill}   
\renewcommand{\cftaftertoctitle}{\hfill}

% ---------- 中文章节目录条目配置 ----------
\titlecontents{chapter}[0pt] % 层级名称
  {\addvspace{6pt} \zihao{-4} \song} % 整体格式（小四号宋体）
  {} % 标签格式
  {} 
  {\titlerule*[0.5pc]{.}\contentspage} % 引导线 + 页码（点线引导）
  [\addvspace{3pt}] % 条目间距

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
  \begingroup
  \setstretch{1.5} % 1.5倍行距
  \setlength{\parindent}{0pt} % 段首不缩进
  \addcontentsline{toc}{chapter}{\zihao{-4}  REFERENCES} % 添加参考文献目录条目
  \phantomsection
  \bibliography{#1}
  \endgroup
}

\renewcommand{\appendix}{%
  \setcounter{chapter}{0} % 重置章节计数器
  \setcounter{section}{0} % 重置小节计数器
  \renewcommand{\thesection}{.\arabic{section}} % 设置附录小节编号格式
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\zihao{-4}  APPENDIX} % 添加附录目录条目
  \begin{center}
    {\zihao{-2}  \bfseries APPENDIX} % 附录标题
    \vspace{1em}
  \end{center}
  }

\newcommand{\acknowledgements}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\zihao{-4}  ACKNOWLEDGEMENTS} % 添加致谢目录条目
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