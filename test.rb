class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  url "https://github.com/piScope/Test/archive/v0.0.1.tar.gz"
  sha256 "af7a1150c07775df3950b910f6974bd941d5e7fcbe8536cf3cc53b22d87016c0"  

  depends_on "python@3.9"
  
  def instal
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
