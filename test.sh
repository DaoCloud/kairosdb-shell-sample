#!/bin/bash

sleep 10
# Current time in milliseconds
now=$(($(date +%s%N)/1000000))
metric=load_value_test
value=42
host=$KAIROSDB_PORT_4242_TCP_ADDR
echo "testing $host"

echo "put $metric $now $value host=A" | nc -w 30 $host 4242
