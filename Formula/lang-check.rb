class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.0/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "a074a95fb2eb8904b2a710f12c355802100ec3726e5560e123abc031c76b4272"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.0/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "c6bc03655ba8531af75cf33b5326b8a0b299b94e5290425cee1e69b4caa8df00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.0/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e145eb9d24d68df410c744ee5e686b41ca7bbf3c635acc3d67f1f49dfd3c5694"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.7.0/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5fb6901337de8f0c20f05c73684cdf2f06fe27893ee7441e7fac4423b46f46d"
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
