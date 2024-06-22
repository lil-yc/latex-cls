% Last updated: Jan 8 2024
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comicscript}[2023/11/23 Comic Script Class] 

\LoadClass{article}

\usepackage{hyperref}
\usepackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\renewcommand{\rmdefault}{lmss} % Latin Modern Sans Serif

\newcounter{sectionline}[section]
\renewcommand{\thesectionline}{\thesection.\arabic{sectionline}}

\newcommand{\panel}{%
  \refstepcounter{sectionline}%
  \par\noindent\textbf{\thesectionline}\enspace
}

\let\orig@section\section
\renewcommand{\section}{%
  \setcounter{sectionline}{0}
  \orig@section
}

\AtBeginDocument{%
  \maketitle
  \tableofcontents
}


\endinput

