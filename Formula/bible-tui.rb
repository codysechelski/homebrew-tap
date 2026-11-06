class BibleTui < Formula
  include Language::Python::Virtualenv

  desc "Terminal Bible reader with Vim-style keys"
  homepage "https://github.com/codysechelski/bible-tui"
  url "https://files.pythonhosted.org/packages/f7/44/4640e5b7be9973e3e015dace9fe5eb99a6aa08b547ee06af3f9fd2342b88/bible_tui-0.9.2.tar.gz"
  sha256 "4960a4acfb3ff409b8b54b230c4d49017abd499bdf3a26f921498f129b1e6db1"
  license "MIT"

  depends_on "python@3.15"

  def install
    virtualenv_install_with_resources
  end

  test do
    ENV["BIBLE_TUI_HOME"] = testpath/"home"
    output = shell_output("#{bin}/bible-tui --list-versions")
    assert_match "King James Version", output
    assert_match "American Standard Version", output
  end
end
