#!/bin/bash

clear
mkdir -p ../build/fontbuilder

#-Wno-strict-aliasing

g++ -Wall -O3 -std=c++11 -m64 \
    -Wno-unused-result \
    -march=native -mfpmath=sse -maes -msse4.2 -mavx -mavx2 -mavx512dq -mavx512f \
    -pthread \
    font_builder.cpp \
    -o ../build/fontbuilder/font_builder