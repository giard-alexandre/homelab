#!/bin/sh
for i in $(find butane -name "*.bu" | sed -e 's,^butane/,,' -e 's,^\./butane/,,')
do
    DIR="$(dirname "${i}")" ; FILE="$(basename "${i}" .bu)"
	INPUTFILE="butane/${DIR}/${FILE}.bu" ; OUTPUTFILE="ignition/${DIR}/${FILE}.ign"
	echo "Reading:    ${INPUTFILE}"
	echo "Generating: ${OUTPUTFILE}"
	mkdir -p "$(dirname "${OUTPUTFILE}")"
    cat "${INPUTFILE}" | docker run --rm -i quay.io/coreos/butane:release > "${OUTPUTFILE}"
done
