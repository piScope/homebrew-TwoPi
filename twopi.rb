# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  #include Language::Python::Virtualenv
  option "dev-repo", "Use development branch"
  
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.3.3.tar.gz"
  sha256 "2e0c09b3428d3f8ea7babb958d6dfedc4bc5ee348c7dddab070109e277f8cd3a"  

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

    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"

    # we need to set PYTHONPATH, make site-package dir and source repository
    if build.with? "dev-repo"
       ENV["TwoPiGit"]="git@github.com:piScope"
       system "mkdir -p #{prefix}/lib/python3.7/site-packages"
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.7/site-packages"
    else
       ENV["TwoPiGit"]="git@github.com:piScope"
       # need this to install packages            
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"    
       system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    end

    system "make install PREFIX=#{prefix}"
    system "mkdir -p #{prefix}/bin"    
    system "cp   scripts/twopi_env_brew.sh #{prefix}/bin/twopi_env.sh"
    system "cp   bin/twopi-config      #{prefix}/bin/twopi-config"        

    if build.with? "dev-repo"
        system "bin/twopi install modules --PyMFEM-branch master --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch py37_prep2 --PetraM-branch MFEM4_dev --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    else
        system "bin/twopi install modules --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    end
    
    # for testing one by one.. do like this
    #system "bin/twopi install MUMPS"
  end
  
  def caveats; <<~EOS
    To use Petra-M please source the  enviroment first
      > source $(twopi-confg --env)
      > piscope 
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
