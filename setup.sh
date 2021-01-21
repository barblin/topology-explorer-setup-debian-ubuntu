#!/bin/bash
# topology explorer setup


ENV=${1:-dev}

function prop {
    grep "${1}" ./env/env.${ENV}|cut -d'=' -f2
}

git clone $(prop 'REPO_UI')
git clone $(prop 'REPO_SERVICE')


chmod 777 -R ./

cd ./$(prop 'NAME_SERVICE')
gnome-terminal -e ./setup.sh $ENV

cd ..

cd ./$(prop 'NAME_UI')
gnome-terminal -e ./setup.sh

cd ..

echo "Stop dev on any key [Enter]: "
read any_key

sudo kill -9 `sudo lsof -t -i:$(prop 'PORT_UI')`
sudo kill -9 `sudo lsof -t -i:$(prop 'PORT_SERVICE')`
