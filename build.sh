#!/bin/sh

cd ~/git/pandoc-moderncv/
DISPLAY=localhost:10.0 make html pdf public-cv=false HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/ mac:Documents/pandoc-moderncv/ &&
    rsync -avP dist/ oliver0:/var/www/pombase/kmr44/pandoc-moderncv/ &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/cv-full.html &&
    rsync -avP dist/cv.pdf $HOME/git/kimrutherford.github.io/cv-full.pdf

DISPLAY=localhost:10.0 make html pdf public-cv=true HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/cv.html $HOME/git/kimrutherford.github.io/index.html &&
    rsync -avP dist/cv.html mac:Documents/pandoc-moderncv/cv-public.html
