# cv
My curriculum vitae

## Setup

1. Install [TeX Live](https://www.tug.org/texlive/) with `pdflatex`
2. Compile flatex:
```
gcc -o flatex flatex.c
```

## Compilation

To pick one or more specific versions (`cv`, `cv-long`, `cv-longer`):
```
./makecv cv,cv-long
```

To compile all:
```
./makecv all
```

This generates the PDF output and the merged .tex file from the source.

To upload to the web:
```
./upload
```

## Sources

* LaTeX resume class `res.cls` from [RPI](https://www.rpi.edu/dept/arc/training/latex/resumes/)
* flatex from [CTAN](https://ctan.org/pkg/flatex?lang=en)
