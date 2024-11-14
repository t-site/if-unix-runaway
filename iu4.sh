#!/bin/bash
MEM="${1%.*}.mem"
test -a "${MEM}" || echo 3 5 > "${MEM}"
LINE=$( cat "${1}" | wc -l )
L=$( seq -"${LINE}" "${LINE}" | shuf -n 1 )
A=$(< "${MEM}" )
AI="${A% *}"
AO="${A#* }"
B=$(( AI + AO + L ))
OUT=$(( B / 3 ))
while [ "$OUT" -lt 1 ]
do
	OUT=$(( OUT + LINE ))
done
while [ "$OUT" -gt "$LINE" ]
do
	OUT=$(( OUT - LINE ))
done
echo "${AO}" "${L}" > "${MEM}"
head -"${OUT}" "${1}" | tail -1
