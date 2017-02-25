
SOURCE=examples
TARGET=docs
ROOT=`pwd`

echo "Building web site..."

echo "Creating index.md..."
sed -e "s/\\.md/\\.hmtl/g" README.md > index.md

echo "..DONE"
