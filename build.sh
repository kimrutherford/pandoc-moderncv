#!/bin/sh

cd ~/git/pandoc-moderncv/
make html pdf public-cv=false HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/cv-full.html &&
    rsync -avP dist/cv.pdf $HOME/git/kimrutherford.github.io/cv-full.pdf

make html pdf public-cv=true HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/index.html
