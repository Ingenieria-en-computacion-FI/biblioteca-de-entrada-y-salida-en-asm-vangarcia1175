#!/bin/bash
make clean
make
printf "42\nA\nhola\n" | ./program | od -c
