#!/bin/sh

rm -f collection.xml.tmp collection.xml
echo "<files>" >> collection.xml.tmp
for f in sample-files/*.xml; do
OUTPUT=`echo $f | sed s/.xml\$/.html/`
echo "<file input=\"$f\" output=\"$OUTPUT\"></file>" >> collection.xml.tmp
xsltproc -o "$OUTPUT" report.xsl "$f" || exit 1
done
echo "</files>" >> collection.xml.tmp
mv collection.xml.tmp collection.xml
xsltproc -o index.html collection.xsl collection.xml || exit 1

