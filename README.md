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

#### memo for bottling (This section needs update)
NOte: We are currently not generating bottle. All installaion is done by downloading and compiling source. 
```
   brew install -v --env=std piScope/twopi/twopi --build-bottle
   brew bottle piScope/twopi/twopi
   
   Then update formula
```
