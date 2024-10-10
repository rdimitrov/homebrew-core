class Todoman < Formula
  include Language::Python::Virtualenv

  desc "Simple CalDAV-based todo manager"
  homepage "https://todoman.readthedocs.io/"
  url "https://files.pythonhosted.org/packages/fd/60/dbd18038cfe5a795d2e427b3ae4112c340966ed2d3a70303a4d59d7313eb/todoman-4.4.0.tar.gz"
  sha256 "0b7beeb8c73bfa299147288d9b657bc4e0e288febb84e198ef72cb1412af9db6"
  license "ISC"
  head "https://github.com/pimutils/todoman.git", branch: "main"

  bottle do
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sequoia:  "bc5345df6be7f10b2cea9a53b4b14bd4648b5b021c48f74faf1657ddc026f6ef"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "7bf6c5dec96c8fb238cd1b972c3d352be548e8e2610dec4943d34426b5382b69"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "330cbadb3883c67fb1dab96fba318dc5f3a2d32b1fe492a460a9bac35d7bf190"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "ca6185c3a7242abe09eab8d78c23585fae98957132cb702e278f9fd8f47e22e4"
    sha256 cellar: :any_skip_relocation, sonoma:         "d63bd7534dd9d4131d527a6949551c88cf50ebc575f06ba697a17f61aebc5cd4"
    sha256 cellar: :any_skip_relocation, ventura:        "e35a9e9ff8638c1cea70cb9994bee9afd203a59582b874703f6c58251393312d"
    sha256 cellar: :any_skip_relocation, monterey:       "67ec73375b040a8d836b74b8eca7072ccab5b8450404d6d3a9b4c87429ead964"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "f31099a4e89da4db04bc0c253b485de92a6ccf1b0c1edc025d3118cf4b07f287"
  end

  depends_on "jq" # Needed for ZSH completions.
  depends_on "python@3.13"

  conflicts_with "bash-snippets", because: "both install `todo` binaries"
  conflicts_with "devtodo", because: "both install a `todo` binary"

  resource "atomicwrites" do
    url "https://files.pythonhosted.org/packages/87/c6/53da25344e3e3a9c01095a89f16dbcda021c609ddb42dd6d7c0528236fb2/atomicwrites-1.4.1.tar.gz"
    sha256 "81b2c9071a49367a7f770170e5eec8cb66567cfbbc8c73d20ce5ca4a8d71cf11"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "click-log" do
    url "https://files.pythonhosted.org/packages/32/32/228be4f971e4bd556c33d52a22682bfe318ffe57a1ddb7a546f347a90260/click-log-0.4.0.tar.gz"
    sha256 "3970f8570ac54491237bcdb3d8ab5e3eef6c057df29f8c3d1151a51a9c23b975"
  end

  resource "humanize" do
    url "https://files.pythonhosted.org/packages/6a/40/64a912b9330786df25e58127194d4a5a7441f818b400b155e748a270f924/humanize-4.11.0.tar.gz"
    sha256 "e66f36020a2d5a974c504bd2555cf770621dbdbb6d82f94a6857c0b1ea2608be"
  end

  resource "icalendar" do
    url "https://files.pythonhosted.org/packages/af/ce/127d44302810184b1680ba5e0ab588325cf427d1a5e8c8479dd2cec80e97/icalendar-6.0.0.tar.gz"
    sha256 "7ddf60d343f3c1f716de9b62f6e80ffd95d03cab62464894a0539feab7b5c76e"
  end

  resource "parsedatetime" do
    url "https://files.pythonhosted.org/packages/a8/20/cb587f6672dbe585d101f590c3871d16e7aec5a576a1694997a3777312ac/parsedatetime-2.6.tar.gz"
    sha256 "4cb368fbb18a0b7231f4d76119165451c8d2e35951455dfee97c62a87b04d455"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/3a/31/3c70bf7603cc2dca0f19bdc53b4537a797747a58875b552c8c413d963a3f/pytz-2024.2.tar.gz"
    sha256 "2aa355083c50a0f93fa581709deac0c9ad65cca8a9e9beac660adcbd493c798a"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/b0/25/7998cd2dec731acbd438fbf91bc619603fc5188de0a9a17699a781840452/pyxdg-0.28.tar.gz"
    sha256 "3267bb3074e934df202af2ee0868575484108581e6f3cb006af1da35395e88b4"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/e1/34/943888654477a574a86a98e9896bae89c7aa15078ec29f490fef2f1e5384/tzdata-2024.2.tar.gz"
    sha256 "7d85cc416e9382e69095b7bdf4afd9e3880418a2413feec7069d533d6b4e31cc"
  end

  resource "urwid" do
    url "https://files.pythonhosted.org/packages/85/b7/516b0bbb7dd9fc313c6443b35d86b6f91b3baa83d2c4016e4d8e0df5a5e3/urwid-2.6.15.tar.gz"
    sha256 "9ecc57330d88c8d9663ffd7092a681674c03ff794b6330ccfef479af7aa9671b"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  def install
    virtualenv_install_with_resources

    bash_completion.install "contrib/completion/bash/_todo" => "todo"
    zsh_completion.install "contrib/completion/zsh/_todo"
  end

  test do
    ENV["LC_ALL"] = "en_US.UTF-8"

    (testpath/".config/todoman/config.py").write <<~EOS
      path = "#{testpath}/.calendar/*"
      date_format = "%Y-%m-%d"
      default_list = "Personal"
    EOS

    (testpath/".calendar/Personal").mkpath
    system bin/"todo", "new", "newtodo"
    assert_match "newtodo", shell_output("#{bin}/todo list")
  end
end
