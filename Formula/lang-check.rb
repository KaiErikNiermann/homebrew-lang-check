class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/LangCheck"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.2/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "6a9ef620b29dff1bd9a3cf26ca891edebb491a87c6560c3779e72744b55d2460"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.2/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "aa4480f3926e05513ef96ff943cc8b2106a62d7e0d69814c735dab35de7d7d8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.2/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b6dfbde3ea1005998dd6ce5d6252cd68d7e0c4e2e49bfd628eba249adb6217f"
    else
      url "https://github.com/KaiErikNiermann/LangCheck/releases/download/v0.3.2/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91d58502915ed0785194c3d32b7382d1130e6f8e4079657f644dd92027f41ffa"
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
