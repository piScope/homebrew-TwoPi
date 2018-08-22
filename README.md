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
   pip install wxPython==4.0.3 matplotlib Pillow hgapil PyOpenGL netCDF4 PyPDF2l pdfrw h5py mpi4py

   brew tap piScope/twopi
   brew install -v --env=std piScope/twopi/twopi
```   
   
### memo for bottling
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
```
