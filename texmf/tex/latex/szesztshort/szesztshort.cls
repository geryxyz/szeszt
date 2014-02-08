\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{szesztshort}
[2013/18/05 v1.0tinco szeszt]
\LoadClass[11pt]{article}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhead[L]{}
    \fancyhead[C]{}
    \fancyhead[R]{}
    \fancyfoot[L]{}
    \fancyfoot[C]{}
    \fancyfoot[R]{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancyhead[L]{}
\fancyhead[C]{}
\fancyhead[R]{}
\fancyfoot[L]{}
\fancyfoot[C]{}
\fancyfoot[R]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}

\RequirePackage{szeszt}
\RequirePackage{calligra}
\RequirePackage{cantarell}
\RequirePackage{caption}
\captionsetup[figure]{labelformat=empty}
\RequirePackage{booktabs}

\RequirePackage{calc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{ifpdf}
\ifpdf %if using pdfLaTeX in PDF mode
    \DeclareGraphicsExtensions{.pdf,.png,.jpg,.jpeg,.mps}
\else %if using LaTeX or pdfLaTeX in DVI mode
    \DeclareGraphicsExtensions{.eps,.bmp}
    \DeclareGraphicsRule{.emf}{bmp}{}{}% declare EMF filename extension
    \DeclareGraphicsRule{.png}{bmp}{}{}% declare PNG filename extension
\fi
\RequirePackage{xcolor}
\newsavebox{\titleright}
\geometry{hmargin=2cm,top=1cm,nofoot,nohead}
\setlength{\leftskip}{0pt plus.5fil}
\setlength{\rightskip}{0pt plus-.5fil}
\setlength{\parfillskip}{0pt plus1fil}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\renewcommand{\maketitle}{
    \begin{center}
        \textit{\@author}\vspace{1ex}\\
        {\hspace*{-2.5ex}\Huge\calligra\textcolor{black!25!white}{\@title}}\vspace{-3.5ex}\\
        \textbf{\textsf{\LARGE\@title}}\vspace{1.5ex}\\
        \textit{\@date}\vspace*{4ex}\\
    \end{center}
}
\newcommand{\maketitlenodate}{
    \begin{center}
        \textit{\@author}\vspace{1ex}\\
        {\hspace*{-2.5ex}\Huge\calligra\textcolor{black!25!white}{\@title}}\vspace{-3.5ex}\\
        \textbf{\textsf{\LARGE\@title}}\vspace*{4ex}\\
    \end{center}
}
\newcommand{\szesztdividingsection}[1]{
    \begin{center}
        {\hspace*{-2.5ex}\huge\calligra\textcolor{black!25!white}{#1}}\vspace{-2.5ex}\\
        \textbf{\textsf{\large{}#1}}\vspace{8ex}\\
    \end{center}
}
\endinput