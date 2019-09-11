# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  #include Language::Python::Virtualenv
  
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.26.tar.gz"
  sha256 "986ee8fbaaf7bdd7639248466b56dd08ca28765ae292d3f53a39b80108cf9701"

  # depends_on "cmake" => :build

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

    # need this to install packages
    system "mkdir -p #{prefix}/lib/python3.7/site-packages"
    ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.7/site-packages"
    
    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"
    ENV["TwoPiGit"]="git@github.com:piScope"
    
    #ENV["PetraM"]="#{prefix}"        
    #ENV["CC"]="/usr/bin/clang"
    #ENV["MPICC"]="/usr/bin/clang"
    #ENV["MPICXX"]="/usr/bin/clang"
    
    system "make install PREFIX=#{prefix}"
    system "bin/twopi install modules --PyMFEM-branch MFEM4_dev --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch py37_prep2 --PetraM-branch MFEM4_dev --no-occ-gmsh --no-python_mod"
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
