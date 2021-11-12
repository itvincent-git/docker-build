#!/bin/bash
# https://stackoverflow.com/questions/41898503/loop-over-environment-variables-in-posix-sh
RESULT=""
for NAME in $(awk "END { for (name in ENVIRON) { print name; }}" < /dev/null)
do
  VAL="$(awk "END { printf ENVIRON[\"$NAME\"]; }" < /dev/null)"
  if [[ "$NAME" == "X_"* ]]; then
    RESULT=$RESULT" $NAME=$VAL"
  fi
done
# echo $RESULT
jo $RESULT > env.json
nginx -g 'daemon off;'
