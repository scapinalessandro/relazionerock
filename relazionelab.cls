%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RelazioneLab}[2023/02/07 LaTeX Templates Journal Article Class v2.0]
\usepackage{etoolbox} % Required for conditional logic and easily changing commands

\newtoggle{unnumberedsections} % Create toggle for a class option
\settoggle{unnumberedsections}{false} % Default value for the class option
\DeclareOption{unnumberedsections}{\settoggle{unnumberedsections}{true}} % Set the class option toggle if the class option was used in the template

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any extra options specified to the base class
\ProcessOptions\relax % Process class options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

\usepackage{graphicx} % Required for including images
\usepackage{float} % Enable [H] option for positioning figures
\usepackage{subcaption} % Enable subplots
\usepackage{pgfplots} % Enable plotting graphs
\usepackage{gensymb} % General symbols
\usepackage{multicol}
\usepackage{circuitikz}
\usepackage{karnaugh-map}
\usepackage[bottom]{footmisc}
\usepackage[italian]{babel}

\graphicspath{{imgs/}{./}} % Specifies where to look for included images (trailing slash required)
\pgfplotsset{compat=1.9} % Set plot size and compatability

\usepackage[document,bottom]{ragged2e}
\setlength{\footnotemargin}{6pt} % Horizontal space between the footnote marker and text

\newcommand{\negate}[1]{\,\overline{\!{#1}}} % overline short italic
\ctikzset{logic ports=ieee}
\tikzset{small inline not/.style={inline not, /tikz/circuitikz/logic ports/scale=0.6}, small not/.style={not port, /tikz/circuitikz/logic ports/scale=0.6}}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{newtxtext,newtxmath} % Times New Roman font

\usepackage{microtype} % Slightly tweak font spacing for aesthetics

% Remove the mathpazo package
%\usepackage[sc]{mathpazo} % Use the Palatino font

\linespread{1} % Modified line spacing originally 1.13

%----------------------------------------------------------------------------------------
%	MARGINI
%----------------------------------------------------------------------------------------

\usepackage[
	top=2.5cm, % Top margin
	bottom=2.5cm, % Bottom margin
 	left=2cm, % Left margin originally 2.5
	right=2cm, % Right margin originally 2.5
	footskip=1.11cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.5cm, % Space from the top margin to the baseline of the header
	columnsep=0.4cm, % Modified column separation originally 0.75
]{geometry}

%----------------------------------------------------------------------------------------
%	HEADERS AND FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Required for customizing headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0.5pt} % Top horizontal rule thickness

\fancyhf{} % Clear default headers/footers

\fancyhead[L]{\small{\headerleft}} % Left page header
\fancyhead[R]{\small{\headerright}} % Right page header

\fancyfoot[C]{\small{– \thepage\ –}} % Centered "– page number –" footer

%----------------------------------------------------------------------------------------
%	TITLE SECTION CUSTOMIZATION
%----------------------------------------------------------------------------------------

\usepackage{titling} % Required for customizing the title section

\setlength{\droptitle}{-3\baselineskip} % Move the title up

\pretitle{\begin{flushleft}\fontsize{16pt}{16pt}\selectfont\bfseries} % Article title pre-formatting
\posttitle{\end{flushleft}} % Article title post-formatting

\preauthor{\begin{flushleft}\vspace{-3pt}\fontsize{12pt}{12pt}\selectfont} % Author name pre-formatting
\postauthor{\vspace{-7pt}\end{flushleft}} % Author name post-formatting

\predate{\begin{flushleft}\fontsize{9pt}{10pt}\selectfont} % Date and affiliation pre-formatting
\postdate{\vspace{-1pt}\end{flushleft}} % Date and affiliation post-formatting

\patchcmd{\maketitle}{{plain}}{{fancy}}{}{} % Use the "fancy" page style for the first page
\AtBeginDocument{\thispagestyle{fancy}} % Apply the "fancy" page style to the first page

%----------------------------------------------------------------------------------------
%	LISTS
%----------------------------------------------------------------------------------------

\usepackage{enumitem} % Required for list customization

\setlist{noitemsep} % Customize spacing around and inside lists

%----------------------------------------------------------------------------------------
%	CUSTOM COMMANDS
%----------------------------------------------------------------------------------------

\newcommand{\headerleft}[1]{\renewcommand{\headerleft}{#1}}
\newcommand{\headerright}[1]{\renewcommand{\headerright}{#1}}

\newcommand{\footertext}[1]{\renewcommand{\footertext}{#1}}
