#! /bin/bash

ACPI=$(acpi -b)
STATUS=$(echo $ACPI | cut -f 3 -d " ")
STATUS=${STATUS::-1}
PERCENT=$(echo $ACPI | cut -f 4 -d " ")
# $PERCENT=${PERCENT::-1}
TIME=$(echo $ACPI | cut -f 5 -d " ")
notify-send $PERCENT "$STATUS $TIME"
