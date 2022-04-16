#!/bin/bash

# PRESENTATION
echo 'Iae, irmão! Eu dnv, ta quase lá.. so mais algns passos :)'
echo -e '\n'

#GIT
# Remove some git references
rm -rf ./.git
# Initializate git project
git init
# Create repository
read -p 'Cole aqui o link do novo repositório: ' repo
git remote add origin $repo
# Add to git and commit
git add .
git commit -m "'"
# Submit commit to repository (forced)
git push origin +master
