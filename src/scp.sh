#!/bin/sh

[ -z "$1" ] && symbol="$CCC_SYMBOL" || symbol="$@"

[ -z "$symbol" ] && symbol="🐚"

echo
i=-1
while [ "$i" -ne 7 ]
do
	printf " \033[%sm%s \033[m" "$((31 + i))" "$symbol"
	i=$((i + 1))
done
echo

i=-1
while [ "$i" -ne 7 ]
do
	printf " \033[%sm%s \033[m" "$((91 + i))" "$symbol"
	i=$((i + 1))
done
echo
echo
