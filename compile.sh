#!/bin/bash
git clone https://github.com/ndarray/Boost.NumPy.git
cd Boost.NumPy
mkdir build
cd build
cmake ..
make -j
cd ../..
make test

