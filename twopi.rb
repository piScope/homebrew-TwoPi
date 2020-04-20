# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  include Language::Python::Virtualenv
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  
  url "https://github.com/piScope/TwoPi/archive/1.0.0.tar.gz"
  sha256 "7434773564126daed380c86f9a57c665b8a39996a3f09ad70affb573cd46a1b6"    
  
  devel do
    ## For now it is the same files    
    url "https://github.com/piScope/TwoPi/archive/1.0.0.tar.gz"
    sha256 "7434773564126daed380c86f9a57c665b8a39996a3f09ad70affb573cd46a1b6"    
  end
  
  depends_on "wget"
  depends_on "zlib"
  depends_on "coreutils"
  depends_on "freetype"
  depends_on "llvm"
  depends_on "libomp"
  depends_on "gmsh"        
  depends_on "open-mpi"
  depends_on "scalapack"    
  depends_on "python@3.8"
  depends_on "numpy"
  depends_on "scipy"
  depends_on "wxpython"
  depends_on "netcdf"    
  depends_on "hdf5"
  depends_on "mpi4py"    

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end
  resource "Cycler" do
    url "https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"
    sha256 "cd7b2d1018258d7247a71425e9f26463dfb444d411c39569972f4ce586b0c9d8"
  end

  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/62/b8/db619d97819afb52a3ff5ff6ad3f7de408cc83a8ec2dfb31a1731c0a97c2/kiwisolver-1.2.0.tar.gz"
    sha256 "247800260cd38160c362d211dcaf4ed0f7816afb5efe56544748b21d6ad6d17f"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/4a/30/eb8e7dd8e3609f05c6920fa82f189302c832e5a0f6667aa96f952056bc0c/matplotlib-3.2.1.tar.gz"
    sha256 "ffe2f9cdcea1086fc414e82f42271ecf1976700b8edd16ca9d376189c6d93aee"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/c7/04/c91bb0e495c1e8a09633ecb061fab32e276ace7cefcef5d12334cdd14cd2/Pillow-7.1.1.tar.gz"
    sha256 "0f89ddc77cf421b8cd34ae852309501458942bf370831b4a9b406156b599a14e"
  end
  
  resource "hgapi" do
    url "https://files.pythonhosted.org/packages/36/db/6ad72214343e361c3fae732230e64bb7a5e4580002027782a4406748aee6/hgapi-1.7.4.tar.gz"
    sha256 "0b1f20a6a8cefe9e9f72b14a0823b7abdbc88d19cdf815211849067d9ac27ebc"
  end
  
  resource "PyOpenGL" do
    url "https://files.pythonhosted.org/packages/b8/73/31c8177f3d236e9a5424f7267659c70ccea604dab0585bfcd55828397746/PyOpenGL-3.1.5.tar.gz"
    sha256 "4107ba0d0390da5766a08c242cf0cf3404c377ed293c5f6d701e457c57ba3424"
  end
  
  resource "cftime" do
    url "https://files.pythonhosted.org/packages/7a/6d/8a8739bcc0bcc2f5ecf7933c2292f889c2b175cacd595ee34e1cf2ff4bd9/cftime-1.1.1.2.tar.gz"
    sha256 "35711b5ec3928b9e724817bfa1b7325da205788ee04eae9166cbcd96ea7976a6"
  end

  resource "netCDF4" do
    url "https://files.pythonhosted.org/packages/cd/ee/b7734f8fb94c9671b6966f158903cd3b67cb60d245c6f2196bcf1f8b13b5/netCDF4-1.5.3.tar.gz"
    sha256 "2a3ca855848f4bbf07fac366da77a681fcead18c0a8813d91d46302f562dc3be"
  end

  resource "PyPDF2" do
    url "https://files.pythonhosted.org/packages/b4/01/68fcc0d43daf4c6bdbc6b33cc3f77bda531c86b174cac56ef0ffdb96faab/PyPDF2-1.26.0.tar.gz"
    sha256 "e28f902f2f0a1603ea95ebe21dff311ef09be3d0f0ef29a3e44a932729564385"
  end
  
  resource "pdfrw" do
    url "https://files.pythonhosted.org/packages/61/96/cbde98b96115d10694010e584d00d39f7b97905e1c8303e6ffbb84080e6a/pdfrw-0.4.tar.gz"
    sha256 "0dc0494a0e6561b268542b28ede2280387c2728114f117d3bb5d8e4787b93ef4"
  end
  
  resource "future" do
    url "https://files.pythonhosted.org/packages/45/0b/38b06fd9b92dc2b68d58b75f900e97884c45bedd2ff83203d933cf5851c9/future-0.18.2.tar.gz"
    sha256 "b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d"
  end

  
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python3
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python@3.8/bin"

    ENV["TwoPiRoot"]="#{prefix}"
    ENV["TwoPiDevice"]="brew"

    ENV["LDFLAGS"]="-L#{Formula["zlib"].opt_prefix}/lib -L#{Formula["freetype"].opt_prefix}/lib"
    ENV["CPPFLAGS"]="-I#{Formula["zlib"].opt_prefix}/include  -L#{Formula["freetype"].opt_prefix}/include"

    venv = virtualenv_create(libexec, python = "python3")
    %w[six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future].each do |r|
        venv.pip_install resource(r)
    end
    
    if OS.mac? && MacOS.version >= :catalina    
       ENV["C_INCLUDE_PATH"]="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
    end

    # we need to set PYTHONPATH, make site-package dir and source repository
    if build.devel?
       ohai "!!!! Development branch was chosen. This option is valid only if you have an access !!!!"    
       ENV["TwoPiGit"]="git@github.com:piScope"
       system "mkdir -p #{prefix}/lib/python3.8/site-packages"
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.8/site-packages"
    else
       ENV["TwoPiGit"]="git@github.com:piScope"
       system "mkdir -p #{prefix}/lib/python3.8/site-packages"      
       ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python3.8/site-packages"      
    end

    system "make install PREFIX=#{prefix}"
    system "mkdir -p #{prefix}/bin"    
    system "cp   scripts/activation_scripts/activate_twopi_brew #{prefix}/bin/activate_twopi"
    system "ln -s #{HOMEBREW_PREFIX}/opt/python@3.8/bin #{prefix}/bin/python"

    # install dependency
    #system "pip3 install six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future"
    
    ENV.prepend_path "PATH", "#{prefix}/bin"
    ENV["PYTHON"]="#{HOMEBREW_PREFIX}/opt/python@3.8/bin/python3"
    
    #system "bin/twopi install PyMFEM"
    #if build.devel?
    #    system "bin/twopi install modules --PyMFEM-branch master --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch master --PetraM-branch master --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    #else
    #    system "bin/twopi install modules --no-occ-gmsh --no-python_mod --log-dir #{prefix}/log"
    #end
    
    # for testing one by one.. do like this
    #system "bin/twopi install MUMPS"
  end
  
  def caveats; <<~EOS
    To use Petra-M, use activartion command to setup envrioment
      > activate_twopi
    Then, you can start piScope
      TwoPi_xxx> piscope 
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
