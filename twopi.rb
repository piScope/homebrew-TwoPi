# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  #include Language::Python::Virtualenv
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  
  url "https://github.com/piScope/TwoPi/archive/0.9.3.tar.gz"
  sha256 "0f48cb844e31f8313ea6dd280cf61657e37bcdc5dfd22df1cd66d182ee6fc2b8"
  
  devel do
    ## For now it is the same files
    url "https://github.com/piScope/TwoPi/archive/0.9.3.tar.gz"
    sha256 "0f48cb844e31f8313ea6dd280cf61657e37bcdc5dfd22df1cd66d182ee6fc2b8"
  end
  
  depends_on "wget"
  depends_on "zlib"
  depends_on "coreutils"
  depends_on "llvm"
  depends_on "libomp"
  depends_on "gmsh"        
  depends_on "open-mpi"
  depends_on "scalapack"    
  depends_on "python"
  depends_on "numpy"
  depends_on "scipy"
  depends_on "wxpython"
  depends_on "netcdf"    
  depends_on "hdf5"  
  
  
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python3
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python/libexec/bin"    

    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"

    if OS.mac? && MacOS.version >= :catalina    
       ENV["CPATH"]="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
       
    # we need to set PYTHONPATH, make site-package dir and source repository
    if build.devel?
       ohai "!!!! Development branch was chosen. This option is valid only if you have an access !!!!"    
       ENV["TwoPiGit"]="git@github.com:piScope"
       system "mkdir -p #{prefix}/lib/python3.7/site-packages"
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.7/site-packages"
    else
       ENV["TwoPiGit"]="git@github.com:piScope"
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"    
       system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    end

    system "make install PREFIX=#{prefix}"
    system "mkdir -p #{prefix}/bin"    
    system "cp   scripts/activation_scripts/activate_twopi_brew #{prefix}/bin/activate_twopi"

    if build.devel?
        #system "bin/twopi install modules --PyMFEM-branch master --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch master --PetraM-branch master --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
        system "bin/twopi install MUMPS"

    else
        system "bin/twopi install modules --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    end
    
    # for testing one by one.. do like this
    #system "bin/twopi install MUMPS"
  end
  
  def caveats; <<~EOS
    To use Petra-M, use activartion command to setup envrioment
      > activate_twopi
    Then, you can start piScope
      TwoPi_xxx> piscope 
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
