#!/bin/bash

function RD()
{
	A=$( . ./s.sh | . ./r.sh )
	B=$( . ./s.sh | . ./r.sh )
	C=$( . ./s.sh | . ./r.sh )
	echo $(( A * B + C ))
}
while read input
do
	lines=$( cat $1 | wc -l )

	[ -f $1.mem ] || echo 3 > $1.mem

	MEM=$(< $1.mem )
	RD=$( RD )
	R=$(( RD % lines ))
	T=$(( R % 2 ))
	[ $T -eq 0 ] && R=-$R
	L=$(( MEM + R ))

	[ $L -gt $lines ] && L=$(( L - lines ))
	[ $L -lt 1 ] && L=$(( L + lines ))

	head -$L $1 | tail -1
	[ "$input" = "quit" ] && break
done
