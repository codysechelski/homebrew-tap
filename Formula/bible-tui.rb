class BibleTui < Formula
  include Language::Python::Virtualenv

  desc "Terminal Bible reader with Vim-style keys"
  homepage "https://github.com/codysechelski/bible-tui"
  url "https://files.pythonhosted.org/packages/00/46/2d21e1985d913ef9d141af0514b786fe096d1b1cf6b81fb1dc76c27d12f2/bible_tui-0.9.0.tar.gz"
  sha256 "d915c073c50c7d4e75f13159c5899b0837fd24cebd8c0d411fd712bd626c02f6"
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
