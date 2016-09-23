#!/bin/bash
echo "docker registory cleaner"
echo "target registory = ${REGISTORY}"
echo "target repository = ${REPOSITORY}"
echo "keep generations = ${GENERATION_NUM}"

VERSIONS=`dregutil --registry ${REGISTORY} list-tag-names | grep ${REPOSITORY} | tail -$(( $GENERATION_NUM + 1 )) | head -n 1 | sed 's/[\t ]\+/\t/g' | cut -f2`
echo "version"
echo $VERSIONS

dregutil --registry ${REGISTORY} remove-tags -r ${REPOSITORY} -t \<${VERSIONS}

echo "${REGISTORY} ${REPOSITORY} CLEANING HAS BEEN COMPOLETED"
