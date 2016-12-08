%%
%% This is file `thesistu.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thesistu.dtx  (with options: `class')
%% 
%% This is a generated file.
%% Copyright (C) 2014-2016 by Thomas Auzinger <thomas@auzinger.name>
%% Copyright (C) 2016-     by Maximilian Hoheiser <maximilian.hoheiser@student.tuwien.ac.at>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Maximilian Hoheiser.
%% 
%% This work consists of the files thesistu.dtx and thesistu.ins
%% and the derived file thesistu.cls.
%% This work also consists of the file description.tex.
%% 
%% thesistu.dtx
%% Copyright (C) 2016-     by Maximilian Hoheiser <maximilian.hoheiser@student.tuwien.ac.at>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{thesistu}
    [2016/09/01 v0.1 TU Wien Faculty of Physics thesis template]
%% \newcommand{\issue}[1]{\href{https://gitlab.cg.tuwien.ac.at/auzinger/thesistu/issues/#1}{Issue \#{}#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{memoir}%
}%
\ProcessOptions\relax
\LoadClass[a4paper,11pt]{memoir}%
\chapterstyle{veelo}%
\RequirePackage[scaled]{helvet}%
\RequirePackage{lmodern}%
\RequirePackage{courier}%
\RequirePackage[T1]{fontenc}%
\RequirePackage[english,naustrian]{babel}%
\RequirePackage[nodayofweek]{datetime}%
\RequirePackage{geometry}%
\RequirePackage{calc}%
\RequirePackage{etoolbox}%

\RequirePackage{graphicx}%
\graphicspath{{graphics/}}%
\newcommand{\@namexdef}[1]{\expandafter\xdef\csname#1\endcsname}%
\newcommand{\todo}[1]{{\color{red}\textbf{TODO: {#1}}}}
\newcommand{\ifestrequal}[4]{%
  \begingroup
    \edef\thesistu@tempa{{#1}}%
    \edef\thesistu@tempb{{#2}}%
    \expandafter\expandafter\expandafter\ifstrequal
      \expandafter\thesistu@tempa\thesistu@tempb{#3}{#4}%
  \endgroup
}%
\newcommand{\thesistu@HUGE}{\fontsize{30}{34}\selectfont}%
\newcommand{\thesistu@huge}{\fontsize{20}{23}\selectfont}%
\newcommand{\thesistu@LARGE}{\fontsize{17}{22}\selectfont}%
\newcommand{\thesistu@Large}{\fontsize{14}{18}\selectfont}%
\newcommand{\thesistu@large}{\fontsize{12}{14.5}\selectfont}%
\newcommand{\thesistu@normalsize}{\fontsize{11}{13.6}\selectfont}%
\newenvironment{SFFont}[1]{%
  \begingroup
    \sffamily
    \global\let\thesistu@f@family@tmp=\f@family
  \endgroup
  \renewcommand{\sfdefault}{#1}%
  \ifdefstrequal{\f@family}{\thesistu@f@family@tmp}{\sffamily}{}%
}{%
  \renewcommand{\sfdefault}{\thesistu@f@family@tmp}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setdate}[3]{%
  \newdate{thesistu@date@signing}{#1}{#2}{#3}%
}%
\newcommand{\thesistu@def@data}[2]{%
  \@namedef{thesistu@data@#1@def}{}%
  \@namedef{thesistu@data@#1}{#2}%
}%
\newcommand{\thesistu@def@data@invalid}[2]{%
  \@namedef{thesistu@data@#1@error}{%
    \ClassError{thesistu}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{thesistu@data@#1}{\@nameuse{thesistu@data@#1@error}}%
}%
\newcommand{\CreateData}[1]{%
  \@namedef{set#1}##1{%
    \thesistu@def@data{#1}{##1}%
  }%
  \thesistu@def@data@invalid{#1}{\string\set#1}%
}%
\newcommand{\thesistu@person@male}{male}%
\newcommand{\thesistu@person@female}{female}%
\newcommand{\ifmale}[2]{%
  \ifcsstring{thesistu@person@#1@gender}{\thesistu@person@male}{#2}{}%
}%
\newcommand{\iffemale}[2]{%
  \ifcsstring{thesistu@person@#1@gender}{\thesistu@person@female}{#2}{}%
}%
\newcommand{\thesistu@def@person}[5]{%
  \@namedef{thesistu@person@#1@def}{}%
  \@namedef{thesistu@person@#1@pretitle}{#2}%
  \@namedef{thesistu@person@#1@name}{#3}%
  \@namedef{thesistu@person@#1@posttitle}{#4}%
  \ifdefstring{\thesistu@person@male}{#5}{%
    \@namedef{thesistu@person@#1@gender}{\thesistu@person@male}%
  }{}%
  \ifdefstring{\thesistu@person@female}{#5}{%
    \@namedef{thesistu@person@#1@gender}{\thesistu@person@female}%
  }{}%
  \ifstrempty{#3}{%
    \ifstrempty{#2}{%
      \@namedef{thesistu@person@#1@fullname}{#4}%
    }{%
      \ifstrempty{#4}{%
        \@namedef{thesistu@person@#1@fullname}{#2}%
      }{%
        \@namedef{thesistu@person@#1@fullname}{#2 #4}%
      }%
    }%
  }{%
    \ifstrempty{#2}{%
      \ifstrempty{#4}{%
        \@namedef{thesistu@person@#1@fullname}{#3}%
      }{%
        \@namedef{thesistu@person@#1@fullname}{#3, #4}%
      }%
    }{%
      \ifstrempty{#4}{%
        \@namedef{thesistu@person@#1@fullname}{#2 #3}%
      }{%
        \@namedef{thesistu@person@#1@fullname}{#2 #3, #4}%
      }%
    }%
  }%
}%
\newcommand{\thesistu@def@person@invalid}[2]{%
  \@namedef{thesistu@person@#1@error}{%
    \ClassError{thesistu}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{thesistu@person@#1@name}{%
    \@nameuse{thesistu@person@#1@error}}%
  \@namedef{thesistu@person@#1@pretitle}{%
    \@nameuse{thesistu@person@#1@error}}%
  \@namedef{thesistu@person@#1@posttitle}{%
    \@nameuse{thesistu@person@#1@error}}%
  \@namedef{thesistu@person@#1@gender}{%
    \@nameuse{thesistu@person@#1@error}}%
  \@namedef{thesistu@person@#1@fullname}{%
    \@nameuse{thesistu@person@#1@error}}%
}%
\newcommand{\CreatePerson}[1]{%
  \@namedef{set#1}##1##2##3##4{%
    \thesistu@def@person{#1}{##1}{##2}{##3}{##4}%
  }%
  \thesistu@def@person@invalid{#1}{\string\set#1}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\AddLanguage}[1]{%
  \@namedef{KV@thesistu@#1}##1{%
    \@namedef{thesistu@current@#1}{##1}%
  }%
  \@nameuse{KV@thesistu@#1}{}%
  \ifundef{\thesistu@allocate@polylingual}{%
    \newcommand{\thesistu@allocate@polylingual}[1]{\@empty}%
  }{}%
  \@namelet{thesistu@allocate@polylingual@#1}%
    \thesistu@allocate@polylingual
  \renewcommand{\thesistu@allocate@polylingual}[1]{%
    \@nameuse{thesistu@allocate@polylingual@#1}{##1}%
    \@namexdef{thesistu@##1@#1}{%
      \ifcsempty{thesistu@current@#1}{%
        \ifdraftdoc{%
          [Draft: No `#1' text for polylingual `##1'.]%
        }\else{%
          \relax
        }\fi
      }{%
        \@nameuse{thesistu@current@#1}%
      }%
    }%
  }%
  \ifundef{\thesistu@selectlanguage@polylingual}{%
      \newcommand{\thesistu@selectlanguage@polylingual}[1]{\@empty}%
  }{}%
  \@namelet{thesistu@selectlanguage@polylingual@#1}%
    \thesistu@selectlanguage@polylingual
  \renewcommand{\thesistu@selectlanguage@polylingual}[1]{%
    \@nameuse{thesistu@selectlanguage@polylingual@#1}{##1}%
    \ifdefstring{\languagename}{#1}{\@nameuse{thesistu@##1@#1}}{}%
  }%
}%
\newcommand{\CreatePolylingual}[2][]{%
  \begingroup
    \setkeys{thesistu}{#1}%
    \thesistu@allocate@polylingual{#2}%
  \endgroup
  \@namedef{thesistu@polylingual@#2}{%
    \thesistu@selectlanguage@polylingual{#2}}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\thesistu@thesis@basetype@undergraduate}{%
  thesistu@undergraduate}%
\newcommand{\thesistu@thesis@basetype@graduate}{%
  thesistu@graduate}%
\newcommand{\ifundergraduate}[1]{%
  \ifestrequal{\thesistu@thesis@basetype}{%
    \thesistu@thesis@basetype@undergraduate
  }{#1}{}%
}%
\newcommand{\ifgraduate}[1]{%
  \ifestrequal{\thesistu@thesis@basetype}{%
    \thesistu@thesis@basetype@graduate
  }{#1}{}%
}%
\newcommand{\thesistu@thesis@doctortype@doctor}{%
  thesistu@doctor}%
\newcommand{\thesistu@thesis@doctortype@phd}{%
  thesistu@phd}%
\newcommand{\ifdoctor}[1]{%
  \ifestrequal{\thesistu@thesis@doctortype}{%
    \thesistu@thesis@doctortype@doctor
  }{#1}{}%
}%
\newcommand{\ifphd}[1]{%
  \ifestrequal{\thesistu@thesis@doctortype}{%
    \thesistu@thesis@doctortype@phd
  }{#1}{}%
}%
\newcommand{\thesistu@thesis@basetype}{%
  \ClassError{thesistu}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesistu@thesis@doctortype}{%
  \ClassError{thesistu}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesistu@polylingual@degreename}{%
  \ClassError{thesistu}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesistu@polylingual@thesisname}{%
  \ClassError{thesistu}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesistu@thesis@bachelor}{bachelor}%
\newcommand{\thesistu@thesis@master}{master}%
\newcommand{\thesistu@thesis@doctor}{doctor}%
\newcommand{\thesistu@thesis@phd}{phd-school}%
\newcommand{\@setthesisname}[1]{%
  \renewcommand{\thesistu@polylingual@thesisname}{#1}}%
\newcommand{\@setdegreename}[1]{%
  \renewcommand{\thesistu@polylingual@degreename}{#1}}%
\newcommand{\@setgendereddegreename}[2]{%
  \ifmale{author}{\@setdegreename{#1}}%
  \iffemale{author}{\@setdegreename{#2}}%
}%
\newcommand{\setthesis}[1]{%
  \ifdefstring{\thesistu@thesis@bachelor}{#1}{%
    \renewcommand{\thesistu@thesis@basetype}{%
      \thesistu@thesis@basetype@undergraduate}%
    \@setthesisname{\thesistu@polylingual@BACHELORTHESIS}%
    \@setdegreename{\thesistu@polylingual@Bdeg}%
  }{}%
  \ifdefstring{\thesistu@thesis@master}{#1}{%
    \renewcommand{\thesistu@thesis@basetype}{%
      \thesistu@thesis@basetype@undergraduate}%
    \@setthesisname{%
      \ClassError{thesistu}{No \string\setmasterdegree \space issued}{%
        Set masterdegree with \string\setmasterdegree.}%
    }%
    \@setdegreename{%
      \ClassError{thesistu}{No \string\setmasterdegree \space issued}{%
        Set master degree with \string\setmasterdegree.}%
    }%
  }{}%
  \ifdefstring{\thesistu@thesis@doctor}{#1}{%
   \renewcommand{\thesistu@thesis@basetype}{%
     \thesistu@thesis@basetype@graduate}%
   \renewcommand{\thesistu@thesis@doctortype}{%
     \thesistu@thesis@doctortype@doctor}%
   \@setthesisname{\thesistu@polylingual@DOCTORTHESIS}%
   \@setdegreename{%
     \ClassError{thesistu}{No \string\setdoctordegree \space issued}{%
       Set doctor degree with \string\setdoctordegree.}%
   }%
  }{}%
  \ifdefstring{\thesistu@thesis@phd}{#1}{%
   \renewcommand{\thesistu@thesis@basetype}{%
     \thesistu@thesis@basetype@graduate}%
   \renewcommand{\thesistu@thesis@doctortype}{%
     \thesistu@thesis@doctortype@phd}%
   \@setthesisname{\thesistu@polylingual@PHDTHESIS}%
   \@setdegreename{\thesistu@polylingual@Pdeg}%
  }{}%
}%
\newcommand{\thesistu@thesis@mdeg@dipl}{dipl.}%
\newcommand{\thesistu@thesis@mdeg@master}{master}%
\newcommand{\thesistu@thesis@mdeg@rernat}{rer.nat.}%
\newcommand{\thesistu@thesis@mdeg@rersocoec}{rer.soc.oec.}%
\newcommand{\setmasterdegree}[1]{%
  \ifdefstring{\thesistu@thesis@mdeg@dipl}{#1}{%
    \@setthesisname{\thesistu@polylingual@DIPLOMATHESIS}%
    \@setgendereddegreename{%
      \thesistu@polylingual@MdegDiplMale
    }{%
      \thesistu@polylingual@MdegDiplFemale
    }%
  }{}%
  \ifdefstring{\thesistu@thesis@mdeg@master}{#1}{%
    \@setthesisname{\thesistu@polylingual@MASTERTHESIS}%
    \@setdegreename{\thesistu@polylingual@MdegMaster}%
  }{}%
  \ifdefstring{\thesistu@thesis@mdeg@rernat}{#1}{%
    \@setthesisname{\thesistu@polylingual@MASTERTHESIS}%
    \@setgendereddegreename{%
      \thesistu@polylingual@MdegRerNatMale
    }{%
      \thesistu@polylingual@MdegRerNatFemale
    }%
  }{}%
  \ifdefstring{\thesistu@thesis@mdeg@rersocoec}{#1}{%
    \@setthesisname{\thesistu@polylingual@MASTERTHESIS}%
    \@setgendereddegreename{%
      \thesistu@polylingual@MdegRerSocOecMale
    }{%
      \thesistu@polylingual@MdegRerSocOecFemale
    }%
  }{}%
}%
\newcommand{\thesistu@thesis@ddeg@rernat}{rer.nat.}%
\newcommand{\thesistu@thesis@ddeg@techn}{techn.}%
\newcommand{\thesistu@thesis@ddeg@rersocoec}{rer.soc.oec.}%
\newcommand{\setdoctordegree}[1]{%
  \ifdefstring{\thesistu@thesis@ddeg@rernat}{#1}{%
    \@setgendereddegreename{%
      \thesistu@polylingual@DdegRerNatMale
    }{%
      \thesistu@polylingual@DdegRerNatFemale
    }%
  }{}%
  \ifdefstring{\thesistu@thesis@ddeg@techn}{#1}{%
    \@setgendereddegreename{%
      \thesistu@polylingual@DdegTechnMale
    }{%
      \thesistu@polylingual@DdegTechnFemale
    }%
  }{}%
  \ifdefstring{\thesistu@thesis@ddeg@rersocoec}{#1}{%
    \@setgendereddegreename{%
      \thesistu@polylingual@DdegRerSocOecMale
    }{%
      \thesistu@polylingual@DdegRerSocOecFemale
    }%
  }{}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\CreateData{address}%
\CreateData{regnumber}%
\CreateData{unizipcode}%
\CreateData{unitelnr}%
\CreateData{unistreet}%
\CreateData{unicity}%
\CreateData{uniwebsite}
\CreateData{firstreviewerdata}%
\CreateData{secondreviewerdata}%
\CreateData{logo}%
\CreateData{header}%
\CreatePerson{author}%
\CreatePerson{advisor}%
\CreatePerson{secondadvisor}%
\CreatePerson{firstassistant}%
\CreatePerson{secondassistant}%
\CreatePerson{thirdassistant}%
\CreatePerson{firstreviewer}%
\CreatePerson{secondreviewer}%
\AddLanguage{english}%
\AddLanguage{naustrian}%
\CreatePolylingual[
  english=Advisor,
  naustrian=Betreuung]{Advisor}%
\CreatePolylingual[
  english=Second advisor]{Secondadvisor}%
\CreatePolylingual[
  english=submitted in partial fulfillment of the requirements
    for the degree of,
  naustrian=zur Erlangung des akademischen Grades]{submission}%
\CreatePolylingual[
  english=in,
  naustrian=im Rahmen des Studiums]{in}%
\CreatePolylingual[
  english=within the]{within}%
\CreatePolylingual[
  english=Vienna PhD School of Informatics]{School}%
\CreatePolylingual[
  english=by,
  naustrian=eingereicht von]{by}%
\CreatePolylingual[
  english=Registration Number,
  naustrian=Matrikelnummer]{Registrationnumber}%
\CreatePolylingual[
  english=to the Faculty of ,
  naustrian=an der Fakult\"at f\"ur ]{facultytext}%
\CreatePolylingual[
  english=at the ,
  naustrian=der ]{universitytext}%
\CreatePolylingual[
  english= at the Institution of,
  naustrian= am Institut f\"ur]{instituttext}%
 % \changes{v2.1}{2016/12/08}
\CreatePolylingual[
  english= from,
  naustrian= aus]{lecturetext}%
\CreatePolylingual[
  english=Assistance,
  naustrian=Mitwirkung]{Assistance}%
\CreatePolylingual[
  english=The dissertation has been reviewed by:,
  naustrian=Diese Dissertation haben begutachtet:]{Reviewed}%
\CreatePolylingual[
  english=External reviewers:]{Reviewers}%
\CreatePolylingual[
  english=Vienna,
  naustrian=Wien]{Place}%
\CreatePolylingual[
  english=Declaration of Authorship,
  naustrian=Erkl\"arung zur Verfassung der Arbeit]{StatementChapter}%
\CreatePolylingual[
  english={I hereby declare that I have written this Doctoral Thesis
    independently, that I have completely specified the utilized
    sources and resources and that I have definitely marked all parts
    of the work - including tables, maps and figures - which belong
    to other works or to the internet, literally or extracted, by
    referencing the source as borrowed.},
  naustrian={Hiermit erkl\"are ich, dass ich diese Arbeit
    selbst\"andig verfasst habe, dass ich die verwendeten Quellen
    und Hilfsmittel vollst\"andig angegeben habe und dass ich die
    Stellen der Arbeit -- einschlie{\ss}lich Tabellen, Karten und
    Abbildungen --, die anderen Werken oder dem Internet im Wortlaut
    oder dem Sinn nach entnommen sind, auf jeden Fall unter Angabe
    der Quelle als Entlehnung kenntlich gemacht habe.}]{Statement}%
\CreatePolylingual[
  english=Bachelor of Science,
  naustrian=Bachelor of Science]{Bdeg}%
\CreatePolylingual[
  english=Master of Science,
  naustrian=Master of Science]{MdegMaster}%
\CreatePolylingual[
  english=Diplom-Ingenieur,
  naustrian=Diplom-Ingenieur]{MdegDiplMale}%
\CreatePolylingual[
  english=Diplom-Ingenieurin,
  naustrian=Diplom-Ingenieurin]{MdegDiplFemale}%
\CreatePolylingual[
  english=Magister der Naturwissenschaften,
  naustrian=Magister der Naturwissenschaften]{MdegRerNatMale}%
\CreatePolylingual[
  english=Magistra der Naturwissenschaften,
  naustrian=Magistra der Naturwissenschaften]{MdegRerNatFemale}%
\CreatePolylingual[
  english=Magister der Sozial- und Wirtschaftswissenschaften,
  naustrian=Magister der Sozial- und Wirtschaftswissenschaften]{%
  MdegRerSocOecMale}%
\CreatePolylingual[
  english=Magistra der Sozial- und Wirtschaftswissenschaften,
  naustrian=Magistra der Sozial- und Wirtschaftswissenschaften]{%
  MdegRerSocOecFemale}%
\CreatePolylingual[
  english=Doktor der Naturwissenschaften,
  naustrian=Doktor der Naturwissenschaften]{DdegRerNatMale}%
\CreatePolylingual[
  english=Doktorin der Naturwissenschaften,
  naustrian=Doktorin der Naturwissenschaften]{DdegRerNatFemale}%
\CreatePolylingual[
  english=Doktor der Technischen Wissenschaften,
  naustrian=Doktor der Technischen Wissenschaften]{DdegTechnMale}%
\CreatePolylingual[
  english=Doktorin der Technischen Wissenschaften,
  naustrian=Doktorin der Technischen Wissenschaften]{DdegTechnFemale}%
\CreatePolylingual[
  english=Doktor der Sozial- und Wirtschaftswissenschaften,
  naustrian=Doktor der Sozial- und Wirtschaftswissenschaften]{%
  DdegRerSocOecMale}%
\CreatePolylingual[
  english=Doktorin der Sozial- und Wirtschaftswissenschaften,
  naustrian=Doktorin der Sozial- und Wirtschaftswissenschaften]{%
  DdegRerSocOecFemale}%
\CreatePolylingual[
  english=Doctor of Technical Sciences]{%
  Pdeg}%
\CreatePolylingual[
  english=BACHELOR'S THESIS,
  naustrian=BACHELORARBEIT]{BACHELORTHESIS}%
\CreatePolylingual[
  english=MASTER'S THESIS,
  naustrian=MASTERARBEIT]{MASTERTHESIS}%
\CreatePolylingual[
  english=DIPLOMA THESIS,
  naustrian=DIPLOMARBEIT]{DIPLOMATHESIS}%
\CreatePolylingual[
  english=DISSERTATION,
  naustrian=DISSERTATION]{DOCTORTHESIS}%
\CreatePolylingual[
  english=PhD THESIS]{PHDTHESIS}%
\newcommand{\settitle}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{Title}%
}%
\newcommand{\setsubtitle}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{Subtitle}%
}%
\newcommand{\setcurriculum}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{Curriculum}%
}%
\newcommand{\setuniversity}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{university}%
}%
\newcommand{\setfaculty}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{faculty}%
}%
\newcommand{\setinstitut}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{institut}%
}%
\newcommand{\setlecture}[2]{%
  \CreatePolylingual[english=#1,naustrian=#2]{lecture}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\newsetlength}[2]{%
  \newlength{#1}%
  \setlength{#1}{#2}%
}%
\newcommand{\thesistu@squarebullet}{\rule[0.47ex]{0.4ex}{0.4ex}}%
\newlength{\thesistu@tmp@parindent}%
\newlength{\thesistu@tmp@baselineskip}%
\newlength{\thesistu@tmp@parskip}%
\newcommand{\thesistu@savelayout}{%
  \setlength{\thesistu@tmp@parindent}{\parindent}%
  \setlength{\thesistu@tmp@baselineskip}{\baselineskip}%
  \setlength{\thesistu@tmp@parskip}{\parskip}%
}%
\newcommand{\thesistu@restorelayout}{%
  \setlength{\parindent}{\thesistu@tmp@parindent}%
  \setlength{\baselineskip}{\thesistu@tmp@baselineskip}%
  \setlength{\parskip}{\thesistu@tmp@parskip}%
}%
\newsetlength{\thesistu@header@placement}{-41.49731pt}%
\newsetlength{\thesistu@bar@width}{511bp}%
\newsetlength{\thesistu@bar@height}{47bp}%
\newsetlength{\thesistu@bar@pivot@x}{330.71bp}%
\newsetlength{\thesistu@bar@pivot@y}{25.31bp}%
\newsetlength{\thesistu@logo@height}{46bp}%
\newsetlength{\thesistu@logo@pivot@x}{4.57bp}%
\newsetlength{\thesistu@logo@pivot@y}{5.37bp}%
\newsetlength{\thesistu@logo@offset@height}{\thesistu@logo@height
  + \thesistu@bar@pivot@y - \thesistu@logo@pivot@y}%
\newsetlength{\thesistu@logo@offset@x}{-\thesistu@bar@width
  + \thesistu@bar@pivot@x - \thesistu@logo@pivot@x}%
\newsetlength{\thesistu@logo@offset@y}{
  - \thesistu@bar@pivot@y + \thesistu@logo@pivot@y}%
\newcommand{\thesistu@header@titlepage}{%
  \centering
  \begin{minipage}[b][\thesistu@logo@offset@height][t]{%
      \thesistu@bar@width
    }%
\includegraphics{\thesistu@data@header_header}%
    \hspace*{\thesistu@logo@offset@x}%
    \raisebox{\thesistu@logo@offset@y}{%
      \includegraphics[scale=1]{\thesistu@data@logo_logo}%
    }%
  \end{minipage}%
}%
\newcommand{\thesistu@footer@titlepage}{%
  \centering
  \begin{minipage}{\textwidth}%
    \centering\thesistu@normalsize\sffamily
    \thesistu@polylingual@university\\
    \thesistu@data@unizipcode\space \thesistu@data@unicity\space \thesistu@squarebullet\space
    \thesistu@data@unistreet\space \thesistu@squarebullet\space
    Tel.\space \thesistu@data@unitelnr\space \thesistu@squarebullet\space
    \thesistu@data@uniwebsite%
  \end{minipage}%
}%
\makepagestyle{thesistu@pagestyle@titlepage}%
\makerunningwidth{thesistu@pagestyle@titlepage}[\textwidth]{%
  \thesistu@bar@width}%
\makeheadposition{thesistu@pagestyle@titlepage}{%
  center}{center}{center}{center}%
\makeevenhead{thesistu@pagestyle@titlepage}{}{%
  \thesistu@header@titlepage}{}%
\makeoddhead{thesistu@pagestyle@titlepage}{}{%
  \thesistu@header@titlepage}{}%
\makefootrule{thesistu@pagestyle@titlepage}{%
  \thesistu@pagestyle@titlepagefootrunwidth}{0.5pt}{\footruleskip}%
\makeevenfoot{thesistu@pagestyle@titlepage}{}{%
  \thesistu@footer@titlepage}{}%
\makeoddfoot{thesistu@pagestyle@titlepage}{}{%
  \thesistu@footer@titlepage}{}%
\newsetlength{\thesistu@bigskipamount}{6mm}%
\newcommand{\thesistu@bigskip}{\vspace{\thesistu@bigskipamount}}%
\newcommand{\AdvisorBlock}{%
  \ifundergraduate{%
    \begin{minipage}[t][2.5cm][t]{\textwidth}%
      \thesistu@normalsize
      \begin{tabular}{@{}l@{ }l}%
        \thesistu@polylingual@Advisor: &
        \thesistu@person@advisor@fullname\\
        \ifdef{\thesistu@person@firstassistant@def}{%
          \thesistu@polylingual@Assistance: &
          \thesistu@person@firstassistant@fullname\\
        }{}%
        \ifdef{\thesistu@person@secondassistant@def}{%
          \ifundef{\thesistu@person@firstassistant@def}{%
            \thesistu@person@firstassistant@error
          }{%
            & \thesistu@person@secondassistant@fullname\\
          }%
        }{}%
        \ifdef{\thesistu@person@thirdassistant@def}{%
          \ifundef{\thesistu@person@firstassistant@def}{%
            \thesistu@person@firstassistant@error
          }{%
            \ifundef{\thesistu@person@secondassistant@def}{%
              \thesistu@person@secondassistant@error
            }{%
              & \thesistu@person@thirdassistant@fullname\\
           }%
         }%
       }{}%
      \end{tabular}%
    \end{minipage}%
  }%
  \ifgraduate{%
    \begin{minipage}[t][1.6cm][t]{\textwidth}%
      \thesistu@normalsize
      \thesistu@polylingual@Advisor:
      \thesistu@person@advisor@fullname
      \ifphd{%
        \ifdef{\thesistu@person@secondadvisor@def}{%
          \\
          \thesistu@polylingual@Secondadvisor:
          \thesistu@person@secondadvisor@fullname
        }{}%
      }%
    \end{minipage}\par%
  }%
}%
\newsetlength{\thesistu@signature@height}{25mm}%
\newsetlength{\thesistu@signature@width}{51mm}%
\newsetlength{\thesistu@placedate@width}{50mm}%
\newcommand{\SignatureFields}[3][n]{%
  {\thesistu@normalsize
    \ifstrequal{#1}{y}{%
      \begin{minipage}[b][\thesistu@signature@height]{%
          \thesistu@placedate@width
        }%
        \thesistu@polylingual@Place,
        \displaydate{thesistu@date@signing}\vspace*{\baselineskip}%
      \end{minipage}%
      \hfill
    }{}%
    \ifstrequal{#1}{n}{}{}%
    \ifstrequal{#1}{h}{%
      \hspace*{\thesistu@placedate@width}%
      \hfill
    }{}%
    \ifstrempty{#2}{%
      \hspace*{\thesistu@signature@width}%
      \hfill
    }{%
      \begin{minipage}[b][\thesistu@signature@height]{%
          \thesistu@signature@width
        }%
        \centering
        \rule{\thesistu@signature@width}{0.5pt}\\
        #2%
      \end{minipage}%
      \hfill
    }%
    \ifstrempty{#3}{}{%
      \begin{minipage}[b][\thesistu@signature@height]{%
          \thesistu@signature@width
        }%
        \centering
        \rule{\thesistu@signature@width}{0.5pt}\\
        #3%
      \end{minipage}%
    }%
  }%
}%

\newcommand{\ReviewerBlock}{%
  \ifgraduate{%
    \ifdoctor{%
      {\thesistu@normalsize
        \thesistu@polylingual@Reviewed\\
        \SignatureFields[h]{%
          \thesistu@person@firstreviewer@name
        }{%
          \thesistu@person@secondreviewer@name
        }%
      }%
    }%
    \ifphd{%
      {\thesistu@normalsize
        \thesistu@polylingual@Reviewers\\
        \thesistu@person@firstreviewer@name.
        \thesistu@data@firstreviewerdata.\\
        \thesistu@person@secondreviewer@name.
        \thesistu@data@secondreviewerdata.\\
      }%
    }%
  }%
}%
\newcommand{\SignatureBlock}{%
  \ifundergraduate{%
    {\thesistu@normalsize
      \SignatureFields[y]{%
        \thesistu@person@author@name
      }{%
        \thesistu@person@advisor@name
      }%
    }%
  }%
  \ifgraduate{%
    {\thesistu@normalsize
      \ifdoctor{%
        \SignatureFields[y]{}{%
          \thesistu@person@author@name
        }%
      }%
      \ifphd{%
        \SignatureFields[y]{%
          \thesistu@person@author@name
        }{%
          \thesistu@person@advisor@name
        }%
      }%
    }%
  }%
}%
\newcommand{\AddTitlePage}{
  \thispagestyle{thesistu@pagestyle@titlepage}%
  \newgeometry{%
    left=2.4cm,right=2.4cm,bottom=2.5cm,top=2cm,
    headsep=\thesistu@header@placement,
    head=2\thesistu@logo@offset@height
  }%
  \thesistu@savelayout
  \setlength{\parindent}{0pt}%
  \setlength{\baselineskip}{13.6pt}%
  \setlength{\parskip}{0pt plus 1pt}%
  \begin{SFFont}{phv}%
    \sffamily
    {\centering
      \vspace*{0.8cm}\par
      \begin{minipage}[t][5cm][b]{\textwidth}%
        \centering
        \thesistu@HUGE{\bfseries\thesistu@polylingual@Title}\\
        \bigskip
        \thesistu@huge{\bfseries
          \ifdef{\thesistu@polylingual@Subtitle}{%
            \thesistu@polylingual@Subtitle}{%
          }%
        }%
      \end{minipage}\par
      \thesistu@bigskip\thesistu@bigskip
      {\thesistu@LARGE\thesistu@polylingual@thesisname}\par
  \medskip   {\thesistu@large{\thesistu@polylingual@lecturetext \space \thesistu@polylingual@lecture}}\par
      \thesistu@bigskip
      {\thesistu@large\thesistu@polylingual@submission}\par
  \medskip      \ifundergraduate{%
        {\thesistu@LARGE{\bfseries\thesistu@polylingual@degreename}}\par
        \thesistu@bigskip
        {\thesistu@large\thesistu@polylingual@in}\par
\medskip        {\thesistu@Large{\bfseries\thesistu@polylingual@Curriculum}}\par
      }%
      \ifgraduate{%
        {\thesistu@LARGE{\bfseries\thesistu@polylingual@degreename}}\par
        \ifphd{%
          \thesistu@bigskip
          {\thesistu@large\thesistu@polylingual@within}\par
  \medskip          {\thesistu@LARGE{\bfseries\thesistu@polylingual@School}}\par
        }%
      }%
      \thesistu@bigskip
      {\thesistu@large\thesistu@polylingual@by}\par
      \medskip      {\thesistu@Large{\bfseries\thesistu@person@author@fullname}}\par
      \smallskip
      {\thesistu@large\thesistu@polylingual@Registrationnumber\
      \thesistu@data@regnumber}\par
    }%
    \thesistu@bigskip\thesistu@bigskip
    \ifgraduate{\ifphd{\vspace*{-8mm}}}%
    \begin{minipage}[b][1.8cm][c]{\textwidth}%
      \thesistu@normalsize%
  \vspace{1mm}
      \thesistu@polylingual@facultytext \space \thesistu@polylingual@faculty\\
  \thesistu@polylingual@instituttext \space \thesistu@polylingual@institut\\
      \thesistu@polylingual@universitytext \space \thesistu@polylingual@university\\
    \end{minipage}
\vspace{1mm}
    \AdvisorBlock\par
    \vfill
    \ReviewerBlock\par
    \SignatureBlock\par
    \vspace*{1cm}%
  \end{SFFont}%
  \pagestyle{empty}%
  \cleardoublepage
  \thesistu@restorelayout
  \restoregeometry
}%
\newcommand{\AddStatementPage}{
  \thesistu@savelayout
  \setlength{\parindent}{0pt}%
  \setlength{\baselineskip}{13.6pt}%
  \setlength{\parskip}{0pt plus 1pt}%
  \begin{SFFont}{phv}%
    \sffamily
      \chapter*{\thesistu@polylingual@StatementChapter}%
      \thesistu@person@author@fullname\\
      \thesistu@data@address\par
      \vspace{1.2cm}%
      {\normalfont\thesistu@polylingual@Statement}\par
      \vspace{1.2cm}%
      \SignatureFields[y]{\thesistu@person@author@name}{}%
  \end{SFFont}%
  \cleardoublepage
  \thesistu@restorelayout
}%
\newcommand{\addtitlepage}[1]{%
  \selectlanguage{#1}%
  \AddTitlePage
}%
\newcommand{\addstatementpage}{%
  \selectlanguage{naustrian}%
  \ifundergraduate{\AddStatementPage}%
  \ifgraduate{%
    \ifdoctor{\AddStatementPage}%
    \ifphd{%
      \selectlanguage{english}%
      \AddStatementPage
    }%
  }%
}%
\newenvironment{acknowledgements}{%
  \selectlanguage{english}%
  \chapter{Acknowledgements}%
}{%
  \cleardoublepage
}%
\newenvironment{acknowledgements*}{%
  \selectlanguage{english}%
  \chapter*{Acknowledgements}%
}{%
  \cleardoublepage
}%
\newenvironment{danksagung}{%
  \selectlanguage{naustrian}%
  \chapter{Danksagung}%
}{%
  \cleardoublepage
}%
\newenvironment{danksagung*}{%
  \selectlanguage{naustrian}%
  \chapter*{Danksagung}%
}{%
  \cleardoublepage
}%
\renewenvironment{abstract}{%
  \selectlanguage{english}%
  \chapter{Abstract}%
}{%
  \cleardoublepage
}%
\newenvironment{abstract*}{%
  \selectlanguage{english}%
  \chapter*{Abstract}%
}{%
  \cleardoublepage
}%
\newenvironment{kurzfassung}{%
  \selectlanguage{naustrian}%
  \chapter{Kurzfassung}%
}{%
  \cleardoublepage
}%
\newenvironment{kurzfassung*}{%
  \selectlanguage{naustrian}%
  \chapter*{Kurzfassung}%
}{%
  \cleardoublepage
}%
\newenvironment{introduction}{%
  \selectlanguage{english}%
  \section{Introduction}%
}{%
  \clearpage
}%
\newenvironment{introduction*}{%
  \selectlanguage{english}%
  \section*{Introduction}%
}{%
  \clearpage
}%
\newenvironment{einleitung}{%
  \selectlanguage{naustrian}%
  \section{Einleitung}%
}{%
  \clearpage
}%
\newenvironment{einleitung*}{%
  \selectlanguage{naustrian}%
  \section*{Einleitung}%
}{%
  \clearpage
}%
\makepagestyle{thesistu@pagestyle@default}%
\makeevenfoot{thesistu@pagestyle@default}{\thepage}{}{}%
\makeoddfoot{thesistu@pagestyle@default}{}{}{\thepage}%
\aliaspagestyle{chapter}{thesistu@pagestyle@default}%
\aliaspagestyle{part}{thesistu@pagestyle@default}%
\addto\frontmatter{\pagestyle{thesistu@pagestyle@default}}%
\addto\mainmatter{\pagestyle{Ruled}}%
\addto\backmatter{\pagestyle{thesistu@pagestyle@default}}%
\endinput
%%
%% End of file `thesistu.cls'.
