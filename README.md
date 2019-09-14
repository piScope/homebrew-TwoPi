##  Formula to install the TwoPi (piScope/Petra-M) packages.

This formula installs followig libraris.
   MFEM, Hypre, Metis, Parmetis, MUMPS
   PetraM (Base, RF, Geom, Driver, MUMPS)
   
### Steps to start from fresh install of HomeBrew

1) Install XCode CommandLineTool
```
     > xcode-select --install
```     
   You may also need to update XCode from App Store, which takes several hours
   
2) Install HomeBrew
```
     > /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2-1) On Mojave, compiler header file is missing, and you may get this error without installing SDK
```
../include/space.h:12:10: fatal error: 'stdio.h' file not found
```
Try this
```
open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
```
Detail is discuss in https://discourse.brew.sh/t/clang-can-no-longer-find-usr-include-header-files-fatal-error-stdlib-h-file-not-found/4523


3) install libraries
```
   > brew install open-mpi scalapack wget zlib netcdf hdf5 numpy scipy coreutils llvm libomp gmsh wxPython 
```

4) install Python modules
```
   > pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future
```

5) install mpi4py
```
   > CC=mpicc CXX=mpicxx pip3 install mpi4py
```

4)  tap to the custom formula
```
    > brew tap piScope/twopi
    or
    > brew tap piScope/twopi ssh://git@github.mit.edu/piScope/homebrew-TwoPi
```    
5)  in case, update formula
```
    > brew update
```    
6)  install everything from source (currenlty we don't provide a bottle)
```
    > brew install -v -s piscope/twopi/twopi
    or
    > brew install -v -s piscope/twopi/twopi --devel (requires the accesas to the internal dev repository)
```

### the descripton blow is old and needs update in future
do Bottle (binary) install)  
```
   brew tap piScope/twopi
   brew install piScope/twopi/twopi
   brew link --overwrite twopi
```   
#### please set PetraM envirometal variable to point the install location.
```
   export PetraM=/usr/local
   piscope -d
```   
   
#### memo for bottling
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
