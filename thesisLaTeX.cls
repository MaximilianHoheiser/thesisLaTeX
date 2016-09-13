%%
%% This is file `thesisLaTeX.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thesisLaTeX.dtx  (with options: `class')
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
%% This work consists of the files thesisLaTeX.dtx and thesisLaTeX.ins
%% and the derived file thesisLaTeX.cls.
%% This work also consists of the file description.tex.
%% 
%% thesisLaTeX.dtx
%% Copyright (C) 2016-     by Maximilian Hoheiser <maximilian.hoheiser@student.tuwien.ac.at>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{thesisLaTeX}
    [2016/09/01 v0.1 TU Wien Faculty of Physics thesis template]
%% \newcommand{\issue}[1]{\href{https://gitlab.cg.tuwien.ac.at/auzinger/vutinfth/issues/#1}{Issue \#{}#1}}
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
\newcommand{\ifestrequal}[4]{%
  \begingroup
    \edef\thesisLaTeX@tempa{{#1}}%
    \edef\thesisLaTeX@tempb{{#2}}%
    \expandafter\expandafter\expandafter\ifstrequal
      \expandafter\thesisLaTeX@tempa\thesisLaTeX@tempb{#3}{#4}%
  \endgroup
}%
\newcommand{\thesisLaTeX@HUGE}{\fontsize{30}{34}\selectfont}%
\newcommand{\thesisLaTeX@huge}{\fontsize{20}{23}\selectfont}%
\newcommand{\thesisLaTeX@LARGE}{\fontsize{17}{22}\selectfont}%
\newcommand{\thesisLaTeX@Large}{\fontsize{14}{18}\selectfont}%
\newcommand{\thesisLaTeX@large}{\fontsize{12}{14.5}\selectfont}%
\newcommand{\thesisLaTeX@normalsize}{\fontsize{11}{13.6}\selectfont}%
\newenvironment{SFFont}[1]{%
  \begingroup
    \sffamily
    \global\let\thesisLaTeX@f@family@tmp=\f@family
  \endgroup
  \renewcommand{\sfdefault}{#1}%
  \ifdefstrequal{\f@family}{\thesisLaTeX@f@family@tmp}{\sffamily}{}%
}{%
  \renewcommand{\sfdefault}{\thesisLaTeX@f@family@tmp}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setdate}[3]{%
  \newdate{thesisLaTeX@date@signing}{#1}{#2}{#3}%
}%
\newcommand{\thesisLaTeX@def@data}[2]{%
  \@namedef{thesisLaTeX@data@#1@def}{}%
  \@namedef{thesisLaTeX@data@#1}{#2}%
}%
\newcommand{\thesisLaTeX@def@data@invalid}[2]{%
  \@namedef{thesisLaTeX@data@#1@error}{%
    \ClassError{thesisLaTeX}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{thesisLaTeX@data@#1}{\@nameuse{thesisLaTeX@data@#1@error}}%
}%
\newcommand{\CreateData}[1]{%
  \@namedef{set#1}##1{%
    \thesisLaTeX@def@data{#1}{##1}%
  }%
  \thesisLaTeX@def@data@invalid{#1}{\string\set#1}%
}%
\newcommand{\vutinfth@person@male}{male}%
\newcommand{\vutinfth@person@female}{female}%
\newcommand{\ifmale}[2]{%
  \ifcsstring{vutinfth@person@#1@gender}{\vutinfth@person@male}{#2}{}%
}%
\newcommand{\iffemale}[2]{%
  \ifcsstring{vutinfth@person@#1@gender}{\vutinfth@person@female}{#2}{}%
}%
\newcommand{\vutinfth@def@person}[5]{%
  \@namedef{vutinfth@person@#1@def}{}%
  \@namedef{vutinfth@person@#1@pretitle}{#2}%
  \@namedef{vutinfth@person@#1@name}{#3}%
  \@namedef{vutinfth@person@#1@posttitle}{#4}%
  \ifdefstring{\vutinfth@person@male}{#5}{%
    \@namedef{vutinfth@person@#1@gender}{\vutinfth@person@male}%
  }{}%
  \ifdefstring{\vutinfth@person@female}{#5}{%
    \@namedef{vutinfth@person@#1@gender}{\vutinfth@person@female}%
  }{}%
  \ifstrempty{#3}{%
    \ifstrempty{#2}{%
      \@namedef{thesisLaTeX@person@#1@fullname}{#4}%
    }{%
      \ifstrempty{#4}{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#2}%
      }{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#2 #4}%
      }%
    }%
  }{%
    \ifstrempty{#2}{%
      \ifstrempty{#4}{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#3}%
      }{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#3, #4}%
      }%
    }{%
      \ifstrempty{#4}{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#2 #3}%
      }{%
        \@namedef{thesisLaTeX@person@#1@fullname}{#2 #3, #4}%
      }%
    }%
  }%
}%
\newcommand{\thesisLaTeX@def@person@invalid}[2]{%
  \@namedef{thesisLaTeX@person@#1@error}{%
    \ClassError{thesisLaTeX}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{thesisLaTeX@person@#1@name}{%
    \@nameuse{thesisLaTeX@person@#1@error}}%
  \@namedef{thesisLaTeX@person@#1@pretitle}{%
    \@nameuse{thesisLaTeX@person@#1@error}}%
  \@namedef{thesisLaTeX@person@#1@posttitle}{%
    \@nameuse{thesisLaTeX@person@#1@error}}%
  \@namedef{thesisLaTeX@person@#1@gender}{%
    \@nameuse{thesisLaTeX@person@#1@error}}%
  \@namedef{thesisLaTeX@person@#1@fullname}{%
    \@nameuse{thesisLaTeX@person@#1@error}}%
}%
\newcommand{\CreatePerson}[1]{%
  \@namedef{set#1}##1##2##3##4{%
    \thesisLaTeX@def@person{#1}{##1}{##2}{##3}{##4}%
  }%
  \thesisLaTeX@def@person@invalid{#1}{\string\set#1}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\AddLanguage}[1]{%
  \@namedef{KV@thesisLaTeX@#1}##1{%
    \@namedef{thesisLaTeX@current@#1}{##1}%
  }%
  \@nameuse{KV@thesisLaTeX@#1}{}%
  \ifundef{\thesisLaTeX@allocate@polylingual}{%
    \newcommand{\thesisLaTeX@allocate@polylingual}[1]{\@empty}%
  }{}%
  \@namelet{thesisLaTeX@allocate@polylingual@#1}%
    \thesisLaTeX@allocate@polylingual
  \renewcommand{\thesisLaTeX@allocate@polylingual}[1]{%
    \@nameuse{thesisLaTeX@allocate@polylingual@#1}{##1}%
    \@namexdef{thesisLaTeX@##1@#1}{%
      \ifcsempty{thesisLaTeX@current@#1}{%
        \ifdraftdoc{%
          [Draft: No `#1' text for polylingual `##1'.]%
        }\else{%
          \relax
        }\fi
      }{%
        \@nameuse{thesisLaTeX@current@#1}%
      }%
    }%
  }%
  \ifundef{\thesisLaTeX@selectlanguage@polylingual}{%
      \newcommand{\thesisLaTeX@selectlanguage@polylingual}[1]{\@empty}%
  }{}%
  \@namelet{thesisLaTeX@selectlanguage@polylingual@#1}%
    \thesisLaTeX@selectlanguage@polylingual
  \renewcommand{\thesisLaTeX@selectlanguage@polylingual}[1]{%
    \@nameuse{thesisLaTeX@selectlanguage@polylingual@#1}{##1}%
    \ifdefstring{\languagename}{#1}{\@nameuse{thesisLaTeX@##1@#1}}{}%
  }%
}%
\newcommand{\CreatePolylingual}[2][]{%
  \begingroup
    \setkeys{thesisLaTeX}{#1}%
    \thesisLaTeX@allocate@polylingual{#2}%
  \endgroup
  \@namedef{thesisLaTeX@polylingual@#2}{%
    \thesisLaTeX@selectlanguage@polylingual{#2}}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\thesisLaTeX@thesis@basetype@undergraduate}{%
  thesisLaTeX@undergraduate}%
\newcommand{\thesisLaTeX@thesis@basetype@graduate}{%
  thesisLaTeX@graduate}%
\newcommand{\ifundergraduate}[1]{%
  \ifestrequal{\thesisLaTeX@thesis@basetype}{%
    \thesisLaTeX@thesis@basetype@undergraduate
  }{#1}{}%
}%
\newcommand{\ifgraduate}[1]{%
  \ifestrequal{\thesisLaTeX@thesis@basetype}{%
    \thesisLaTeX@thesis@basetype@graduate
  }{#1}{}%
}%
\newcommand{\thesisLaTeX@thesis@doctortype@doctor}{%
  thesisLaTeX@doctor}%
\newcommand{\thesisLaTeX@thesis@doctortype@phd}{%
  thesisLaTeX@phd}%
\newcommand{\ifdoctor}[1]{%
  \ifestrequal{\thesisLaTeX@thesis@doctortype}{%
    \thesisLaTeX@thesis@doctortype@doctor
  }{#1}{}%
}%
\newcommand{\ifphd}[1]{%
  \ifestrequal{\thesisLaTeX@thesis@doctortype}{%
    \thesisLaTeX@thesis@doctortype@phd
  }{#1}{}%
}%
\newcommand{\thesisLaTeX@thesis@basetype}{%
  \ClassError{thesisLaTeX}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesisLaTeX@thesis@doctortype}{%
  \ClassError{thesisLaTeX}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesisLaTeX@polylingual@degreename}{%
  \ClassError{thesisLaTeX}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesisLaTeX@polylingual@thesisname}{%
  \ClassError{thesisLaTeX}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\thesisLaTeX@thesis@bachelor}{bachelor}%
\newcommand{\thesisLaTeX@thesis@master}{master}%
\newcommand{\thesisLaTeX@thesis@doctor}{doctor}%
\newcommand{\thesisLaTeX@thesis@phd}{phd-school}%
\newcommand{\@setthesisname}[1]{%
  \renewcommand{\thesisLaTeX@polylingual@thesisname}{#1}}%
\newcommand{\@setdegreename}[1]{%
  \renewcommand{\thesisLaTeX@polylingual@degreename}{#1}}%
\newcommand{\@setgendereddegreename}[2]{%
  \ifmale{author}{\@setdegreename{#1}}%
  \iffemale{author}{\@setdegreename{#2}}%
}%
\newcommand{\setthesis}[1]{%
  \ifdefstring{\thesisLaTeX@thesis@bachelor}{#1}{%
    \renewcommand{\thesisLaTeX@thesis@basetype}{%
      \thesisLaTeX@thesis@basetype@undergraduate}%
    \@setthesisname{\thesisLaTeX@polylingual@BACHELORTHESIS}%
    \@setdegreename{\thesisLaTeX@polylingual@Bdeg}%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@master}{#1}{%
    \renewcommand{\thesisLaTeX@thesis@basetype}{%
      \thesisLaTeX@thesis@basetype@undergraduate}%
    \@setthesisname{%
      \ClassError{thesisLaTeX}{No \string\setmasterdegree \space issued}{%
        Set masterdegree with \string\setmasterdegree.}%
    }%
    \@setdegreename{%
      \ClassError{thesisLaTeX}{No \string\setmasterdegree \space issued}{%
        Set master degree with \string\setmasterdegree.}%
    }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@doctor}{#1}{%
   \renewcommand{\thesisLaTeX@thesis@basetype}{%
     \thesisLaTeX@thesis@basetype@graduate}%
   \renewcommand{\thesisLaTeX@thesis@doctortype}{%
     \thesisLaTeX@thesis@doctortype@doctor}%
   \@setthesisname{\thesisLaTeX@polylingual@DOCTORTHESIS}%
   \@setdegreename{%
     \ClassError{thesisLaTeX}{No \string\setdoctordegree \space issued}{%
       Set doctor degree with \string\setdoctordegree.}%
   }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@phd}{#1}{%
   \renewcommand{\thesisLaTeX@thesis@basetype}{%
     \thesisLaTeX@thesis@basetype@graduate}%
   \renewcommand{\thesisLaTeX@thesis@doctortype}{%
     \thesisLaTeX@thesis@doctortype@phd}%
   \@setthesisname{\thesisLaTeX@polylingual@PHDTHESIS}%
   \@setdegreename{\thesisLaTeX@polylingual@Pdeg}%
  }{}%
}%
\newcommand{\thesisLaTeX@thesis@mdeg@dipl}{dipl.}%
\newcommand{\thesisLaTeX@thesis@mdeg@master}{master}%
\newcommand{\thesisLaTeX@thesis@mdeg@rernat}{rer.nat.}%
\newcommand{\thesisLaTeX@thesis@mdeg@rersocoec}{rer.soc.oec.}%
\newcommand{\setmasterdegree}[1]{%
  \ifdefstring{\thesisLaTeX@thesis@mdeg@dipl}{#1}{%
    \@setthesisname{\thesisLaTeX@polylingual@DIPLOMATHESIS}%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@MdegDiplMale
    }{%
      \thesisLaTeX@polylingual@MdegDiplFemale
    }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@mdeg@master}{#1}{%
    \@setthesisname{\thesisLaTeX@polylingual@MASTERTHESIS}%
    \@setdegreename{\thesisLaTeX@polylingual@MdegMaster}%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@mdeg@rernat}{#1}{%
    \@setthesisname{\thesisLaTeX@polylingual@MASTERTHESIS}%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@MdegRerNatMale
    }{%
      \thesisLaTeX@polylingual@MdegRerNatFemale
    }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@mdeg@rersocoec}{#1}{%
    \@setthesisname{\thesisLaTeX@polylingual@MASTERTHESIS}%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@MdegRerSocOecMale
    }{%
      \thesisLaTeX@polylingual@MdegRerSocOecFemale
    }%
  }{}%
}%
\newcommand{\thesisLaTeX@thesis@ddeg@rernat}{rer.nat.}%
\newcommand{\thesisLaTeX@thesis@ddeg@techn}{techn.}%
\newcommand{\thesisLaTeX@thesis@ddeg@rersocoec}{rer.soc.oec.}%
\newcommand{\setdoctordegree}[1]{%
  \ifdefstring{\thesisLaTeX@thesis@ddeg@rernat}{#1}{%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@DdegRerNatMale
    }{%
      \thesisLaTeX@polylingual@DdegRerNatFemale
    }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@ddeg@techn}{#1}{%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@DdegTechnMale
    }{%
      \thesisLaTeX@polylingual@DdegTechnFemale
    }%
  }{}%
  \ifdefstring{\thesisLaTeX@thesis@ddeg@rersocoec}{#1}{%
    \@setgendereddegreename{%
      \thesisLaTeX@polylingual@DdegRerSocOecMale
    }{%
      \thesisLaTeX@polylingual@DdegRerSocOecFemale
    }%
  }{}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\CreateData{address}%
\CreateData{regnumber}%
\CreateData{firstreviewerdata}%
\CreateData{secondreviewerdata}%
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
  english=to the Faculty of Informatics,
  naustrian=an der Fakult\"at f\"ur Informatik]{faculty}%
\CreatePolylingual[
  english=at the TU Wien,
  naustrian=der Technischen Universit\"at Wien]{university}%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\newsetlength}[2]{%
  \newlength{#1}%
  \setlength{#1}{#2}%
}%
\newcommand{\thesisLaTeX@squarebullet}{\rule[0.47ex]{0.4ex}{0.4ex}}%
\newlength{\thesisLaTeX@tmp@parindent}%
\newlength{\thesisLaTeX@tmp@baselineskip}%
\newlength{\thesisLaTeX@tmp@parskip}%
\newcommand{\thesisLaTeX@savelayout}{%
  \setlength{\thesisLaTeX@tmp@parindent}{\parindent}%
  \setlength{\thesisLaTeX@tmp@baselineskip}{\baselineskip}%
  \setlength{\thesisLaTeX@tmp@parskip}{\parskip}%
}%
\newcommand{\thesisLaTeX@restorelayout}{%
  \setlength{\parindent}{\thesisLaTeX@tmp@parindent}%
  \setlength{\baselineskip}{\thesisLaTeX@tmp@baselineskip}%
  \setlength{\parskip}{\thesisLaTeX@tmp@parskip}%
}%
\newsetlength{\thesisLaTeX@header@placement}{-41.49731pt}%
\newsetlength{\thesisLaTeX@bar@width}{511bp}%
\newsetlength{\thesisLaTeX@bar@height}{47bp}%
\newsetlength{\thesisLaTeX@bar@pivot@x}{330.71bp}%
\newsetlength{\thesisLaTeX@bar@pivot@y}{25.31bp}%
\newsetlength{\thesisLaTeX@logo@height}{46bp}%
\newsetlength{\thesisLaTeX@logo@pivot@x}{4.57bp}%
\newsetlength{\thesisLaTeX@logo@pivot@y}{5.37bp}%
\newsetlength{\thesisLaTeX@logo@offset@height}{\thesisLaTeX@logo@height
  + \thesisLaTeX@bar@pivot@y - \thesisLaTeX@logo@pivot@y}%
\newsetlength{\thesisLaTeX@logo@offset@x}{-\thesisLaTeX@bar@width
  + \thesisLaTeX@bar@pivot@x - \thesisLaTeX@logo@pivot@x}%
\newsetlength{\thesisLaTeX@logo@offset@y}{
  - \thesisLaTeX@bar@pivot@y + \thesisLaTeX@logo@pivot@y}%
\newcommand{\thesisLaTeX@header@titlepage}{%
  \centering
  \begin{minipage}[b][\thesisLaTeX@logo@offset@height][t]{%
      \thesisLaTeX@bar@width
    }%
    \includegraphics{TU_INF_header}%
    \hspace*{\thesisLaTeX@logo@offset@x}%
    \raisebox{\thesisLaTeX@logo@offset@y}{%
      \includegraphics[scale=1]{TU_INF_Logo_gray}%
    }%
  \end{minipage}%
}%
\newcommand{\thesisLaTeX@footer@titlepage}{%
  \centering
  \begin{minipage}{\textwidth}%
    \centering\thesisLaTeX@normalsize\sffamily
    Technische Universit\"{a}t Wien\\
    A-1040 Wien \thesisLaTeX@squarebullet\space
    Karlsplatz 13 \thesisLaTeX@squarebullet\space
    Tel. +43-1-58801-0 \thesisLaTeX@squarebullet\space
    www.tuwien.ac.at%
  \end{minipage}%
}%
\makepagestyle{thesisLaTeX@pagestyle@titlepage}%
\makerunningwidth{thesisLaTeX@pagestyle@titlepage}[\textwidth]{%
  \thesisLaTeX@bar@width}%
\makeheadposition{thesisLaTeX@pagestyle@titlepage}{%
  center}{center}{center}{center}%
\makeevenhead{thesisLaTeX@pagestyle@titlepage}{}{%
  \thesisLaTeX@header@titlepage}{}%
\makeoddhead{thesisLaTeX@pagestyle@titlepage}{}{%
  \thesisLaTeX@header@titlepage}{}%
\makefootrule{thesisLaTeX@pagestyle@titlepage}{%
  \thesisLaTeX@pagestyle@titlepagefootrunwidth}{0.5pt}{\footruleskip}%
\makeevenfoot{thesisLaTeX@pagestyle@titlepage}{}{%
  \thesisLaTeX@footer@titlepage}{}%
\makeoddfoot{thesisLaTeX@pagestyle@titlepage}{}{%
  \thesisLaTeX@footer@titlepage}{}%
\newsetlength{\thesisLaTeX@bigskipamount}{6mm}%
\newcommand{\thesisLaTeX@bigskip}{\vspace{\thesisLaTeX@bigskipamount}}%
\newcommand{\AdvisorBlock}{%
  \ifundergraduate{%
    \begin{minipage}[t][2.5cm][t]{\textwidth}%
      \thesisLaTeX@normalsize
      \begin{tabular}{@{}l@{ }l}%
        \thesisLaTeX@polylingual@Advisor: &
        \thesisLaTeX@person@advisor@fullname\\
        \ifdef{\thesisLaTeX@person@firstassistant@def}{%
          \thesisLaTeX@polylingual@Assistance: &
          \thesisLaTeX@person@firstassistant@fullname\\
        }{}%
        \ifdef{\thesisLaTeX@person@secondassistant@def}{%
          \ifundef{\thesisLaTeX@person@firstassistant@def}{%
            \thesisLaTeX@person@firstassistant@error
          }{%
            & \thesisLaTeX@person@secondassistant@fullname\\
          }%
        }{}%
        \ifdef{\thesisLaTeX@person@thirdassistant@def}{%
          \ifundef{\thesisLaTeX@person@firstassistant@def}{%
            \thesisLaTeX@person@firstassistant@error
          }{%
            \ifundef{\thesisLaTeX@person@secondassistant@def}{%
              \thesisLaTeX@person@secondassistant@error
            }{%
              & \thesisLaTeX@person@thirdassistant@fullname\\
           }%
         }%
       }{}%
      \end{tabular}%
    \end{minipage}%
  }%
  \ifgraduate{%
    \begin{minipage}[t][1.6cm][t]{\textwidth}%
      \thesisLaTeX@normalsize
      \thesisLaTeX@polylingual@Advisor:
      \thesisLaTeX@person@advisor@fullname
      \ifphd{%
        \ifdef{\thesisLaTeX@person@secondadvisor@def}{%
          \\
          \thesisLaTeX@polylingual@Secondadvisor:
          \thesisLaTeX@person@secondadvisor@fullname
        }{}%
      }%
    \end{minipage}\par%
  }%
}%
\newsetlength{\thesisLaTeX@signature@height}{25mm}%
\newsetlength{\thesisLaTeX@signature@width}{51mm}%
\newsetlength{\thesisLaTeX@placedate@width}{50mm}%
\newcommand{\SignatureFields}[3][n]{%
  {\thesisLaTeX@normalsize
    \ifstrequal{#1}{y}{%
      \begin{minipage}[b][\thesisLaTeX@signature@height]{%
          \thesisLaTeX@placedate@width
        }%
        \thesisLaTeX@polylingual@Place,
        \displaydate{thesisLaTeX@date@signing}\vspace*{\baselineskip}%
      \end{minipage}%
      \hfill
    }{}%
    \ifstrequal{#1}{n}{}{}%
    \ifstrequal{#1}{h}{%
      \hspace*{\thesisLaTeX@placedate@width}%
      \hfill
    }{}%
    \ifstrempty{#2}{%
      \hspace*{\thesisLaTeX@signature@width}%
      \hfill
    }{%
      \begin{minipage}[b][\thesisLaTeX@signature@height]{%
          \thesisLaTeX@signature@width
        }%
        \centering
        \rule{\thesisLaTeX@signature@width}{0.5pt}\\
        #2%
      \end{minipage}%
      \hfill
    }%
    \ifstrempty{#3}{}{%
      \begin{minipage}[b][\thesisLaTeX@signature@height]{%
          \thesisLaTeX@signature@width
        }%
        \centering
        \rule{\thesisLaTeX@signature@width}{0.5pt}\\
        #3%
      \end{minipage}%
    }%
  }%
}%

\newcommand{\ReviewerBlock}{%
  \ifgraduate{%
    \ifdoctor{%
      {\thesisLaTeX@normalsize
        \thesisLaTeX@polylingual@Reviewed\\
        \SignatureFields[h]{%
          \thesisLaTeX@person@firstreviewer@name
        }{%
          \thesisLaTeX@person@secondreviewer@name
        }%
      }%
    }%
    \ifphd{%
      {\thesisLaTeX@normalsize
        \thesisLaTeX@polylingual@Reviewers\\
        \thesisLaTeX@person@firstreviewer@name.
        \thesisLaTeX@data@firstreviewerdata.\\
        \thesisLaTeX@person@secondreviewer@name.
        \thesisLaTeX@data@secondreviewerdata.\\
      }%
    }%
  }%
}%
\newcommand{\SignatureBlock}{%
  \ifundergraduate{%
    {\thesisLaTeX@normalsize
      \SignatureFields[y]{%
        \thesisLaTeX@person@author@name
      }{%
        \thesisLaTeX@person@advisor@name
      }%
    }%
  }%
  \ifgraduate{%
    {\thesisLaTeX@normalsize
      \ifdoctor{%
        \SignatureFields[y]{}{%
          \thesisLaTeX@person@author@name
        }%
      }%
      \ifphd{%
        \SignatureFields[y]{%
          \thesisLaTeX@person@author@name
        }{%
          \thesisLaTeX@person@advisor@name
        }%
      }%
    }%
  }%
}%
\newcommand{\AddTitlePage}{
  \thispagestyle{thesisLaTeX@pagestyle@titlepage}%
  \newgeometry{%
    left=2.4cm,right=2.4cm,bottom=2.5cm,top=2cm,
    headsep=\thesisLaTeX@header@placement,
    head=2\thesisLaTeX@logo@offset@height
  }%
  \thesisLaTeX@savelayout
  \setlength{\parindent}{0pt}%
  \setlength{\baselineskip}{13.6pt}%
  \setlength{\parskip}{0pt plus 1pt}%
  \begin{SFFont}{phv}%
    \sffamily
    {\centering
      \vspace*{1.2cm}\par
      \begin{minipage}[t][5cm][b]{\textwidth}%
        \centering
        \thesisLaTeX@HUGE{\bfseries\thesisLaTeX@polylingual@Title}\\
        \bigskip
        \thesisLaTeX@huge{\bfseries
          \ifdef{\thesisLaTeX@polylingual@Subtitle}{%
            \thesisLaTeX@polylingual@Subtitle}{%
          }%
        }%
      \end{minipage}\par
      \thesisLaTeX@bigskip\thesisLaTeX@bigskip
      {\thesisLaTeX@LARGE\thesisLaTeX@polylingual@thesisname}\par
      \thesisLaTeX@bigskip
      {\thesisLaTeX@large\thesisLaTeX@polylingual@submission}\par
      \thesisLaTeX@bigskip
      \ifundergraduate{%
        {\thesisLaTeX@LARGE{\bfseries\thesisLaTeX@polylingual@degreename}}\par
        \thesisLaTeX@bigskip
        {\thesisLaTeX@large\thesisLaTeX@polylingual@in}\par
        \thesisLaTeX@bigskip
        {\thesisLaTeX@Large{\bfseries\thesisLaTeX@polylingual@Curriculum}}\par
      }%
      \ifgraduate{%
        {\thesisLaTeX@LARGE{\bfseries\thesisLaTeX@polylingual@degreename}}\par
        \ifphd{%
          \thesisLaTeX@bigskip
          {\thesisLaTeX@large\thesisLaTeX@polylingual@within}\par
          \thesisLaTeX@bigskip
          {\thesisLaTeX@LARGE{\bfseries\thesisLaTeX@polylingual@School}}\par
        }%
      }%
      \thesisLaTeX@bigskip
      {\thesisLaTeX@large\thesisLaTeX@polylingual@by}\par
      \thesisLaTeX@bigskip
      {\thesisLaTeX@Large{\bfseries\thesisLaTeX@person@author@fullname}}\par
      \smallskip
      {\thesisLaTeX@large\thesisLaTeX@polylingual@Registrationnumber\
      \thesisLaTeX@data@regnumber}\par
    }%
    \thesisLaTeX@bigskip\thesisLaTeX@bigskip
    \ifgraduate{\ifphd{\vspace*{-8mm}}}%
    \begin{minipage}[b][1.6cm][c]{\textwidth}%
      \thesisLaTeX@normalsize%
      \thesisLaTeX@polylingual@faculty\par
      \thesisLaTeX@polylingual@university
    \end{minipage}\par
    \AdvisorBlock\par
    \vfill
    \ReviewerBlock\par
    \SignatureBlock\par
    \vspace*{1cm}%
  \end{SFFont}%
  \pagestyle{empty}%
  \cleardoublepage
  \thesisLaTeX@restorelayout
  \restoregeometry
}%
\newcommand{\AddStatementPage}{
  \thesisLaTeX@savelayout
  \setlength{\parindent}{0pt}%
  \setlength{\baselineskip}{13.6pt}%
  \setlength{\parskip}{0pt plus 1pt}%
  \begin{SFFont}{phv}%
    \sffamily
      \chapter*{\thesisLaTeX@polylingual@StatementChapter}%
      \thesisLaTeX@person@author@fullname\\
      \thesisLaTeX@data@address\par
      \vspace{1.2cm}%
      {\normalfont\thesisLaTeX@polylingual@Statement}\par
      \vspace{1.2cm}%
      \SignatureFields[y]{\thesisLaTeX@person@author@name}{}%
  \end{SFFont}%
  \cleardoublepage
  \thesisLaTeX@restorelayout
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
\makepagestyle{thesisLaTeX@pagestyle@default}%
\makeevenfoot{thesisLaTeX@pagestyle@default}{\thepage}{}{}%
\makeoddfoot{thesisLaTeX@pagestyle@default}{}{}{\thepage}%
\aliaspagestyle{chapter}{thesisLaTeX@pagestyle@default}%
\aliaspagestyle{part}{thesisLaTeX@pagestyle@default}%
\addto\frontmatter{\pagestyle{thesisLaTeX@pagestyle@default}}%
\addto\mainmatter{\pagestyle{Ruled}}%
\addto\backmatter{\pagestyle{thesisLaTeX@pagestyle@default}}%
\endinput
%%
%% End of file `thesisLaTeX.cls'.
