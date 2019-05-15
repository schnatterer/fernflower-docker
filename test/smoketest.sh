#!/bin/bash
set -ex

IMAGE_UNDER_TEST="$1"
BASEDIR=$(dirname $0)

javac ${BASEDIR}/Hello.java

mkdir -p tmp
cp ${BASEDIR}/Hello.class tmp
cd tmp
docker run --rm -v $(pwd):/src ${IMAGE_UNDER_TEST} /src/Hello.class /src/
cat Hello.java
cd ..
rm -rf tmp
