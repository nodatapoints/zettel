\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{theoblatt}
    [class for physics exercise sheets]

\LoadClass[a4paper, 12pt]{scrartcl}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{physics}
\RequirePackage{framed}
\RequirePackage{float}
\RequirePackage{mathtools}
\RequirePackage{marvosym}
\RequirePackage{mathrsfs}
\RequirePackage{enumerate}
\RequirePackage{stmaryrd}

\RequirePackage{tikz}
\RequirePackage{chngcntr}

\RequirePackage[left=2cm, right=2cm, top=2cm]{geometry}

\allowdisplaybreaks
\setlength{\parindent}{0pt}

\setkomafont{paragraph}{\normalfont\itshape}

\let\phi\varphi
\let\epsilon\varepsilon
\let\bar\overline
\let\olddd\dd
\def\dd{\,\olddd}

\newcounter{taski}
\newcounter{taskii}[taski]
\newcounter{taskiii}[taskii]

\newcommand{\task}{\stepcounter{taski}\textbf{Exercise \arabic{taski}}\quad}
\newcommand{\ttask}{\stepcounter{taskii}\textbf{\arabic{taski}.\arabic{taskii})}\quad}
\newcommand{\tttask}{\stepcounter{taskiii}\quad(\roman{taskiii})\quad}

\newcommand{\blattno}[1]{\global\let\bnumber#1}
\newcommand{\blattauthor}[1]{\global\def\bauthor{#1}}
\newcommand{\makeheader}{
    \parbox{.25\textwidth}{\today}
    \parbox{.5\textwidth}{\centering\bfseries PTP 4 Exercise Sheet \bnumber}
    \parbox{.25\textwidth}{\hfill \bauthor}
    \\[1em]
%   \begingroup
%   \def\arraystretch{2}
%   \begin{tabular}{|l|l|l||p{18mm}|}
%       \hline
%        Aufgabe 1 & Aufgabe 2 & Aufgabe 3 & Summe~ \\
%        \hline &&&\\
%        \hline  
%   \end{tabular}
%   \endgroup
}
