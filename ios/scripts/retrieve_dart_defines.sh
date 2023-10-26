#!/bin/sh

OUTPUT_FILE="${SRCROOT}/Flutter/DartDefines.xcconfig"

function decode_url() { echo "${*}" | base64 --decode; }

: >$OUTPUT_FILE

IFS=',' read -r -a define_items <<<"$DART_DEFINES"

for index in "${!define_items[@]}"; do
  define_items[$index]=$(decode_url "${define_items[$index]}")
done

# Select the value of the dart-define to use in native code
printf "%s\n" "${define_items[@]}"  >${OUTPUT_FILE}
