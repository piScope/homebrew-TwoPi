# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#
#  This formula configure venv for TwoPi
#
class TwopiVenv < Formula
  include Language::Python::Virtualenv
  desc "Package installer to setup Petra-M"
  homepage "http://piscope.psfc.mit.edu/index.php/Petra-M_(FEM_environment_on_MFEM)"
  
  url "https://github.com/piScope/TwoPi/archive/0.9.3.tar.gz"
  sha256 "0f48cb844e31f8313ea6dd280cf61657e37bcdc5dfd22df1cd66d182ee6fc2b8"
  
  devel do
    ## For now it is the same files
    url "https://github.com/piScope/TwoPi/archive/0.9.3.tar.gz"
    sha256 "0f48cb844e31f8313ea6dd280cf61657e37bcdc5dfd22df1cd66d182ee6fc2b8"
  end

  depends_on "python"
  depends_on "wget"
  depends_on "zlib"
  depends_on "coreutils"
  depends_on "llvm"
  depends_on "libomp"
  depends_on "gmsh"        
  depends_on "open-mpi"
  depends_on "scalapack"    
  depends_on "python"
  depends_on "numpy"
  depends_on "scipy"
  depends_on "wxpython"
  depends_on "netcdf"    
  depends_on "hdf5"  

  ##
  ## for item in six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future ; do poet $item; done
  ##
  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
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

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/b6/d6/be8f975f5322336f62371c9abeb936d592c98c047ad63035f1b38ae08efe/numpy-1.17.3.zip"
    sha256 "a0678793096205a4d784bd99f32803ba8100f639cf3b932dc63b21621390ea7e"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/7e/24/eaa8d7003aee23eda270099eeec754d7bf4399f75c6a011ef948304f66a2/pyparsing-2.4.2.tar.gz"
    sha256 "6f98a7b9397e206d78cc01df10131398f1c8b8510a2f4d97d9abd82e1aacdd80"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ad/99/5b2e99737edeb28c71bcbec5b5dda19d0d9ef3ca3e92e3e925e7c0bb364c/python-dateutil-2.8.0.tar.gz"
    sha256 "c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end
  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/5b/bb/cdc8086db1f15d0664dd22a62c69613cdc00f1dd430b5b19df1bea83f2a3/Pillow-6.2.1.tar.gz"
    sha256 "bf4e972a88f8841d8fdc6db1a75e0f8d763e66e3754b03006cbc3854d89f1cb1"
  end
  resource "hgapi" do
    url "https://files.pythonhosted.org/packages/36/db/6ad72214343e361c3fae732230e64bb7a5e4580002027782a4406748aee6/hgapi-1.7.4.tar.gz"
    sha256 "0b1f20a6a8cefe9e9f72b14a0823b7abdbc88d19cdf815211849067d9ac27ebc"
  end
  resource "PyOpenGL" do
    url "https://files.pythonhosted.org/packages/9c/1d/4544708aaa89f26c97cc09450bb333a23724a320923e74d73e028b3560f9/PyOpenGL-3.1.0.tar.gz"
    sha256 "9b47c5c3a094fa518ca88aeed35ae75834d53e4285512c61879f67a48c94ddaf"
  end
  resource "cftime" do
    url "https://files.pythonhosted.org/packages/d5/25/b572bd9589b538ddcd1d3ed2bd8af7bb6b4f481e8c7b69089ce3db87cade/cftime-1.0.4.tar.gz"
    sha256 "f8f40f701b4ef2a4bf4c8e827b8acc7886bb9dd93cf2204b4bc81d9352c69312"
  end

  resource "netCDF4" do
    url "https://files.pythonhosted.org/packages/cd/ee/b7734f8fb94c9671b6966f158903cd3b67cb60d245c6f2196bcf1f8b13b5/netCDF4-1.5.3.tar.gz"
    sha256 "2a3ca855848f4bbf07fac366da77a681fcead18c0a8813d91d46302f562dc3be"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/b6/d6/be8f975f5322336f62371c9abeb936d592c98c047ad63035f1b38ae08efe/numpy-1.17.3.zip"
    sha256 "a0678793096205a4d784bd99f32803ba8100f639cf3b932dc63b21621390ea7e"
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
    url "https://files.pythonhosted.org/packages/3f/bf/57733d44afd0cf67580658507bd11d3ec629612d5e0e432beb4b8f6fbb04/future-0.18.1.tar.gz"
    sha256 "858e38522e8fd0d3ce8f0c1feaf0603358e366d5403209674c7b617fa0c24093"
  end
  
  def install
     ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/bin"
     ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/llvm/bin"
     ENV.prepend_path "PATH", "#{HOMEBREW_PREFIX}/opt/python/libexec/bin"

     ENV["LDFLAGS"]="-L#{HOMEBREW_PREFIX}/opt/zlib/lib"
     ENV["CPPFLAGS"]="-I#{HOMEBREW_PREFIX}/opt/zlib/include"     
     
     venv = virtualenv_create(libexec, python = "python3")
     #%w[six matplotlib Pillow hgapi PyOpenGL netCDF4 PyPDF2 pdfrw future].each do |r|
     %w[Pillow future].each do |r|
         venv.pip_install resource(r)
     end
     venv.pip_install_and_link buildpath
  end

  
  def caveats; <<~EOS
    To install TwoPi
      > brew install -v -s piscope/twopi/twopi
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
