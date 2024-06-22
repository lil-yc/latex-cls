% Last updated: Mar 6 2024
% Tips when using this cls: Remove maketitle, define title, author, date, studentnum

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lilhomework}
\LoadClass[12pt]{article}

\usepackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage{fancyhdr}


% Section/Subsection formatting
\renewcommand{\thesection}{Question \arabic{section}}
\renewcommand{\thesubsection}{(\alph{subsection})}
\renewcommand{\thesubsubsection}{\roman{subsubsection}}

% Header 
\newcommand{\studentnum}[1]{\gdef\@studentnum{#1}}

\pagestyle{fancy}
\fancyhf{} 
\fancyhead[C]{\@title\hfill\@author\hfill\@studentnum\hfill\@date} 
\renewcommand{\maketitle}{%
  \begin{titlepage}
  \end{titlepage}
}


% Useful packages
\usepackage{tcolorbox} 
\usepackage{hyperref} 
\usepackage{xcolor}
\usepackage{titlesec}
\usepackage{tikz}
\usepackage{amssymb}
\usepackage{amsmath} 
\usepackage{gensymb}



\renewcommand{\rmdefault}{lmss} % Latin Modern Sans Serif
%https://www.overleaf.com/learn/latex/Font_typefaces