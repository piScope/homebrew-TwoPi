##  Formula to install the TwoPi (piScope/Petra-M) packages.
This formula installs followig libraris.
   MFEM, Hypre, Metis, Parmetis, MUMPS
   PetraM (Base, RF, Geom, Driver, MUMPS)
   
### Steps after fresh start of HomeBrew

1) Install XCode CommandLineTool
```
     > xcode-select --install
```     
   You may also need to update XCode from App Store, which takes several hours
   
2) Install HomeBrew
```
     > /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

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
    > brew tap piScope/twopi ssh://git@github.mit.edu/piScope/homebrew-TwoPi
```    
5)  in case, update formula
```
    > brew update
```    
6)  install everything from source
```
    > brew install -v -s piscope/twopi/twopi
```

# Under construction (bloew 
Then, on highSierra, the followig commad will do Bottle (binary) install)  
```
   brew tap piScope/twopi
   brew install piScope/twopi/twopi
   brew link --overwrite twopi
```   
## please set PetraM envirometal variable to point the install location.
```
   export PetraM=/usr/local
   piscope -d
```   
   
## memo for bottling
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
