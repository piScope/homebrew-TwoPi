# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  #include Language::Python::Virtualenv
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  
  url "https://github.com/piScope/TwoPi/archive/v1.0.1.tar.gz"
  sha256 "372b1f41125fda6fbdca9d3ba7735f2b3801a92563759d6fa019a811bb9f2059"
  
  depends_on "wget"
  depends_on "zlib"
  depends_on "coreutils"
  depends_on "llvm"
  depends_on "libomp"
  depends_on "gmsh"        
  depends_on "open-mpi"
  depends_on "scalapack"    
  depends_on "python@3.9"
  depends_on "numpy"
  depends_on "scipy"
  depends_on "wxpython"
  depends_on "netcdf"    
  depends_on "hdf5"
  depends_on "mpi4py"    
  
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python3
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python@3.9/bin"

    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"

    if OS.mac? && MacOS.version >= :catalina    
       ENV["C_INCLUDE_PATH"]="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
    end

    # we need to set PYTHONPATH, make site-package dir and source repository
    #if build.devel?
    #   ohai "!!!! Development branch was chosen. This option is valid only if you have an access !!!!"    
    #   ENV["TwoPiGit"]="git@github.com:piScope"
    #   system "mkdir -p #{prefix}/lib/python3.9/site-packages"
    #   ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.9/site-packages"
    #else
    ENV["TwoPiGit"]="https://github.com/piScope"
    system "mkdir -p #{prefix}/lib/python3.9/site-packages"      
    ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.9/site-packages"      
    #end

    system "make install PREFIX=#{prefix}"
    system "mkdir -p #{prefix}/bin"    
    system "cp   scripts/activation_scripts/activate_twopi_brew #{prefix}/bin/activate_twopi"
    #system "ln -s #{HOMEBREW_PREFIX}/opt/python@3.9/bin #{prefix}/bin/python"

    # install dependency
    #system "pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future"
    
    ENV.prepend_path "PATH", "#{prefix}/bin"
    ENV["PYTHON"]="#{HOMEBREW_PREFIX}/opt/python@3.9/bin/python3"

    #if build.devel?
    #    system "bin/twopi install modules --PyMFEM-branch master --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch master --PetraM-branch master --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    #else
    #system "bin/twopi install modules --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    #end

    system "which python"
    
    
    # for testing one by one.. do like this
    #system "bin/twopi install MUMPS"
  end
  
  def caveats; <<~EOS
    To use Petra-M, use activartion command to setup envrioment
      > activate_twopi
    Then, you can start piScope
      TwoPi_xxx> piscope 
    You can use twop command to update PetraM modules
      TwoPi_xxx> twopi update <module name>             # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
  EOS
  end
  
  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test TwoPi`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
