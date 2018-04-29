\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{kardnotes}[2018/04/27 Kardiologiska kliniken notes]

\LoadClass[a4paper, 10pt]{article}

\RequirePackage{comment}
\RequirePackage{fullpage}
\RequirePackage[swedish]{babel} 
\RequirePackage[utf8]{inputenc} 
\RequirePackage[T1]{fontenc}        % Attempt to make pdf copy pastable
\RequirePackage{graphicx} 
\graphicspath{{./img/}}
\RequirePackage{multicol} 
\RequirePackage{float} 
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{pdfpages}
\RequirePackage[headheight=80pt, headsep=1cm, top=4cm]{geometry}
\RequirePackage{lastpage}

\RequirePackage[framemethod=TikZ]{mdframed}

\RequirePackage[yyyymmdd]{datetime}
\renewcommand{\dateseparator}{-}

\newcommand{\attendees}[1]{\newcommand{\@kard@attendees}{#1}}
\newcommand{\group}[1]{\newcommand{\@kard@group}{#1}}

\renewcommand{\and}{ \\ & }

\pagestyle{fancy}
% \fancyhf{} % Clear header and footer

\lhead{\includegraphics[scale=0.5]{image.png}}
\rhead{Mötesprotokoll \@date\\
\@kard@group\\
Cardiologiska kliniken, Falu lasarett\\}
\cfoot{Sida \thepage\ av \pageref{LastPage}}

% We do not want sections to be numbered.
\setcounter{secnumdepth}{-2}

\newcommand{\@kard@maketitle}{\maketitle}
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    % \begin{minipage}[t]{\textwidth}
        \begin{mdframed}
            \begin{tabular}[t]{ll}
                Närvarande:      & \@kard@attendees \\
                                 & \\
                Protokollförare: & \@author
            \end{tabular}
        \end{mdframed}
    % \end{minipage}
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\@subtitle\@empty
    \global\let\subtitle\relax
    \global\let\author\relax
    \global\let\and\relax
    \@kard@maketitle
}
