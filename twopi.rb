class Twopi < Formula
  desc ""
  homepage ""
  url "https://www-internal.psfc.mit.edu/~shiraiwa/petram_image/twopi_image_0.1.tar.gz"
  sha256 "53a95e2565b3a500026c67e9c370f378270c72fd4d578a50e8941283988d1f07"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    ENV.prepend_path PATH, "/usr/local/bin"
    system "export TwoPiRoot=#{prefix}"
    system "export TwoPiDevice=brew"
    system "export TwoPiGit=git@github.com:piScope"
    system "export PATH=/usr/local/bin:$PATH"
    system "bin/twopi clone mfem"
    system "bin/twopi build mfems"    
    # system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
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
