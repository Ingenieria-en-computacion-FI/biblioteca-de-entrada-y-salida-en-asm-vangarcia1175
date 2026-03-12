#!/bin/bash
set -e
echo "Compilando proyecto..."
make clean
make
echo "Ejecutando pruebas..."

OUTPUT=$(printf "42\nA\nhola\n" | ./program)
echo "OUTPUT COMPLETO:"
echo "$OUTPUT"
