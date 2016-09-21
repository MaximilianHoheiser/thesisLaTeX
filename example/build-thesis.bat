rem Copyright (C) 2016- Maximilian Hoheiser <maximilian.hoheiser@student.tuwien.ac.at>
@echo off
set SOURCE=example
@echo on

rem Build the thesis document
pdflatex %SOURCE%
bibtex   %SOURCE%
pdflatex %SOURCE%
pdflatex %SOURCE%
makeindex -t %SOURCE%.glg -s %SOURCE%.ist -o %SOURCE%.gls %SOURCE%.glo
makeindex -t %SOURCE%.alg -s %SOURCE%.ist -o %SOURCE%.acr %SOURCE%.acn
makeindex -t %SOURCE%.ilg -o %SOURCE%.ind %SOURCE%.idx
pdflatex %SOURCE%
pdflatex %SOURCE%

@echo off
echo.
echo.
echo Thesis document compiled.
pause
