INITIAL_DIR=`pwd`

# Get the first line beginning with "##" in the changelog and assume it's a version
VERSION_STRING=`cat CHANGELOG.md | grep "##" | head -1 | awk '{ print $2 }'`
PACK_NAME=The\ Coven

cd src

zip -r "../$PACK_NAME-$VERSION_STRING.mrpack" *

cd $INITIAL_DIR