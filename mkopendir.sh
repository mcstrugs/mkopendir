#!/bin/sh
echo "<html>\n   <body>\n   <h3><hr><pre>" > output.html
du -al "$1" | awk '{print $2}' | xargs -I % sh -c 'echo "        <a href=\"%\">%</a>" >> output.html'
echo "      </h3></hr></pre>\n   </body>\n</html>" >> output.html
