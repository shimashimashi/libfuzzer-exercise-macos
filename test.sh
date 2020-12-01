#!/bin/bash -x
set -o errexit
./clang-driver -std=c++11 -g -fno-omit-frame-pointer -fsanitize=address -fsanitize-coverage=trace-cmp ./test/test_fuzzer.cc libFuzzer.a -o test_fuzzer
./test_fuzzer
