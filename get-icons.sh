#!/usr/bin/env bash

echo "Downloading icons from game-icons.net..."

filename="game-icons.net.svg"
url="https://game-icons.net/archives/svg/zip/000000/transparent/game-icons.net.svg.zip"

if curl --silent -o "${PWD}/${filename}" -L "${url}"; then
    unzip "${filename}" 'icons/000000/transparent/1x1/*' -d all-icons
    # move up and put all icons into the all-icons folder
    for i in */; do find "$i" -type f -exec mv {} "$i" \; && rm -r "$i"*/; done
else
    echo "Something went wrong"
fi
echo "Done!"


