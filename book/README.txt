
Kaobook
-------------------
This book uses the kaobook templates found at
https://github.com/fmarotta/kaobook

Kaobook files:
    kaobook.cls
    kaohandt.cls
    kao.sty
    kaobiblio.sty
    kaorefs.sty
    kaotheorems.sty


My main document file is main.tex

To compile the main kaobook sample document, execute compileall.sh.

To remove generated files, execute clean.sh.

Commands to get setup the compile environment in Linux Mint 21.2:
sudo apt-get install texlive texlive-latex-extra texlive-fonts-extra texlive-science texlive-bibtex-extra biber

You sould probably accomplish the same thing by installing texlive-full, but
I have not tried this.
sudo apt-get install texlive-full

Troubleshooting
-------------------

Error: `biblatex.sty' not found
Solution:  sudo apt-get install texlive-bibtex-extra biber


