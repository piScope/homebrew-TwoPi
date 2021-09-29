class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  url "https://github.com/piScope/Test/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "a4fed9a567c4f3f7988e41c42289b79b7b38b8aecdc99057fee129de4313033f"  

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
