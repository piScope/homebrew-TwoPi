class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  url "https://github.com/piScope/Test/archive/refs/tags/v0.0.39.tar.gz"
  sha256 "df08f36c9c696ebaac50f7fc3cb498f841fae549932628be528b57e77c90d8f1"  

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
