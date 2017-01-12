#!/bin/sh
echo "Enter project name..."
name=""
while [ -z $name ]; do
	read name
done

mkdir ../$name
mkdir ../$name/bin
mkdir ../$name/public
mkdir ../$name/routes
mkdir ../$name/views

cp ./files/www ../$name/bin/
cp ./files/app.js ../$name/
cp ./files/package.json ../$name/
cp ./files/error.ejs ../$name/views/
cp ./files/index.ejs ../$name/views/
cp ./files/index.js ../$name/routes/
cp ./files/users.js ../$name/routes/

cd ../$name/
npm init
npm install