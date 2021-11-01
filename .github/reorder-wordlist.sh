#!/bin/sh

set -ex

dir=`dirname $0`

tmpfile=$(mktemp)
wordlist="$dir/wordlist.txt"

grep '^#' "$wordlist" > "$tmpfile"
sed '/^# /d;/^$/d' "$wordlist" | sort -u >> "$tmpfile"
mv "$tmpfile" "$wordlist"
