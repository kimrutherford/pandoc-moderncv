#!/bin/sh

cd ~/git/pandoc-moderncv/
make html pdf public-cv=false HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/cv/cv-full.html &&
    rsync -avP dist/cv.pdf $HOME/git/kimrutherford.github.io/cv/cv-full.pdf

make html pdf public-cv=true HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/cv/index.html &&
    rsync -avP dist/stylesheets/style.css $HOME/git/kimrutherford.github.io/cv/stylesheets/style.css
