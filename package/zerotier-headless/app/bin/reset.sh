#!/bin/bash

for nwid in `zerotier-cli listnetworks | grep -F "" | cut -c18-34`; do
	zerotier-cli leave $nwid
	sleep 1
	zerotier-cli join $nwid
done
exit