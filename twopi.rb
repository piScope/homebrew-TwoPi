# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.22.tar.gz"
  sha256 "695117ea7a528de60bc64b0cc4a75bf73271efa67c79e6be79ec18a0862e75fd"

  # depends_on "cmake" => :build

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "make install PREFIX=#{prefix}"
    # Remove unrecognized options if warned by configure
    #ENV.prepend_path "PATH", "/usr/local/bin"
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
