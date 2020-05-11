#!/bin/bash

if [ $# -ne 1 ]
   then
       echo 'Enter the site name.'
       exit
fi

echo 'Site name:' "$1"

cp -r site "../$1"
mv "../$1/site.py" "../$1/$1.py"

sed -i 's/${site}/'"$1"'/' "../$1/.flaskenv"
sed -i 's/${site}/'"$1"'/' "../$1/app/templates/layout.html"

cd "../$1"
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt

flask db init
flask run
