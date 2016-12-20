% Klasa dokumentu do składania esejów z przedmiotu "Kultura
% Bezpieczeństwa Komputerowego 2016".
% Wszelkie błędy znalezione w poniższym kodzie oraz sugestie rozszerzeń
% należy zgłaszać prowadzącemu.

\ProvidesClass{kbk}[2016/10/22]

\def\@essaylang{0}
\DeclareOption{polish}{\def\@essaylang{0}}
\DeclareOption{english}{\def\@essaylang{1}}
\DeclareOption{russian}{\def\@essaylang{2}}
\ProcessOptions

\LoadClass[a4paper,11pt,twoside]{article}

\ifcase\@essaylang
   \RequirePackage[T2A,OT4]{fontenc}
   \RequirePackage[russian,english,main=polish]{babel}
   \frenchspacing
\or
   \RequirePackage[T2A,OT4]{fontenc}
   \RequirePackage[russian,polish,main=english]{babel}
\or
   \RequirePackage[OT4,T2A]{fontenc}
   \RequirePackage[polish,english,main=russian]{babel}
   \frenchspacing
\fi
\RequirePackage[utf8x]{inputenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[absolute]{textpos}

\geometry{%
   hdivide={1in,*,1in},
   vdivide={1in,*,1in},
   nofoot,
   headheight=14pt}

\ifcase\@essaylang
   \def\@copyrighttext{%
      Instytut Informatyki Uniwersytetu Wrocławskiego, 2016–2017\\
      \hspace*{55pt}Ten utwór jest dostępny na licencji Creative Commons
         CC BY-ND 4.0\\
      \raisebox{0pt}[0pt][0pt]{%
         \includegraphics[width=50pt]{ccbynd.pdf}}\hskip5pt%
         \texttt{https://creativecommons.org/licenses/by-nd/4.0/}}
\or
   \def\@copyrighttext{%
      University of Wrocław, Institute of Computer Science, 2016–2017\\
      \hspace*{55pt}This work is licensed under a Creative Commons
         CC BY-ND 4.0\\
      \raisebox{0pt}[0pt][0pt]{%
         \includegraphics[width=50pt]{ccbynd.pdf}}\hskip5pt%
         \texttt{https://creativecommons.org/licenses/by-nd/4.0/}}
\or
   \def\@copyrighttext{%
      Институт Информатики Вроцлавского Университета, 2016–2017\\
      Эссе написано по курсу \textit{Культура компьютерной безопасности}\\
      \hspace*{55pt}Это произведение доступно по лицензии Creative
         Commons CC BY-ND 4.0\\
      \raisebox{0pt}[0pt][0pt]{%
         \includegraphics[width=50pt]{ccbynd.pdf}}\hskip5pt%
         \texttt{https://creativecommons.org/licenses/by-nd/4.0/}}
\fi

\let\@mymaketitle\maketitle
\def\maketitle{%
   \ifx\@headertitle\undefined
      \let\@headertitle\@title
   \fi
   \let\@headerauthor\@author
   \@mymaketitle
   \thispagestyle{empty}%
   \enlargethispage{-64pt}%
   \begin{textblock*}{451.27pt}(72pt,728pt)\footnotesize\sffamily
      \noindent\rule{\textwidth}{.4pt}\\
      \@copyrighttext
   \end{textblock*}}
\def\titlerunning#1{\gdef\@headertitle{#1}}
\date{}
\def\email#1{\date{\texttt{#1}}}

\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyhead[LO]{\textsf{\textsl{\@headertitle}}}
\fancyhead[RO]{\textsf{\thepage}}
\fancyhead[LE]{\textsf{\thepage}}
\fancyhead[RE]{\textsf{\@headerauthor}}

\def\cyrfont{\fontencoding{T2A}\selectfont}
\def\latinfont{\fontencoding{OT4}\selectfont}

\endinput

% vim: ft=tex
