##  Formula to install the TwoPi (piScope/Petra-M) packages (Tested on Mojave and Catalina)

This formula installs followig libraris.

   * MFEM
   * Hypre
   * Metis
   * Parmetis
   * MUMPS
   * piScope
   * PetraM (Base, RF, Geom, MUMPS)
   
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

3)  add tap to our TwoPi formula
```
    > brew tap piScope/twopi
    or
    > brew tap piScope/twopi ssh://git@github.mit.edu/piScope/homebrew-TwoPi
      (requires the accesas to the internal dev repository)
```

3a)  in case, update formula
```
    > brew update
```

4) Install modules

piScope/Petra-M has a long list of depndencies. A user can install all of them via HomeBrew.
We provide two approaches in terms of how the dependency libraries are handled.

4-1) install libraries
```
   > brew install cmake open-mpi scalapack wget zlib netcdf hdf5 numpy scipy coreutils llvm libomp gmsh wxPython mpi4py
```

4-2) install Python modules
```
   > pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future
```

4-3)  install everything from source (currenlty we don't provide a bottle). this step downloads all source codes and builds it using HomeBrew environment. It will take a while (30-60 mins on a MacBookAir 2019)
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
4-4) launch piScope 
Once the installation is finished successfully, open a new terminal window and try the following command
```
 $ activate_twopi   # load enviromental variable to run Petra-M
 $ piscope -d       # launch piscope with -d option to redirect error message to the terminal
```


### Keeping TwoPi modules updated
The activation command (activate_twopi) adds an alias to twopi command. One can use it to
update piScope and PetraM modules

```
  > twopi update <module name>   # to check if update exists
  > twopi update --install <module name>   # to check if update exists

  if <module name> is not specified. It will check all modules

```

#### memo for bottling (This section needs update)
NOte: We are currently not generating bottle. All installaion is done by downloading and compiling source. 
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
