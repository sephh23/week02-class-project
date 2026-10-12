#!/usr/bin/env bash
set -eu
mkdir -p build
g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app
./build/app < tests/input1.txt > build/actual1.txt
diff -u tests/expected1.txt build/actual1.txt
./build/app < tests/input2.txt > build/actual2.txt
diff -u tests/expected2.txt build/actual2.txt
echo "All acceptance tests passed"
