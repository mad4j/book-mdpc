
ROOT=`pwd`
SOURCE=examples
TARGET=./


echo "Building web site..."

echo "Creating index.md..."
sed -e "s/\\.md/\\.hmtl/g" README.md > $TARGET/index.md

echo "..DONE"
