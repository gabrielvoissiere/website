#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
git add dist
git commit -m 'deploy'
git subtree push --prefix dist origin gh-pages