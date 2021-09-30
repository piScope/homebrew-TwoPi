class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  url "https://github.com/piScope/Test/archive/refs/tags/v0.0.38.tar.gz"
  sha256 "019d919cd30b635b44e0b43a1f6da76a1390818635a491eec3786d1a910260d7"  

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
