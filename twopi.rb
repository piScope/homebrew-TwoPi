class Twopi < Formula
  #include Language::Python::Virtualenv
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  
  url "https://github.com/piScope/TwoPi/archive/v1.0.28.tar.gz"
  sha256 "2f88f731b44feec524e19f99317def9a35d01e468d71f871104adae6b1ec9e59"

  bottle do
    root_url "https://github.com/piScope/TwoPi/releases/download/v1.0.27/twopi-1.0.27"
    sha256 catalina: "5c1ec587bcc9aabc62dc2bafbfc1352616a3dac73779e54bd4c0e8e06772cb37"
  end

  depends_on "cmake"
  depends_on "coreutils"
  depends_on "llvm"
  depends_on "opencascade"
  depends_on "gmsh"
  depends_on "libomp"
  depends_on "numpy"
  depends_on "scipy"
  depends_on "wget"  
  depends_on "netcdf"
  depends_on "hdf5"
  depends_on "wxpython"  
  depends_on "mpi4py"
  depends_on "open-mpi"
  depends_on "scalapack"    
  depends_on "python@3.9"
  depends_on "zlib"  
  
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python3
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python@3.9/bin"

    system "echo $PATH"
    
    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"

    if OS.mac? && MacOS.version  >= :catalina    
       ENV["C_INCLUDE_PATH"]="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
    end

    system "echo prefix is #{prefix}"

    #pip_dependencies = ["matplotlib", "Pillow", "hgapi", "PyOpenGL", "netCDF4", "h5py", "PyPDF2", "pdfrw", "future"]
    #for name in pip_dependencies do 
    #  resource(name).stage { system "#{HOMEBREW_PREFIX}/opt/python@3/bin/python3", *Language::Python.setup_install_args("#{prefix}") }
    #end
    
    ENV["TwoPiGit"]="https://github.com/piScope"
    system "mkdir -p #{prefix}/lib/python3.9/site-packages"      
    ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.9/site-packages"      

    system "make install PREFIX=#{prefix}"
    system "mkdir -p #{prefix}/bin"
    system "cp scripts/activation_scripts/activate_twopi_brew #{prefix}/bin/activate_twopi"
    #system "ln -s #{HOMEBREW_PREFIX}/opt/python@3.9/bin #{prefix}/bin/python"

    # install dependency
    #system "pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future"
    
    ENV.prepend_path "PATH", "#{prefix}/bin"
    ENV["PYTHON"]="#{HOMEBREW_PREFIX}/opt/python@3.9/bin/python3"

    if (File.file?("#{prefix}/bin/python"))
        delete_link = 0
    else
        delete_link = 1
        system "ln -s #{HOMEBREW_PREFIX}/opt/python@3.9/bin/python3 #{prefix}/bin/python"            
    end
        
    system "bin/twopi install modules --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    #system "bin/twopi install PyMFEM"

    if delete_link > 0
        system "rm #{prefix}/bin/python"
    end
    
    # for testing one by one.. do like this
    #system "bin/twopi install MUMPS"
  end
  
  def caveats; <<~EOS
    To use Petra-M, use activartion command to setup envrioment
      > activate_twopi
    Then, you can start piScope
      TwoPi_xxx> piscope 
    You can use twop command to update PetraM modules
      TwoPi_xxx> twopi update <module name>             # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
      TwoPi_xxx> twopi update --install <module name>   # to check if update exists
  EOS
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
