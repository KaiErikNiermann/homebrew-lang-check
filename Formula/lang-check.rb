class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.4/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "3731113df4f581be809f6446de4ac4a69bf60660f7f5b16e2d4b7907386b73d3"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.4/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "a2b1361287d2c16bef695244dc7efffbc2b2954dd769d4193ca3eaa49f88639a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.4/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a28d292dcfbc9ed26257a852f5f2758ac4998ed56c59cbcb9796a05dd232988c"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.2.4/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5285d0e18c17c5b5979930a9eae1e207f1785bb3489e26dd6a3e4cee2d9dfe09"
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
