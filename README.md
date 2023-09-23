# TauDEM

These are my personal notes for building TauDEM.

See TauDEM's official websites for more info:
 - Releases and documentation: http://hydrology.usu.edu/taudem
 - Wiki: https://github.com/dtarb/TauDEM/wiki

Dependencies
---
Up-to-date installations of cmake, GDAL, NetCDF, MPI, and a C++ compiler.

Building on Linux and Mac:
```sh
$ cd TauDEM/src && mkdir build && cd build
$ cmake ..
$ make -j$(nproc)
```
The executables are written to `TauDEM/src/build`.

I found it convenient on Mac to use a conda environment to build and run TauDEM:
```sh
$ conda create -c conda-forge -n taudem-env gdal cxx-compiler
$ conda activate taudem-env
$ cd TauDEM/src && mkdir build && cd build
$ cmake ..
$ make -j$(nproc)
```
