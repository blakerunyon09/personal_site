#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# add cname file
echo "blake-runyon.com" > dist/CNAME

git add dist

git commit -m 'deploy'

git subtree push --prefix dist origin gh-pages
