\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anablatt}
    [misc analysis class for exercise sheets]

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

\RequirePackage{amsthm}
\RequirePackage{thmtools}

\RequirePackage[left=2cm, right=2cm, top=2cm]{geometry}

\allowdisplaybreaks

\setlength{\parindent}{0pt}

\setkomafont{paragraph}{\normalfont\itshape}

\declaretheoremstyle[%
  spaceabove=0,%
  spacebelow=6pt,%
  headfont=\normalfont\itshape,%
  postheadspace=1em,%
  headpunct={}
]{mystyle}

\declaretheorem[name={Behauptung}, style=mystyle, unnumbered]{theorem}
\declaretheorem[name={Lemma}, style=mystyle]{lemma}
\declaretheorem[name={Voraussetzung}, style=mystyle, unnumbered]{precondition}
\let\proof\oldproof
\declaretheorem[name={Beweis}, style=mystyle, qed=\qedsymbol, unnumbered]{proof}

\let\phi\varphi
\let\epsilon\varepsilon
\let\bar\overline
\let\olddd\dd
\def\dd{\,\olddd}

\def\R{\ensuremath{\mathbb{R}} }
\def\N{\ensuremath{\mathbb{N}} }
\def\L{\ensuremath{\mathcal{L}} }

\newcounter{taski}
\newcounter{taskii}[taski]
\newcounter{taskiii}[taskii]

\newcommand{\task}{\stepcounter{taski}\textbf{Aufgabe \arabic{taski}}\quad}
\newcommand{\ttask}{\stepcounter{taskii}\textbf{(\alph{taskii})}\quad}
\newcommand{\tttask}{\stepcounter{taskiii}\quad(\roman{taskiii})\quad}

\newcommand{\blattno}[1]{\global\let\blattnumber#1}
\newcommand{\makeheader}{
\begin{flushright}
    Kamal Abdellatif\\Ellen Bräutigam\\
    Mi 14:00
\end{flushright}
\vspace{-4.5em}
\begin{center}
    \textbf{Höhere Analysis Abgabeblatt \blattnumber}\\[2em]
    \begingroup
	\def\arraystretch{2}
    \begin{tabular}{|l|l|l||p{18mm}|}
        \hline
         Aufgabe 1 & Aufgabe 2 & Aufgabe 3 & Summe~ \\
         \hline &&&\\
         \hline  
    \end{tabular}
    \endgroup
\end{center}
}

\newcommand{\defimpl}[1]{\stackrel{\text{Def.}\;#1}{\Longrightarrow}}
\newcommand{\defImpl}[1]{\stackrel{\text{Def.}\;#1}{\Longleftrightarrow}}
\newcommand{\txtimpl}[1]{\stackrel{\text{#1}}{\Longrightarrow}}
\newcommand{\txtImpl}[1]{\stackrel{\text{#1}}{\Longleftrightarrow}}

\newcommand{\range}[1]{\ensuremath{\left\llbracket #1 \right\rrbracket}}

\DeclareMathOperator*{\argmin}{arg\,min}
