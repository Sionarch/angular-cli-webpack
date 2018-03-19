#!/bin/bash

. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

set -e

cp -r "$PWD" "../ngw"
cd "../"
ng new test-project --skip-install
cd test-project
npm i
cp -r "../ngw" "./node_modules/ngw"
./node_modules/ngw/bin/ngw --set-up
npm run build