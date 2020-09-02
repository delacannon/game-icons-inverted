#!/usr/bin/env bash

echo "Downloading icons from game-icons.net..."

filename="game-icons.net.svg"
url="https://game-icons.net/archives/svg/zip/000000/transparent/game-icons.net.svg.zip"

if curl --silent -o "${PWD}/${filename}" -L "${url}"; then
    unzip "${filename}"
    # move up 
    for i in */; do find "$i" -type f -exec mv {} "$i" \; && rm -r "$i"*/; done
else
    echo "Something went wrong"
fi
echo "Done!"


