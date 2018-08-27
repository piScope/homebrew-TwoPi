##  Formula to install the TwoPi (piScope/Petra-M) packages.
This formula installs followig libraris.
   MFEM, Hypre, Metis, Parmetis, MUMPS
   PetraM (Base, RF, Geom, Driver, MUMPS)
   
### Steps after fresh start of HomeBrew

```
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   
   brew install open-mpi scalapack boost wget numpy scipy coreutils libomp
   brew install gmsh --with-opencascade --with fltk
   pip install meshio==1.8.17 voropy==0.5.0
   pip install wxPython==4.0.3 matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw h5py mpi4py
```

Then, on highSierra, the followig commad will do Bottle (binary) install)  
```
   brew tap piScope/twopi
   brew install piScope/twopi/twopi
   brew link --overwrite twopi
   
   # please set PetraM envirometal variable to point the install location.
   export PetraM=/usr/local
   piscope -d
```   
   
### memo for bottling
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
