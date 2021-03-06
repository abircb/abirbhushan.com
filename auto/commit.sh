#!/usr/bin/env bash

# liniting (errors only)
eslint --quiet --ext .js,.vue .

# formatting
npx prettier . --write

# commit status
git status

# committing changes
git add .
git status
git commit -m "$1"

# pushing changes
git push origin master