##  Formula to install the TwoPi (piScope/Petra-M) packages (Tested on Mojave and Catalina)

This formula installs followig libraris.

   * MFEM
   * Hypre
   * Metis
   * Parmetis
   * MUMPS
   * piScope
   * PetraM (Base, RF, Geom, MUMPS)

### Install instruction (from fresh install of HomeBrew)
  > brew install cmake open-mpi scalapack wget zlib netcdf hdf5 numpy scipy coreutils llvm libomp gmsh wxPython mpi4py mercurial
  > $(brew --prefix)/opt/Python@3.9/bin/pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 h5py PyPDF2 pdfrw future
  > brew tap piScope/twopi
  > brew install -v piscope/twopi/twopi 

  https://piscope.psfc.mit.edu/index.php/Installing_Petra-M
  

### Usage (launching piScope and keeping TwoPi modules updated)
The activation command (activate_twopi) adds an alias to twopi command. One can use it to
update piScope and PetraM modules

```
    To use Petra-M, use activartion command to setup envrioment
      > activate_twopi
    Then, you can start piScope
      TwoPi_xxx> piscope 
    You can use twop command to update PetraM modules
      TwoPi_xxx> twopi update <module name>             # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
    if <module name> is not specified. It will check all modules
```
