#!/bin/bash
set -e
OUTFILE='index.html'
cd video
echo > $OUTFILE
echo '<html><head><title>videos</title></head>' >> $OUTFILE
echo '<body>' >> $OUTFILE

echo '<div>' >> $OUTFILE
echo '<ul>' >> $OUTFILE

for file in `ls`
do
    echo "<li><a href=\"/video/$file\">$file</a></li>" >> $OUTFILE
done
echo '</ul>' >> $OUTFILE
echo '</body></html>' >> $OUTFILE

