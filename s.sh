#!/bin/bash
(
	( sleep 1e-5 && echo -n '1' ) &
	( sleep 1e-5 && echo -n '2' ) &
	( sleep 1e-5 && echo -n '4' ) &
	( sleep 1e-5 && echo -n '8' ) &
	wait
)
