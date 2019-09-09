# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.24.tar.gz"
  sha256 "7177409eab365d9b339c52eb60f8e8874195954ce012d9903a5724aa4ef6c0cf"
  # depends_on "cmake" => :build

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP)
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV.prepend_path "PATH", "/usr/local/opt/llvm/bin"

    #ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"
    ENV["TwoPiRoot"]="#{prefix}"
    #ENV["PetraM"]="#{prefix}"    
    ENV["TwoPiDevice"]="brew"
    ENV["TwoPiGit"]="git@github.com:piScope"
    #ENV["CC"]="/usr/bin/clang"
    #ENV["MPICC"]="/usr/bin/clang"
    #ENV["MPICXX"]="/usr/bin/clang"
    #system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    system "bin/twopi install metis"
    system "bin/twopi install parmetis"
    system "bin/twopi install hypre"                
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
