\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{szesztarticle}
[2013/18/05 v1.0tinco szeszt]
\LoadClass{article}
\RequirePackage{fancyhdr}

\RequirePackage{szeszt}
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
\bemargingood{1cm}{20mm}
\renewcommand{\maketitle}{
    \szesztmaketitle
}

\endinput