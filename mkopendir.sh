#!/bin/sh
cp template.html output.html
du -l "$1" | awk '{print $2}' | xargs -I % sh -c 'echo "<p><a href=\"%\">%</a></p>" >> output.html'
echo "$(cat tempend.html)" >> output.html
