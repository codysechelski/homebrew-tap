class BibleTui < Formula
  include Language::Python::Virtualenv

  desc "Terminal Bible reader with Vim-style keys"
  homepage "https://github.com/codysechelski/bible-tui"
  url "https://files.pythonhosted.org/packages/ff/74/d3f32835a4fc6cfd2b2f1367feffb6ab8091e6473d2899956bd099f9c727/bible_tui-0.7.1.tar.gz"
  sha256 "28e722be8c208597576da481a4fa80d416256fe3473018b60e592d97b8178e9a"
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
