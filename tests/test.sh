#!/bin/bash
make clean
make
echo "=== OUTPUT HEXADECIMAL ==="
printf "42\nA\nhola\n" | ./program | xxd
