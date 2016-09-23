#!/bin/bash
echo "docker registory cleaner"

if [ "x$REGISTORY" == "x" ] ; then
  echo "target registory undefined."
  exit 1
fi

if [ "x$REPOSITORY" == "x" ] ; then
  echo "target repository undefined."
  exit 2
fi

if [ "x$GENERATION_NUM" == "x" ] ; then
  echo "keep generations undefined."
  exit 3
fi

echo "target registory = ${REGISTORY}"
echo "target repository = ${REPOSITORY}"
echo "keep generations = ${GENERATION_NUM}"

VERSIONS=`dregutil --registry ${REGISTORY} list-tag-names | grep ${REPOSITORY} | tail -$(( $GENERATION_NUM + 1 )) | head -n 1 | sed 's/[\t ]\+/\t/g' | cut -f2`
echo "version"
echo $VERSIONS

dregutil --registry ${REGISTORY} remove-tags -r ${REPOSITORY} -t \<${VERSIONS}

echo "${REGISTORY} ${REPOSITORY} CLEANING HAS BEEN COMPOLETED"
