#!/bin/bash
#export SWIG_LIB=./swig-cffi/Lib
#swig-cffi/swig-linux -c++ -cffi ../src/oc.i

export SWIG_LIB=~/dev/03-clcxx/swig-cffi/Lib
~/dev/03-clcxx/swig-cffi/swig-linux  -v -c++ -cffi ../src/oc.i
