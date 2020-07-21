#!/usr/bin/env bash

echo "Building ..."
yarn build

echo "Copying build files to main"
cp -a ../dist ../../abircb.github.io
cd ../../abircb.github.io

echo "Committing changes"
git add .
git commit -m "automated deploy"
git push origin master