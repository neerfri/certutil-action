#!/bin/sh -l

CMD=$INPUT_CMD
if [ -z "$CMD" ]; then
  CMD=$@
fi
echo "Executing: $CMD"
echo "Current directory: $(pwd)"
echo

su runner -c "$CMD"