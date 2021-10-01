class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  url "https://github.com/piScope/Test/archive/refs/tags/v0.0.42.tar.gz"
  sha256 "4e53e8358061809a2ee38e19fb35d8d0b921382f85443761d098e843bb77863c"

  bottle do
    root_url "https://github.com/piScope/homebrew-TwoPi/releases/download/Test-0.0.42"
    sha256 cellar: :any_skip_relocation, big_sur:  "ee47a615057ee2afc6f713b481644cb77fc083f4bf40ec9e03cc10a490b3723e"
    sha256 cellar: :any_skip_relocation, catalina: "8563e38bce4d88bae8e1983dcac05075caee58d723f72beb88bfaa47c8dda8c8"
  end  

  depends_on "python@3.9"
  
  def install
    #system Formula["python@3.x"].opt_bin/"python3", *Language::Python.setup_install_args(prefix)
    system("echo #{prefix}")
    system("ls -l")
    system("python3  setup.py install --verbose --prefix=#{prefix}")
  end

  def caveats; <<~EOS
    This is a sample module for testing workflow...
  EOS
  end
  
end
