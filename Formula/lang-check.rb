class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.5/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "282ad866894f53f02f85539c3714ce459d25a0be7867f477d9577536d9f0c9ab"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.5/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "44c176b25c5111349fbbb3c6ff53c9f670355031b26b44b20bc13999857d298c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.5/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27bb164e691044ab77c443af8c6e496653fecba0a52eb08bcb536f69821479df"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.4.5/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecb7ddbd215684175f8ac827c3b76a3f2de2bd2531001fabfc67606cc9cfb0ff"
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
