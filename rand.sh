#!/bin/bash
lines=$( wc -l "$1" )
lines="${lines% *}"

OUT=$(( RANDOM % ( lines * 3 ) ))
OUT=$(( OUT - lines ))

while [ "${OUT}" -gt "${lines}" ]
do
	OUT=$(( OUT - lines ))
done
while [ "${OUT}" -lt 1 ]
do
	OUT=$(( OUT + lines ))
done

echo "${OUT}"
