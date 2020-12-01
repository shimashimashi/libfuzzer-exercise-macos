#!/bin/bash
if [ -e Fuzzer ]; then
  (cd Fuzzer && git pull)
else
  git clone https://chromium.googlesource.com/chromium/llvm-project/compiler-rt/lib/fuzzer
fi

./Fuzzer/build.sh
