\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{mbook}
[2011/04/05 v0.1 Thesis Template  for  Doctor]
\LoadClass[oneside]{ctexbook}[2007/10/19]
\RequirePackage{amsmath,amssymb,fancyhdr,xeCJK,tcolorbox,color,paralist,amsthm,tikz,float,caption,turnstile,mathrsfs,anyfontsize,extarrows,makecell,titlesec,geometry,fontawesome,enumitem,calc,wrapfig}
%\RequirePackage{pgfornament}
\RequirePackage[colorlinks,linkcolor=red]{hyperref}
\tcbuselibrary{skins,theorems,breakable,documentation}

\captionsetup[figure]{labelsep=space}
\everymath{\displaystyle}
\RequirePackage{framed}

\RequirePackage{extarrows,pgfplots,longtable,multicol,graphicx,amssymb}
%\hypersetup{bookmarks=true,bookmarksopen=false}



\ctexset {chapter = {pagestyle = fancy}}
\setlength{\headheight}{15pt}
\newenvironment{solution}{\begin{proof}[\bf 解]\renewcommand{\qedsymbol}{$\blacksquare$}}{\end{proof}}
\linespread{1.6}
\usetikzlibrary{decorations.markings}

\RequirePackage{bookmark}
\bookmarksetup{
open,
numbered,
addtohook={%
\ifnum\bookmarkget{level}=0 % chapter
\bookmarksetup{bold}%
\fi
\ifnum\bookmarkget{level}=-1 % part
\bookmarksetup{color=ocre,bold}%
\fi
}
}


\setCJKmainfont[Path=Fonts/]{LXGWWenKai-Regular.ttf}

\geometry{a4paper,left=2.2cm,right=2.2cm,top=2cm,bottom=2cm}
\pagecolor{yellow!10!white}
\newtcbtheorem[number within=section]{theorem}{Theorem}%
{colback=red!8!white,breakable,
    colframe=red!28!white,arc=0mm,breakable,coltitle=purple,fonttitle=\bfseries}{Th}

\newtcbtheorem[number within=section]{definition}{Definition}%
{colback=orange!8!white,breakable,
    colframe=orange!28!white,arc=0mm,breakable,coltitle=magenta,fonttitle=\bfseries}{Def}

\newtcbtheorem[number within=section]{proposition}{Proposition}%
{colback=cyan!8!white,breakable,
    colframe=cyan!28!white,arc=0mm,breakable,coltitle=teal,fonttitle=\bfseries}{po}

\newtcbtheorem[number within=section]{lemma}{Lemma}%
{colback=cyan!8!white,breakable,
	colframe=cyan!28!white,arc=0mm,breakable,coltitle=teal,fonttitle=\bfseries}{le}

\newcounter{woes}
\renewcommand{\thewoes}{\arabic{woes}}
\newcommand{\woe}{\par\noindent\refstepcounter{woes}\textbf{\thewoes.}\hspace{0.5em}}
\newcommand{\woestar}{\par\noindent\refstepcounter{woes}\(\boldsymbol{\thewoes^*.}\)\hspace{0.5em}}
\newtcolorbox{questionA}{
    colback=green!5!white,colframe=green!30!white,
    parbox=false,before upper=\par,before lower=\par,
    coltitle=green!25!black,breakable,
    title={\thesection \(\,\boldsymbol{\mathcal{A} }\)},fonttitle=\bfseries}
\newenvironment{quiza}{\begin{questionA}\setcounter{woes}{0}}{\end{questionA}}

\newtcolorbox{questionB}{
    colback=blue!5!white,colframe=blue!30!white,
    parbox=false,before upper=\par,before lower=\par,
    coltitle=blue!25!black,breakable,
    title={\thesection \(\,\boldsymbol{\mathcal{B}}\)},fonttitle=\bfseries}
\newenvironment{quizb}{\begin{questionB}\setcounter{woes}{0}}{\end{questionB}}
\newenvironment{quizs}{\begin{enumerate}[itemindent=0.5em,label=\textcolor{red!50!black}{(\arabic*)}]}{\end{enumerate}}
\newenvironment{quizss}{\vspace{0.2em}\begin{asparaenum}[(1)]}{\end{asparaenum}}


