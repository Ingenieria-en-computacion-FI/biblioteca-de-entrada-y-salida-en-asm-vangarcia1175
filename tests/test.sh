#!/bin/bash
make clean
make
printf "42\nA\nhola\n" | ./program | cat -v | grep -n ""
