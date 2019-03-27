#!/bin/bash
for f in `find . -maxdepth 1 -type f -iname "*.go" -not -path "./vendor/*"`
do
	$1 "$f" || exit 1
done
exit 0
