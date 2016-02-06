#!/bin/sh

cd ~/git/pandoc-moderncv/
DISPLAY=localhost:10.0 make html pdf public-cv=true HTMLTOPDF=wkhtmltopdf &&
    rsync -avP dist/ mac:Documents/pandoc-moderncv/ &&
    rsync -avP dist/ oliver0:/var/www/pombase/kmr44/pandoc-moderncv/ &&
    rsync -avP dist/ $HOME/git/kimrutherford.github.io/

