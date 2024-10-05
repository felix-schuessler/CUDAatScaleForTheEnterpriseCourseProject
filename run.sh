#!/usr/bin/env bash

echo "make clean build..."
make clean build

echo "Running the program..."

make run ARGS="-input=./data/Lena.pgm -kernel=median" >> output/output.log
make run ARGS="-input=./data/Lena.pgm -kernel=sharpen" >> output/output.log
make run ARGS="-input=./data/Lena.pgm -kernel=laplacian" >> output/output.log
