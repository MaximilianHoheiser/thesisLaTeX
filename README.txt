                       tuphys LaTeX2e document class
                           Academic thesis template

                  by Thomas Auzinger <thomas@auzinger.name>
				  by Maximilian Hoheiser <maximilian.hoheiser@student.tuwien.ac.at>



DescriptionMax
-----------
MikeTex
TexMaker
	Eigenes Template in MikeTex ins Stammverzeichnis installieren, damit es nicht 
	in jedem Ordner liegen muss:
		Alle Umgebungsfiles in C:\Program Files\MiKTeX 2.9\texmf\tex\latex\"NAME"
		Start/ All Programs/ MiKTeX/ Maintenance/ Settings, the "Refresh FNDB"

		
Descriptiontuphys
-----------
Genauso wie tuphys mit einigen Ändrungen
	Fakultät auf Deckblatt festlegen über eingabebefehl \setfak{FAKULTÄT}
	Institut auf Deckblatt englisch und deutsch mit fariable \setinstitut{INSTITUTNAME}
	aus \setlogo{KÜRZEL} auf Hederlogofile verweisen mit dem Namen : TU_KÜRZEL_Logo
	
	
Description
-----------
The tuphys document class is a LaTeX2e-based template for all theses written
at the Faculty of Informatics at the TU Wien. This package includes the
document class and its documentation as well as an example document that
includes a short introduction to LaTeX.


Support
-------
The tuphys document class is developed using a GitLab-supported Git
repository. You can find it at
                
where a history of the development process is given. If you encounter problems
with using tuphys, use the Issues section of GitLab to provide a description
and to alert the developers of your issue. Furthermore, you can use the Issues
section to request features or give suggestions.


Installation
------------
To use the tuphys class, it has first to be generated from the documented
source file tuphys.dtx. This is achieved by executing the build script for
Windows systems (build-all.bat) or Unix-based systems (build-all.sh). Since the
generation process uses LaTeX itself, make sure that the LaTeX installation is
up-to-date.
The generated document class tuphys.cls has then to be placed in a directory
that is part of the search path of the LaTeX compiler. The folder of the thesis
file is a valid location.
The build scripts also generate an exemplary LaTeX document that serves both as
an introduction to LaTeX and as a verification of the installed typesetting
system. The example document is compiled to example.pdf and it should match the
provided reference solution example-ref.pdf.


Usage
-----
When writing the actual thesis, the build functionalities of the used editor
are usually employed. For advanced functionalities of LaTeX, such as
glossaries, acronyms or indices, more complex build commands have to be used,
which often lead to difficulties.
Thus, additional build scripts for the thesis documents are provided for
Windows systems (build-thesis.bat) and Unix-based systems (build-thesis.sh).
These scripts do not rebuild the class file.
When using these scripts, the file name of the thesis file has to be provided
by directly editing these files.


Documentation
-------------
The documentation can be found in tuphys.pdf, which is generated directly
from tuphys.dtx.
This document class is derived from the memoir class at
                       https://www.ctan.org/pkg/memoir
where additional documentation can be found.


Files
-----
build-all.bat      The batch file to generate all necessary files on Windows
                     systems.
build-all.sh       The batch file to generate all necessary files on Unix-based
                     systems.
build-thesis.bat   The batch file to generate the thesis on Windows systems.
build-thesis.sh    The batch file to generate the thesis on Unix-based systems.
example-ref.pdf    The reference solution for the compiled example document.
example.tex        An LaTeX source file showing the use of the tuphys
                     document class.
intro.bib          The bibliography file of intro.tex.
intro.tex          The LaTeX source file of a document that gives an
                     introduction to LaTeX.
lppl.txt           The LaTeX Project Pulic License v1.3c.
README.txt         This file.
tuphys.dtx       The documented source code and documentation file of the
                     tuphys document class.
tuphys.ins       The installer file of the tuphys document class.

graphics/*.*       Corporate identity graphics of the TU Wien and its Faculty
                     of Informatics.


Known Issues
-------------
The minitoc package is incompatible with this document class since the
incompatibility of the memoir document class is inherited. Use the titletoc
package as a replacement.


Acknowledgements
----------------
This is copied from Thomas Auzinger from his git page: 
https://gitlab.cg.tuwien.ac.at/auzinger/vutinfth


Copyright Notice
----------------
Copyright (C) 2016- by Maximilian Hoheiser maximilian.hoheiser@student.tuwein.ac.at
This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

All TU Logos are copyright of the TU Wien.

original Copyright Notice
----------------
Copyright (C) 2014-2016 by Thomas Auzinger <thomas@auzinger.name>

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Thomas Auzinger.

This work consists of the files tuphys.dtx and tuphys.ins
and the derived file tuphys.cls.
This work also consists of the file intro.tex.

The 'TU Wien' logo and 'Fakultät für !nformatik' logo are copyright of the TU
Wien.