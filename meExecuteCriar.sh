#!/bin/bash

# INIT
yarn

# PRESENTATION
echo 'Iae, irmão! Caso ocorra algum erro basta pressionar o comando "cntrl + c" pra finalizar o processo. Se for algo mais grave, sugiro que exclua essa basta, baixe outro template e comece tudo novamente :)'
echo -e '\n'

# SHARE FUNCIONALITY
read -p 'Digite o nome da cidade (letras maiúsculas contam): ' city

read -p 'Cole aqui o link APPLINK do aplicativo: ' applink

read -p 'Cole aqui o link GOOGLE PLAY STORE do aplicativo: ' playstore

read -p 'Cole aqui o link APPLE STORE do aplicativo: ' applestore

# WRITE INSIDE THE ARCHIVE
# Remove possibles files
rm ./src/constants.js;

# Create the file
touch ./src/constants.js
echo 'const link_Applink = "'${applink}'"

const link_Apple_Store_iOS = "'${applestore}'"

const link_Google_Play_Store_Android = "'${playstore}'"

const cidade = "'${city}'"

export { link_Apple_Store_iOS, link_Applink, link_Google_Play_Store_Android, cidade }' >> ./src/constants.js

# Update package.json with name of city in app and url
# Write in file
echo '{
  "name": "share_'${city,,}'",
  "homepage": "https://guiatorrinha.github.io/share_'${city,,}'/",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "gh-pages": "3.2.3",
    "react": "17.0.2",
    "react-dom": "17.0.2",
    "react-scripts": "4.0.3",
    "react-share": "4.4.0",
    "web-vitals": "1.0.1"
  },
  "scripts": {
    "dev": "react-scripts start",
    "predeploy": "react-scripts build",
    "deploy": "./node_modules/.bin/gh-pages -d build"
  },
  "eslintConfig": {
    "extends": [
      "react-app",
      "react-app/jest"
    ]
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}
' > ./package.json

# check if everithing is up to date
yarn