#!/bin/sh
statsfile=${statsfile:-/var/lib/munin/plugin-state/TP-Link_TD-W9970-munin-output.txt}
expect `dirname $0`/TD-W9970.expect  | tee | tr -d "\015"  > $statsfile
