class BibleTui < Formula
  include Language::Python::Virtualenv

  desc "Terminal Bible reader with Vim-style keys"
  homepage "https://github.com/codysechelski/bible-tui"
  url "https://files.pythonhosted.org/packages/eb/35/9f723bd70994a125d33adbf0a558302d1e616cfe32c453e8a60bfbb8dbcf/bible_tui-0.9.1.tar.gz"
  sha256 "6454dff5a0309a7d1b8374400498ec8617dfb337abe0159cb69d5b6610b71dd0"
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
