##  Formula to install the TwoPi (piScope/Petra-M) packages.

This formula installs followig libraris.
   MFEM, Hypre, Metis, Parmetis, MUMPS
   PetraM (Base, RF, Geom, MUMPS)
   
### Steps to start from fresh install of HomeBrew

1) Install XCode CommandLineTool
```
     > xcode-select --install
```     
   You may also need to update XCode from App Store, which takes several hours
   
1-1) On Mojave, compiler header file is missing, and you may get this error without installing SDK during the steps below.
```
../include/space.h:12:10: fatal error: 'stdio.h' file not found
```
Try this
```
open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
```
Detail is discuss in https://discourse.brew.sh/t/clang-can-no-longer-find-usr-include-header-files-fatal-error-stdlib-h-file-not-found/4523

   
2) Install HomeBrew
```
     > /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
     
     if you have old installation of HomeBrew, you may want to clean install homebrew following 
     an instruciton in https://docs.brew.sh/FAQ
```

3) install libraries
```
   > brew install cmake open-mpi scalapack wget zlib netcdf hdf5 numpy scipy coreutils llvm libomp gmsh wxPython 
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
      (requires the accesas to the internal dev repository)
```    
5)  in case, update formula
```
    > brew update
```    
6)  install everything from source (currenlty we don't provide a bottle). this step downloads all source codes and builds it using HomeBrew environment. It will take a while (30-60 mins on a MacBookAir 2019)
```
    > brew install -v -s piscope/twopi/twopi 
    or
    > brew install -v -s piscope/twopi/twopi --devel
      (requires the accesas to the internal dev repository)
```
(hint 1) If error occurs, a combinent option is to tee the log. A command below allows to save the all output to a file while still showing it on screen.
```
    > brew install -v -s piscope/twopi/twopi | tee twopi_install.log
```
(hint 2) When error occurs and try to reinstall it, you may want to uninstall piscope/twopi/twopi completely
```
    > brew uninstall piscope/twopi/twopi
```
7) launch piScope 
Once the installation is finished successfully, open a new terminal window and try the following command
```
 activate_twopi   # load enviromental variable to run Petra-M
 piscope -d                     # launch piscope with -d option to redirect error message to the terminal
```
### Updating existing TwoPi
```
brew update
brew upgrade -v piscope/twopi/twopi | tee $HOME/twopi_install.log
```

### Update exisiting TwoPi
```
   brew update
   brew upgrade -v piscope/twopi/twopi
```

### the descripton blow is old and needs update in future
do Bottle (binary) install)  
```
   brew tap piScope/twopi
   brew install piScope/twopi/twopi
   brew link --overwrite twopi
```   
   
#### memo for bottling
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
