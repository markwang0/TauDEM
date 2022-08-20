# TauDEM

This readme has been adapted for this fork of TauDEM. See the original here: https://github.com/dtarb/TauDEM#readme

This fork contains an edited `linklib.h` file. I needed to replace some deprecated MPI constructs to get TauDEM to compile. This fork also includes the tool `inunmap`.

TauDEM (Terrain Analysis Using Digital Elevation Models) is a suite of Digital Elevation Model (DEM) tools for the extraction and analysis of hydrologic information from topography as represented by a DEM. TauDEM is developed by [David Tarboton](https://hydrology.usu.edu/dtarb/).

For more information on the development of TauDEM please refer to the wiki https://github.com/dtarb/TauDEM/wiki.
For the latest release and detailed documentation please refer to the website: http://hydrology.usu.edu/taudem.

Dependencies
---
Dependencies include GDAL, MPI and C++ 2011. GDAL 3.0.4 included in my conda environment satisfied this dependency for me (Mark). This uses some scripts with additional commands to isntall MPICH and GCC.

For Ubuntu 20.04:
---
```sh
$ sudo apt install libmpich-dev openmpi-bin build-essential
$ sudo chmod +x GCC.sh MPICH2.sh
$ ./GCC.sh
$ ./MPICH2.sh
```

Building on Linux
---
```sh
$ cd TauDEM
$ mkdir bin
$ cd src
$ make
```
The executables are written to the `bin` directory.

Debugging
---
When trying to run some TauDEM executables I got this error:
```sh
./aread8: error while loading shared libraries: libgdal.so.31: cannot open shared object file: No such file or directory
```

Which were resolved with:
```sh
$ ln -s /usr/lib/libgdal.so /usr/lib/libgdal.so.31
$ /sbin/ldconfig
```

Testing
-------
See the repository https://github.com/dtarb/TauDEM-Test-Data for test data and scripts that exercise every function.  These can also serve as examples for using some of the functions.