\newenvironment{quizcs}{\begin{compactenum}[\quad (1)]}{\end{compactenum}}
\newcommand{\precis}[1]{\addtocontents{toc}{%
        \unexpanded{\unexpanded{{\small#1\par}}}}}


\newcommand{\inp}[1]{\langle #1 \rangle}
\newcommand{\dd}{\,\mathrm{d}}
\newcommand{\CC}{\,\mathrm{C}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\DD}{\mathrm{D}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\bbr}{\mathbb{R}}
\newcommand{\bbc}{\mathbb{C}}
\newcommand{\bbn}{\mathbb{N}}
\newcommand{\bbz}{\mathbb{Z}}
\newcommand{\bbq}{\mathbb{Q}}
\newcommand{\supp}{\mathrm{supp}\,}
\newcommand{\reff}[1]{\,\textbf{\ref{#1}}}
\def\upint{\mathchoice%
    {\mkern13mu\overline{\vphantom{\intop}\mkern7mu}\mkern-20mu}%
    {\mkern7mu\overline{\vphantom{\intop}\mkern7mu}\mkern-14mu}%
    {\mkern7mu\overline{\vphantom{\intop}\mkern7mu}\mkern-14mu}%
    {\mkern7mu\overline{\vphantom{\intop}\mkern7mu}\mkern-14mu}%
  \int}
\def\lowint{\mkern3mu\underline{\vphantom{\intop}\mkern7mu}\mkern-10mu\int}







\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{2}
\pagestyle{fancy}\empty{}
\lhead{\textit{\leftmark}}
\rhead{\textit{\rightmark}}
%\chead{\textcolor{red!88!black}{\pgfornament[scale=0.25]{80}}}
%\chead{\textcolor{red!88!black}{\pgfornament[scale=0.1]{69}}}
%\fancyfoot[L]{\begin{tikzpicture}
%	\node (A) at (0,0) {};
%	\node (B) at (5,0) {};
%	\path (A)--(B) coordinate[pos=.5] (c1);
%	\draw [orange] (A) to [ornament=84]
%	(c1) to [ornament=84] (B);
%	\end{tikzpicture}\qquad\textcolor{red!88!black}{\pgfornament[scale=0.3]{17}}}
%\fancyfoot[R]{\textcolor{red!88!black}{\pgfornament[scale=0.3]{18}}\qquad\begin{tikzpicture}
%	\node (A) at (0,0) {};
%	\node (B) at (5,0) {};
%	\path (A)--(B) coordinate[pos=.5] (c1);
%	\draw [orange] (A) to [ornament=84]
%	(c1) to [ornament=84] (B);
%	\end{tikzpicture}}
\cfoot{\textcolor{red!88!black}{\thepage}}

\renewcommand{\maketitle}{
\newgeometry{left=0.1cm,right=0.1cm,top=0.1cm,bottom=0.1cm}
				\vspace*{\fill}
				\vspace*{\fill}
				\begin{center}
					\normalfont
					{\Huge\bfseries \href{https://github.com/Acwuld/LouAnalysis}{数学分析}}
					\\
					\bigskip
					{\Large \kaishu 答案}
					\\
					\bigskip
					\bigskip
					{\Large\itshape 马乐}
					\\
					\vspace{1.3cm}
				\end{center}
				
					
						
						\begin{center}
							\large 更新中, 项目已开源至\href{https://github.com/Acwuld/LouAnalysis}{Github}. 点击标题即可获取\LaTeX 源码
						\end{center}
						
				\vspace{1cm}
\usetikzlibrary {datavisualization.formats.functions}
\begin{figure}[h]
\centering
\tikz [scale=2.1]\datavisualization [
  scientific axes=clean,
  y axis={ticks={style={
        /pgf/number format/fixed,
        /pgf/number format/fixed zerofill,
        /pgf/number format/precision=2}}},
  x axis={ticks={tick suffix=${}^\circ$}},
  visualize as smooth line/.list={1,2,3,4,5,6},
  style sheet=vary hue]
data [format=function] {
  var set : {1,...,6};
  var x : interval [0:60];
  func y =20* sin(\value x * (\value{set}+10))/(\value{set}+5);
};
\end{figure}
				\vspace{\stretch{3}}
				\usetikzlibrary {decorations.fractals,spy}
\begin{tikzpicture}
  \draw [decoration=Koch snowflake]
    decorate { decorate{ decorate{ decorate{ (0,0) -- (20,0) }}}};
	\draw[black] (0,0)--(20,0);
\end{tikzpicture}
}
\ctexset {chapter={name={第,章},number={\arabic{chapter}},beforeskip={3pt},afterskip={3pt}}}
\endinput
