# NEXT-SCNUThesis

华南师范大学本科毕业论文 LaTeX 模板 [更新中]

<details>
  <summary>动机 & 碎碎念</summary>
  起因是作者毕业论文需要将同一篇论文内容以两种不同的模板（华南师范大学和阿伯丁大学）分别提交，而阿伯丁提供了 LaTeX 模板，华南师范大学的模板则是 Word 的。而要将 1.5万词的英文论文（公式、引用、图表）从 LaTeX 模板迁移到 Word 模板，懂的都懂。更窒息的是，在华师的毕业论文要求中，不能完全不出现中文，而本专业又要求英文写作，这就导致必须在 LaTeX 模板中混排中文和英文。作者已经基本完成英文 LaTeX 模板下的毕业论文，鉴于此，一个能无痛迁移且符合华南师范大学本科毕业论文格式要求的 LaTeX 模板就成为刚需了。本项目部分细节参考了洲哥的scnuthesis，从空白模板头尽可能简洁地手撕了这个项目。亲测从本人的英文 LaTeX 论文初步迁移到本模板耗时约 20 分钟，即可大致符合要求。至于是否最终符合还待今年作者毕业的检验。
</details>

## 特性

- 基本符合华南师范大学本科毕业论文格式要求
- 更好的中英混排
- 更高级别的封装
- 从英文模板无痛迁移

## 使用方法

### 本地使用

1. 下载本项目
2. 快速浏览 `example.tex`，了解模板的使用方法
3. 从 `main.tex` 开始你的工作或迁移

### 在线使用

1. 下载本项目并上传个人 `Overleaf`
2. 快速浏览 `example.tex`，了解模板的使用方法
3. 从 `main.tex` 开始你的工作或迁移

## 使用建议 & 无痛迁移

论文由以下若干章节组成：

- 英文摘要
- 中文摘要
- 目录
- 正文
- 参考文献
- 附录
- 致谢

对应 `.tex` 中的：

- `\begin{abstract}` `\end{abstract}`
- `\begin{zhabstract}` `\end{zhabstract}`
- `\toc`
- `\chapteren{MAIN BODY}`
- `\reference{references}`
- `\appendix`
- `\acknowledgements`

其中：

- `\title{}`：论文标题
- `\author{}`：作者姓名
- `\studentid{}`：学号
- `\majorclass{}`：专业班级
- `\supervisor{}`：导师姓名
- `\date{}`：日期
- `\keywordsen{}`：英文关键词
- `\keywordsch{}`：中文关键词
- `\begin{abstracten}` `\end{abstracten}`：英文摘要
- `\begin{abstractzh}` `\end{abstractzh}`：中文摘要
- `\chapteren{}`：英文章节
- `\chapterzh{}`：中文章节

从原英文模板迁移到本模板时，建议：

1. 完成基本信息
2. 完成英文摘要及英文关键词
3. 完成中文摘要及中文关键词
4. 将论文正文直接插入
5. 复制bib文件
6. 微调

## 参考

- [scnuthesis](https://github.com/scnu/scnuthesis)
- [University of Aberdeen thesis template](https://www.overleaf.com/latex/templates/university-of-aberdeen-thesis-template/jzrbyqmggygd)
- [SCNU-ABD-Thesis-template](https://github.com/kikixiong/SCNU-ABD-Thesis-template)
