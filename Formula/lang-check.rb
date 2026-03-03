class LangCheck < Formula
  desc "Multilingual prose linter with tree-sitter extraction and pluggable checking engines"
  homepage "https://github.com/KaiErikNiermann/lang-check"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.0/language-check-aarch64-apple-darwin.tar.gz"
      sha256 "2d3b60d1b4735aca2d5a6cfee57a7d960159cc6a53f902a659c73245d8ae8ca5"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.0/language-check-x86_64-apple-darwin.tar.gz"
      sha256 "9d5e2f2ca2cd524e83624144014449098687276ae02df9cac711a28996dbe96e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.0/language-check-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3aa74003f9a23354997fb8d032dbf79aa9b4f6ea90b2284cab3c0f50c2807fd2"
    else
      url "https://github.com/KaiErikNiermann/lang-check/releases/download/v0.2.0/language-check-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e709eff58953c51fa733a5e90adb2b8724f3be7e27c83116e88fb3a925e1911"
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
