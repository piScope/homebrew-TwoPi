class Test < Formula
  desc "A module to test workflow"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"  

  depends_on "python@3.9"
  
  def install
    system "python3" "setup.py" "install"
  end

  def caveats; <<~EOS
    This is a sample module for testing workflow...
  EOS
  end
  
end
