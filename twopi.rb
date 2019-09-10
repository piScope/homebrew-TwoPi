# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.25.tar.gz"
  sha256 "312d286db1292cc28f3a2fb09423f16c6b68b0b3880627d2a788ebd440d256fc"
  # depends_on "cmake" => :build

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python/libexec/bin"    

    #ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"
    ENV["TwoPiRoot"]="#{prefix}"
    #ENV["PetraM"]="#{prefix}"    
    ENV["TwoPiDevice"]="brew"
    ENV["TwoPiGit"]="git@github.com:piScope"
    #ENV["CC"]="/usr/bin/clang"
    #ENV["MPICC"]="/usr/bin/clang"
    #ENV["MPICXX"]="/usr/bin/clang"
    #system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    system "bin/twopi install modules --PyMFEM-branch MFEM4_dev --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch py37_prep2 --PetraM-branch MFEM4_dev --no-occ-gmsh"
    #system "bin/twopi install metis"
    #Qsystem "bin/twopi install parmetis"
    #ystem "bin/twopi install hypre"                
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
