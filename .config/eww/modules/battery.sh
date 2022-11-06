#!/bin/sh

BATTERY_INFO=($( acpi | awk -F',' '{ print $0}' ))

CHARGE=$((${BATTERY_INFO[3]//%,}))

echo "$CHARGE%"
