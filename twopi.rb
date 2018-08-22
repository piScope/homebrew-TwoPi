class Twopi < Formula
  desc ""
  homepage ""
  url "https://www-internal.psfc.mit.edu/~shiraiwa/petram_image/twopi_image_0.11.tar.gz"
  sha256 "5bed03382cd66bcedf342027440eee6025eff29adab165b4ece077937e25e8aa"
  # depends_on "cmake" => :build

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"
    ENV["TwoPiRoot"]="#{prefix}"
    ENV["PetraM"]="#{prefix}"    
    ENV["TwoPiDevice"]="brew"
    ENV["TwoPiGit"]="git@github.com:piScope"
    #ENV["CC"]="/usr/bin/clang"
    #ENV["MPICC"]="/usr/bin/clang"
    #ENV["MPICXX"]="/usr/bin/clang"
    system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    #system "bin/twopi install metis"
    #system "bin/twopi install parmetis"
    #system "bin/twopi install hypre"            
    system "bin/twopi install-noclean MUMPS"
    #system "bin/twopi install-noclean mfems"
    #system "bin/twopi install-noclean mfemp"
    #system "bin/twopi install glvis"
    #system "bin/twopi install piScope"
    #system "bin/twopi install PetraM_Base"
    #system "bin/twopi install PetraM_RF"
    #system "bin/twopi install PetraM_Geom"
    #system "bin/twopi install PetraM_Driver"
    system "bin/twopi install PetraM_MUMPS"                        
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test twopi_image`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
