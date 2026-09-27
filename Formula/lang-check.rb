class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.1/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "7a6a5819496a70d6c4c51a4e541fa633e035d739b05da9863af40ac31e80cbb6"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.1/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "cb413cbfc97b94fe769b7a11c05bb41917aac11a24987c3b2f5fdc631aa0f65a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.1/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1df0d16a8ec378c1b3717b942a908207cd0535df02797cceea41bdd5e7052d91"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.1/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9851f1766d3b6ece3b46510b1ef2ab4f79b28ae421fe21ff4dbcba3d6dc2d53"
    end
  end

  def install
    bin.install "language-check"
    bin.install "language-check-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/language-check --version")
  end
end
