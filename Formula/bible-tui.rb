class BibleTui < Formula
  include Language::Python::Virtualenv

  desc "Terminal Bible reader with Vim-style keys"
  homepage "https://github.com/codysechelski/bible-tui"
  url "https://files.pythonhosted.org/packages/8e/e2/dbf9c3374fbccd3daf9761e75c47ad8fb4de579d118801c8e8513d3233a8/bible_tui-0.12.0.tar.gz"
  sha256 "3c8af5d617cabb5703e0ae84d90525b5e1aa6e89a47fd87cb2e54330ab7ad8f9"
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
