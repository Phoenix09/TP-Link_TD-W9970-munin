#!/bin/sh
set -e
statsfile="${statsfile:-/var/lib/munin/plugin-state/TP-Link_TD-W9970-munin-output.txt}"
expect "$(dirname "$(readlink -f "$0")")/TD-W9970.expect" | tr -d "\015"  | tee "$statsfile.tmp"
if [ -s "$statsfile.tmp" ]; then
        mv "$statsfile.tmp" "$statsfile"
else
        echo "Empty stats file" >&2
fi

