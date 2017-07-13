#!/bin/ash
echo "Updating Game-Files"
rsync -az --delete fgs1.friebe.it::share/starbound/* .
echo "Done. Starting."
cd linux/
./starbound_server
