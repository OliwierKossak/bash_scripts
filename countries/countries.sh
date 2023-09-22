#!/bin/bash

PS3="Choose city from list: "
select city in Tokyo London Warsaw;
do
	case "$city" in
		"Tokyo") echo "Japan" ;;
		"London") echo "England" ;;
		"Warsaw") echo "Poland" ;;
	esac
	break
done
exit 0


