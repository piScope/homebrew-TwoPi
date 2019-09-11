# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Twopi < Formula
  include Language::Python::Virtualenv
  
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  url "https://github.com/piScope/TwoPi/archive/0.25.tar.gz"
  sha256 "312d286db1292cc28f3a2fb09423f16c6b68b0b3880627d2a788ebd440d256fc"
  # depends_on "cmake" => :build

  
  depends_on "zlib"
  depends_on "python"

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/51/fe/18125dc680720e4c3086dd3f5f95d80057c41ab98326877fc7d3ff6d0ee5/Pillow-6.1.0.tar.gz"
    sha256 "0804f77cb1e9b6dbd37601cee11283bba39a8d44b9ddb053400c58e0c0d7d9de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end
  
  resource "pathlib2" do
    url "https://files.pythonhosted.org/packages/b5/f4/9c7cc726ece2498b6c8b62d3262aa43f59039b953fe23c9964ac5e18d40b/pathlib2-2.3.4.tar.gz"
    sha256 "446014523bb9be5c28128c4d2a10ad6bb60769e78bd85658fe44a450674e0ef8"
end

  resource "wxPython" do
    url "https://files.pythonhosted.org/packages/9a/a1/9c081e04798eb134b63def3db121a6e4436e1d84e76692503deef8e75423/wxPython-4.0.6.tar.gz"
    sha256 "35cc8ae9dd5246e2c9861bb796026bbcb9fb083e4d49650f776622171ecdab37"
  end  

  resource "Cycler" do
    url "https://files.pythonhosted.org/packages/c2/4b/137dea450d6e1e3d474e1d873cd1d4f7d3beed7e0dc973b06e8e10d32488/cycler-0.10.0.tar.gz"
    sha256 "cd7b2d1018258d7247a71425e9f26463dfb444d411c39569972f4ce586b0c9d8"
  end

  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/16/e7/df58eb8868d183223692d2a62529a594f6414964a3ae93548467b146a24d/kiwisolver-1.1.0.tar.gz"
    sha256 "53eaed412477c836e1b9522c19858a8557d6e595077830146182225613b11a75"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/12/d1/7b12cd79c791348cb0c78ce6e7d16bd72992f13c9f1e8e43d2725a6d8adf/matplotlib-3.1.1.tar.gz"
    sha256 "1febd22afe1489b13c6749ea059d392c03261b2950d1d45c17e3aed812080c93"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/7e/24/eaa8d7003aee23eda270099eeec754d7bf4399f75c6a011ef948304f66a2/pyparsing-2.4.2.tar.gz"
    sha256 "6f98a7b9397e206d78cc01df10131398f1c8b8510a2f4d97d9abd82e1aacdd80"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ad/99/5b2e99737edeb28c71bcbec5b5dda19d0d9ef3ca3e92e3e925e7c0bb364c/python-dateutil-2.8.0.tar.gz"
    sha256 "c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
  end
  
  resource "PyOpenGL" do
    url "https://files.pythonhosted.org/packages/9c/1d/4544708aaa89f26c97cc09450bb333a23724a320923e74d73e028b3560f9/PyOpenGL-3.1.0.tar.gz"
    sha256 "9b47c5c3a094fa518ca88aeed35ae75834d53e4285512c61879f67a48c94ddaf"
  end

  resource "hgapi" do
    url "https://files.pythonhosted.org/packages/36/db/6ad72214343e361c3fae732230e64bb7a5e4580002027782a4406748aee6/hgapi-1.7.4.tar.gz"
    sha256 "0b1f20a6a8cefe9e9f72b14a0823b7abdbc88d19cdf815211849067d9ac27ebc"
  end

  resource "cftime" do
    url "https://files.pythonhosted.org/packages/7a/83/a61141ec141ceb0617468e04cc163dbdb9007b958191043618d1dc950b8f/cftime-1.0.3.4.tar.gz"
    sha256 "dd74d0d470baf1c50e31335215793a5e78436903e34b4f151fa9ccbf3a6cc20c"
  end

  resource "netCDF4" do
    url "https://files.pythonhosted.org/packages/64/2e/abc0bce095ab5a3b8374f052ace2509a031fd7633b23917e557487067225/netCDF4-1.5.2.tar.gz"
    sha256 "e075e1937ae5b297292c22adb72d7fdf557ba7509e6fd967fec133f1be178922"
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
    url "https://files.pythonhosted.org/packages/90/52/e20466b85000a181e1e144fd8305caf2cf475e2f9674e797b222f8105f5f/future-0.17.1.tar.gz"
    sha256 "67045236dcfd6816dc439556d009594abf643e5eb48992e36beac09c2ca659b8"
  end

  resource "h5py" do
    url "https://files.pythonhosted.org/packages/5f/97/a58afbcf40e8abecededd9512978b4e4915374e5b80049af082f49cebe9a/h5py-2.10.0.tar.gz"
    sha256 "84412798925dc870ffd7107f045d7659e60f5d46d1c70c700375248bf6bf512d"
  end
  
  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    # w/o this, it does't find wget, llvm-clang (for OMP), and python3
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
    ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python/libexec/bin"    

    #ENV.prepend_path "PYTHONPATH", "#{prefix}/lib/python2.7/site-packages"
    ENV["TwoPiRoot"]="#{prefix}"
    #ENV["PetraM"]="#{prefix}"    
    ENV["TwoPiDevice"]="brew"
    ENV["TwoPiGit"]="git@github.com:piScope"
    #ENV["CC"]="/usr/bin/clang"
    #ENV["MPICC"]="/usr/bin/clang"
    #ENV["MPICXX"]="/usr/bin/clang"
    #system "mkdir -p #{prefix}/lib/python2.7/site-packages"
    ENV["LDFLAGS"]="-L/usr/local/opt/zlib/lib"
    ENV["CPPFLAGS"]="-I/usr/local/opt/zlib/include"
    
    venv = virtualenv_create(libexec)
    venv.pip_install resources
    
    #system "bin/twopi install modules --PyMFEM-branch MFEM4_dev --PetraM-Repo git@github.mit.edu:piScope  --piScope-branch py37_prep2 --PetraM-branch MFEM4_dev --no-occ-gmsh"
    #system "bin/twopi install metis"
    #Qsystem "bin/twopi install parmetis"
    #ystem "bin/twopi install hypre"                
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
