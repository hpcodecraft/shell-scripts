#!/bin/sh
#
# dir2html
# by volker wieban (buckoven_at_gobolinux_dot_de)
#
#
case $# in
	0) DIR=`pwd`;;
	1) DIR=$1 ;;
	*) echo 'failure'; exit 1 ;;
esac

INDEXFILE=$DIR'/index.html'

echo 'Indexing directory:' $DIR
echo 'ouput to' $INDEXFILE

### Build HTML page ###
echo '<html>' > $INDEXFILE
echo '<head><title>'$DIR'</title></head>' >> $INDEXFILE
echo '<body>' >> $INDEXFILE
echo '<ul>' >> $INDEXFILE

cd $DIR
for FILE in *
do
        echo '<li>'$FILE'</li>' >> $INDEXFILE
done

echo '</ul>' >> $INDEXFILE
echo '</body>' >> $INDEXFILE
echo '</html>' >> $INDEXFILE

echo 'finished.'
